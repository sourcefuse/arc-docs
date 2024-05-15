<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-authorization](https://github.com/sourcefuse/loopback4-authorization)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-authorization">
<img src="https://img.shields.io/npm/v/loopback4-authorization.svg?style=flat-square" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/overall?id=sourcefuse_loopback4-authorization" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-authorization?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-authorization%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-authorization/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-authorization">
</a>
<a href="https://www.npmjs.com/package/loopback4-authorization" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-authorization.svg">
</a>
<a href="./LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-authorization.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

A LoopBack 4 extension for Authorization Capabilities. It's very simple to integration yet powerful and effective.

## Install

```sh
npm install loopback4-authorization
```

## Quick Starter

For a quick starter guide, you can refer to our [loopback 4 starter](https://github.com/sourcefuse/loopback4-starter) application which utilizes method #3 from the above in a simple multi-tenant application.

## Usage

### Ways of Integration:

On a higher level, it provides three ways of integration:

#### 1. User Level Permissions Only

Where permissions are associated directly to user. In this case, each user entry in DB contains specific array of permission keys.

#### 2. Role Based Permissions

Where permissions are associated to roles and users have a specific role attached. This actually reduces redundancy in DB a lot, as most of the time, users will have many common permissions. If that is not the case for you, then, use the first method.

#### 3. Role Based Permissions with User Level Flexibility

This is the most flexible architecture. In this case, method #2 is implemented as is.

On top of it, we also add user-level permissions override, allow/deny permissions over role permissions. So, say there is user who can perform all admin role actions except he cannot remove users from the system. So, DeleteUser permission can be denied at user level and role can be set as Admin for the user.

[Extension enhancement using CASBIN authorisation](#Extension-enhancement-using-CASBIN-authorisation)

Refer to the usage section below for details on integration.

In order to use this component into your LoopBack application, please follow below steps.

### Steps

#### Bind Component

Add `AuthorizationComponent` to your application, Like below:

```ts
this.bind(AuthorizationBindings.CONFIG).to({
  allowAlwaysPaths: ['/explorer'],
});
this.component(AuthorizationComponent);
```

#### Implement Permission Interface

If using method #1 from above, implement Permissions interface in User model and add permissions array.

```ts
@model({
  name: 'users',
})
export class User extends Entity implements Permissions<string> {
  // .....
  // other attributes here
  // .....

  @property({
    type: 'array',
    itemType: 'string',
  })
  permissions: string[];

  constructor(data?: Partial<User>) {
    super(data);
  }
}
```

If using method #2 or #3 from above, implement Permissions interface in Role model and add permissions array.

```ts
@model({
  name: 'roles',
})
export class Role extends Entity implements Permissions<string> {
  // .....
  // other attributes here
  // .....

  @property({
    type: 'array',
    itemType: 'string',
  })
  permissions: string[];

  constructor(data?: Partial<Role>) {
    super(data);
  }
}
```

#### Implement `UserPermissionsOverride` Interface

If using method #3 from above, implement UserPermissionsOverride interface in User model and add user level permissions array as below.
Do this if there is a use-case of explicit allow/deny of permissions at user-level in the application.
You can skip otherwise.

```ts
@model({
  name: 'users',
})
export class User extends Entity implements UserPermissionsOverride<string> {
  // .....
  // other attributes here
  // .....

  @property({
    type: 'array',
    itemType: 'object',
  })
  permissions: UserPermission<string>[];

  constructor(data?: Partial<User>) {
    super(data);
  }
}
```

#### User Permissions Provider

For method #3, This extension exposes a provider function [AuthorizationBindings.USER_PERMISSIONS](https://github.com/sourcefuse/loopback4-authorization/blob/master/src/providers/user-permissions.provider.ts) to evaluate the user permissions based on its role permissions and user-level overrides.

Just inject it like below:

```ts
@inject(AuthorizationBindings.USER_PERMISSIONS)
private readonly getUserPermissions: UserPermissionsFn<string>,
```

and invoke it

```ts
const permissions = this.getUserPermissions(user.permissions, role.permissions);
```

Add a step in custom sequence to check for authorization whenever any endpoint is hit.

```ts
import {inject} from '@loopback/context';
import {
  FindRoute,
  HttpErrors,
  InvokeMethod,
  ParseParams,
  Reject,
  RequestContext,
  RestBindings,
  Send,
  SequenceHandler,
} from '@loopback/rest';
import {AuthenticateFn, AuthenticationBindings} from 'loopback4-authentication';
import {
  AuthorizationBindings,
  AuthorizeErrorKeys,
  AuthorizeFn,
  UserPermissionsFn,
} from 'loopback4-authorization';

import {AuthClient} from './models/auth-client.model';
import {User} from './models/user.model';

const SequenceActions = RestBindings.SequenceActions;

export class MySequence implements SequenceHandler {
  constructor(
    @inject(SequenceActions.FIND_ROUTE) protected findRoute: FindRoute,
    @inject(SequenceActions.PARSE_PARAMS) protected parseParams: ParseParams,
    @inject(SequenceActions.INVOKE_METHOD) protected invoke: InvokeMethod,
    @inject(SequenceActions.SEND) public send: Send,
    @inject(SequenceActions.REJECT) public reject: Reject,
    @inject(AuthenticationBindings.USER_AUTH_ACTION)
    protected authenticateRequest: AuthenticateFn<AuthUser>,
    @inject(AuthenticationBindings.CLIENT_AUTH_ACTION)
    protected authenticateRequestClient: AuthenticateFn<AuthClient>,
    @inject(AuthorizationBindings.AUTHORIZE_ACTION)
    protected checkAuthorisation: AuthorizeFn,
    @inject(AuthorizationBindings.USER_PERMISSIONS)
    private readonly getUserPermissions: UserPermissionsFn<string>,
  ) {}

  async handle(context: RequestContext) {
    const requestTime = Date.now();
    try {
      const {request, response} = context;
      const route = this.findRoute(request);
      const args = await this.parseParams(request, route);
      request.body = args[args.length - 1];
      await this.authenticateRequestClient(request);
      const authUser: User = await this.authenticateRequest(request);

      // Do ths if you are using method #3
      const permissions = this.getUserPermissions(
        authUser.permissions,
        authUser.role.permissions,
      );
      // This is the important line added for authorization. Needed for all 3 methods
      const isAccessAllowed: boolean = await this.checkAuthorisation(
        permissions, // do authUser.permissions if using method #1
        request,
      );
      // Checking access to route here
      if (!isAccessAllowed) {
        throw new HttpErrors.Forbidden(AuthorizeErrorKeys.NotAllowedAccess);
      }

      const result = await this.invoke(route, args);
      this.send(response, result);
    } catch (err) {
      this.reject(context, err);
    }
  }
}
```

The above sequence also contains user authentication using [loopback4-authentication](https://github.com/sourcefuse/loopback4-authentication) package. You can refer to the documentation for the same for more details.

Now we can add access permission keys to the controller methods using authorize decorator as below:

```ts
@authorize(['CreateRole'])
@post(rolesPath, {
  responses: {
    [STATUS_CODE.OK]: {
      description: 'Role model instance',
      content: {
        [CONTENT_TYPE.JSON]: {schema: {'x-ts-type': Role}},
      },
    },
  },
})
async create(@requestBody() role: Role): Promise<Role> {
  return await this.roleRepository.create(role);
}
```

This endpoint will only be accessible if logged in user has permission
`CreateRole`.

A good practice is to keep all permission strings in a separate enum file like this.

```ts
export const enum PermissionKey {
  ViewOwnUser = 'ViewOwnUser',
  ViewAnyUser = 'ViewAnyUser',
  ViewTenantUser = 'ViewTenantUser',
  CreateAnyUser = 'CreateAnyUser',
  CreateTenantUser = 'CreateTenantUser',
  UpdateOwnUser = 'UpdateOwnUser',
  UpdateTenantUser = 'UpdateTenantUser',
  UpdateAnyUser = 'UpdateAnyUser',
  DeleteTenantUser = 'DeleteTenantUser',
  DeleteAnyUser = 'DeleteAnyUser',

  ViewTenant = 'ViewTenant',
  CreateTenant = 'CreateTenant',
  UpdateTenant = 'UpdateTenant',
  DeleteTenant = 'DeleteTenant',

  ViewRole = 'ViewRole',
  CreateRole = 'CreateRole',
  UpdateRole = 'UpdateRole',
  DeleteRole = 'DeleteRole',

  ViewAudit = 'ViewAudit',
  CreateAudit = 'CreateAudit',
  UpdateAudit = 'UpdateAudit',
  DeleteAudit = 'DeleteAudit',
}
```

### Overriding Permissions

API endpoints provided by ARC API (aka Sourceloop) services have their permissions pre-defined in them bundled.

In order to override them you can bind your custom permissions in the `AuthorizationBindings.PERMISSION` binding key.
This accepts an object that should have Controller class name as the root level key and the value of which is another object of method to permissions array mapping.

Like below:

```ts
this.bind(AuthorizationBindings.PERMISSION).to({
   MessageController: {
      create: ['CreateMessage', 'ViewMessage'],
      updateAll: ['UpdateMessage', 'ViewMessage', 'ViewMessageNum']
   }
   AttachmentFileController: {
      create: ['CreateAttachmentFile', 'ViewAttachmentFile'],
      updateAll: ['UpdateAttachmentFile', 'ViewAttachmentFileNum']
   }
});
```

You can easily check the name of the controller and it's method name from the source code of the services or from the Swagger UI (clicking the endpoint in swagger append the controller and method name in the URL like `LoginController.login` where `login` is the method name).

## Serving the static files:

Authorization configuration binding sets up paths that can be accessed without any authorization checks, allowing static files to be served directly from the root URL of the application.The allowAlwaysPaths property is used to define these paths for the files in public directory i.e for a test.html file in public directory ,one can provide its path as follows:

```
this.bind(AuthorizationBindings.CONFIG).to({
  allowAlwaysPaths: ['/explorer','/test.html'],
});
```

To set up the public directory as a static,one can add the following in application.ts file.

```
this.static('/', path.join(__dirname, '../public'));

```

If, in case the file is in some other folder then `app.static()` can be called multiple times to configure the app to serve static assets from different directories.

```
this.static('/', path.join(__dirname, '../public'));
this.static('/downloads', path.join(__dirname, '../downloads'));

```

For more details,refer [here](https://loopback.io/doc/en/lb4/Serving-static-files.html#:~:text=One%20of%20the%20basic%20requirements,the%20API%20are%20explained%20below.)

## Extension enhancement using CASBIN authorisation

As a further enhancement to these methods, we are using [casbin library](https://casbin.org/docs/en/overview) to define permissions at level of entity or resource associated with an API call. Casbin authorisation implementation can be performed in two ways:

1. **Using default casbin policy document** - Define policy document in default casbin format in the app, and configure authorise decorator to use those policies.
2. **Defining custom logic to form dynamic policies** - Implement dynamic permissions based on app logic in casbin-enforcer-config provider. Authorisation extension will dynamically create casbin policy using this business logic to give the authorisation decisions.

### Casbin Usage

In order to use this enhacement into your LoopBack application, please follow below steps.

- Add providers to implement casbin authorisation along with authorisation component.

```ts
this.bind(AuthorizationBindings.CONFIG).to({
  allowAlwaysPaths: ['/explorer'],
});
this.component(AuthorizationComponent);

this.bind(AuthorizationBindings.CASBIN_ENFORCER_CONFIG_GETTER).toProvider(
  CasbinEnforcerConfigProvider,
);

this.bind(AuthorizationBindings.CASBIN_RESOURCE_MODIFIER_FN).toProvider(
  CasbinResValModifierProvider,
);
```

- Implement the **Casbin Resource value modifier provider**. Customise the resource value based on business logic using route arguments parameter in the provider.

```ts
import {Getter, inject, Provider} from '@loopback/context';
import {HttpErrors} from '@loopback/rest';
import {
  AuthorizationBindings,
  AuthorizationMetadata,
  CasbinResourceModifierFn,
} from 'loopback4-authorization';

export class CasbinResValModifierProvider
  implements Provider<CasbinResourceModifierFn>
{
  constructor(
    @inject.getter(AuthorizationBindings.METADATA)
    private readonly getCasbinMetadata: Getter<AuthorizationMetadata>,
    @inject(AuthorizationBindings.PATHS_TO_ALLOW_ALWAYS)
    private readonly allowAlwaysPath: string[],
  ) {}

  value(): CasbinResourceModifierFn {
    return (pathParams: string[], req: Request) => this.action(pathParams, req);
  }

  async action(pathParams: string[], req: Request): Promise<string> {
    const metadata: AuthorizationMetadata = await this.getCasbinMetadata();

    if (
      !metadata &&
      !!this.allowAlwaysPath.find(path => req.path.indexOf(path) === 0)
    ) {
      return '';
    }

    if (!metadata) {
      throw new HttpErrors.InternalServerError(`Metadata object not found`);
    }
    const res = metadata.resource;

    // Now modify the resource parameter using on path params, as per business logic.
    // Returning resource value as such for default case.

    return `${res}`;
  }
}
```

- Implement the **casbin enforcer config provider** . Provide the casbin model path. Model definition can be initialized from [.CONF file, from code, or from a string](https://casbin.org/docs/en/model-storage).
  In the case of policy creation being handled by extension (isCasbinPolicy parameter is false), provide the array of Resource-Permission objects for a given user, based on business logic.
  In other case, provide the policy from file or as CSV string or from [casbin Adapters](https://casbin.org/docs/en/adapters).
  **NOTE**: In the second case, if model is initialized from .CONF file, then any of the above formats can be used for policy. But if model is being initialised from code or string, then policy should be provided as [casbin adapter](https://casbin.org/docs/en/adapters) only.

```ts
import {Provider} from '@loopback/context';
import {
  CasbinConfig,
  CasbinEnforcerConfigGetterFn,
  IAuthUserWithPermissions,
} from 'loopback4-authorization';
import * as path from 'path';

export class CasbinEnforcerConfigProvider
  implements Provider<CasbinEnforcerConfigGetterFn>
{
  constructor() {}

  value(): CasbinEnforcerConfigGetterFn {
    return (
      authUser: IAuthUserWithPermissions,
      resource: string,
      isCasbinPolicy?: boolean,
    ) => this.action(authUser, resource, isCasbinPolicy);
  }

  async action(
    authUser: IAuthUserWithPermissions,
    resource: string,
    isCasbinPolicy?: boolean,
  ): Promise<CasbinConfig> {
    const model = path.resolve(__dirname, './../../fixtures/casbin/model.conf'); // Model initialization from file path
    /**
     * import * as casbin from 'casbin';
     *
     * To initialize model from code, use
     *      let m = new casbin.Model();
     *      m.addDef('r', 'r', 'sub, obj, act'); and so on...
     *
     * To initialize model from string, use
     *      const text = `
     *      [request_definition]
     *     r = sub, obj, act
     *
     *      [policy_definition]
     *      p = sub, obj, act
     *
     *      [policy_effect]
     *      e = some(where (p.eft == allow))
     *
     *      [matchers]
     *      m = r.sub == p.sub && r.obj == p.obj && r.act == p.act
     *       `;
     *      const model = casbin.newModelFromString(text);
     */

    // Write business logic to find out the allowed resource-permission sets for this user. Below is a dummy value.
    //const allowedRes = [{resource: 'session', permission: "CreateMeetingSession"}];

    const policy = path.resolve(
      __dirname,
      './../../fixtures/casbin/policy.csv',
    );

    const result: CasbinConfig = {
      model,
      //allowedRes,
      policy,
    };
    return result;
  }
}
```

- Add the dependency injections for resource value modifer provider, and casbin authorisation function in the sequence.ts

```ts
    @inject(AuthorizationBindings.CASBIN_AUTHORIZE_ACTION)
    protected checkAuthorisation: CasbinAuthorizeFn,
    @inject(AuthorizationBindings.CASBIN_RESOURCE_MODIFIER_FN)
    protected casbinResModifierFn: CasbinResourceModifierFn,
```

- Add a step in custom sequence to check for authorization whenever any end
  point is hit.

```ts
import {inject} from '@loopback/context';
import {
  FindRoute,
  HttpErrors,
  InvokeMethod,
  ParseParams,
  Reject,
  RequestContext,
  RestBindings,
  Send,
  SequenceHandler,
} from '@loopback/rest';
import {AuthenticateFn, AuthenticationBindings} from 'loopback4-authentication';
import {
  AuthorizationBindings,
  AuthorizeErrorKeys,
  AuthorizeFn,
  UserPermissionsFn,
} from 'loopback4-authorization';

import {AuthClient} from './models/auth-client.model';
import {User} from './models/user.model';

const SequenceActions = RestBindings.SequenceActions;

export class MySequence implements SequenceHandler {
  constructor(
    @inject(SequenceActions.FIND_ROUTE) protected findRoute: FindRoute,
    @inject(SequenceActions.PARSE_PARAMS) protected parseParams: ParseParams,
    @inject(SequenceActions.INVOKE_METHOD) protected invoke: InvokeMethod,
    @inject(SequenceActions.SEND) public send: Send,
    @inject(SequenceActions.REJECT) public reject: Reject,
    @inject(AuthenticationBindings.USER_AUTH_ACTION)
    protected authenticateRequest: AuthenticateFn<AuthUser>,
    @inject(AuthenticationBindings.CLIENT_AUTH_ACTION)
    protected authenticateRequestClient: AuthenticateFn<AuthClient>,
    @inject(AuthorizationBindings.CASBIN_AUTHORIZE_ACTION)
    protected checkAuthorisation: CasbinAuthorizeFn,
    @inject(AuthorizationBindings.CASBIN_RESOURCE_MODIFIER_FN)
    protected casbinResModifierFn: CasbinResourceModifierFn,
  ) {}

  async handle(context: RequestContext) {
    const requestTime = Date.now();
    try {
      const {request, response} = context;
      const route = this.findRoute(request);
      const args = await this.parseParams(request, route);
      request.body = args[args.length - 1];
      await this.authenticateRequestClient(request);
      const authUser: User = await this.authenticateRequest(request);

      // Invoke Resource value modifier
      const resVal = await this.casbinResModifierFn(args);

      // Check authorisation
      const isAccessAllowed: boolean = await this.checkAuthorisation(
        authUser,
        resVal,
        request,
      );
      // Checking access to route here
      if (!isAccessAllowed) {
        throw new HttpErrors.Forbidden(AuthorizeErrorKeys.NotAllowedAccess);
      }

      const result = await this.invoke(route, args);
      this.send(response, result);
    } catch (err) {
      this.reject(context, err);
    }
  }
}
```

- Now we can add access permission keys to the controller methods using authorize
  decorator as below. Set isCasbinPolicy parameter to use casbin default policy format. Default is false.

```ts
@authorize({permissions: ['CreateRole'], resource:'role', isCasbinPolicy: true})
@post(rolesPath, {
  responses: {
    [STATUS_CODE.OK]: {
      description: 'Role model instance',
      content: {
        [CONTENT_TYPE.JSON]: {schema: {'x-ts-type': Role}},
      },
    },
  },
})
async create(@requestBody() role: Role): Promise<Role> {
  return await this.roleRepository.create(role);
}
```

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-authorization/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-authorization/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-authorization/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-authorization/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-authorization/blob/master/LICENSE)
