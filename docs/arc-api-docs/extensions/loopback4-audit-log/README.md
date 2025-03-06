<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [@sourceloop/audit-log](https://github.com/sourcefuse/loopback4-audit-log)

<p align="left">
<a href="https://www.npmjs.com/package/@sourceloop/audit-log">
<img src="https://img.shields.io/npm/v/@sourceloop/audit-log.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-audit-log" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-audit-log?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-audit-log%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-audit-log/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-audit-log">
</a>
<a href="https://www.npmjs.com/@sourceloop/audit-log" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dm/@sourceloop/audit-log">
</a>
<a href="./LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-audit-log" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack #" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

The `@sourceloop/audit-log` package is a powerful LoopBack 4 extension designed to seamlessly implement audit logs in your LoopBack applications. With this extension, you can effortlessly track and record audit data for all database transactions within your application.

This package provides a generic model that enables the storage of audit logs, which can be backed by any datasource of your choice. Whether you're using MySQL, PostgreSQL, MongoDB, or any other database, the Audit Logs package ensures compatibility and flexibility.

By incorporating the Audit Logs package into your application, you gain valuable insights into the history of data changes, user actions, and system events. Maintain a comprehensive audit trail for compliance, troubleshooting, and analysis purposes.

## Install

```sh
npm install @sourceloop/audit-log
```

## Usage

In order to use this component into your LoopBack application, please follow below steps.

- Add audit model class as Entity.

```ts
import {Entity, model, property} from '@loopback/repository';
import {Action} from '@sourceloop/audit-log';

@model({
  name: 'audit_logs',
  settings: {
    strict: false,
  },
})
export class AuditLog extends Entity {
  @property({
    type: 'string',
    id: true,
    generated: false,
  })
  id?: string;

  @property({
    type: 'string',
    required: true,
  })
  action: Action;

  @property({
    name: 'acted_at',
    type: 'date',
    required: true,
  })
  actedAt: Date;

  @property({
    name: 'acted_on',
    type: 'string',
  })
  actedOn?: string;

  @property({
    name: 'action_key',
    type: 'string',
    required: true,
  })
  actionKey: string;

  @property({
    name: 'entity_id',
    type: 'string',
    required: true,
  })
  entityId: string;

  @property({
    type: 'string',
    required: true,
  })
  actor: string;

  @property({
    type: 'object',
  })
  before?: object;

  @property({
    type: 'object',
  })
  after?: object;

  // Define well-known properties here

  // Indexer property to allow additional data
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  [prop: string]: any;

  constructor(data?: Partial<AuditLog>) {
    super(data);
  }
}
```

- Using `lb4 datasource` command create your own datasource using your preferred connector. Here is an example of datasource using postgres connector. Notice the statement `static dataSourceName = AuditDbSourceName;`. Make sure you change the data source name as per this in order to ensure connection work from extension.

```ts
import {inject, lifeCycleObserver, LifeCycleObserver} from '@loopback/core';
import {juggler} from '@loopback/repository';
import {AuditDbSourceName} from '@sourceloop/audit-log';

const config = {
  name: 'audit',
  connector: 'postgresql',
  url: '',
  host: '',
  port: 0,
  user: '',
  password: '',
  database: '',
};

@lifeCycleObserver('datasource')
export class AuditDataSource
  extends juggler.DataSource
  implements LifeCycleObserver
{
  static dataSourceName = AuditDbSourceName;
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.audit', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
```

- Using `lb4 repository` command, create a repository file. After that, change the inject paramater as below so as to refer to correct data source name.
  `@inject(`datasources.\${AuditDbSourceName}`) dataSource: AuditDataSource,`

One example below.

```ts
import {inject} from '@loopback/core';
import {DefaultCrudRepository} from '@loopback/repository';
import {AuditDbSourceName} from '@sourceloop/audit-log';

import {AuditDataSource} from '../datasources';
import {AuditLog} from '../models';

export class AuditLogRepository extends DefaultCrudRepository<
  AuditLog,
  typeof AuditLog.prototype.id
> {
  constructor(
    @inject(`datasources.${AuditDbSourceName}`) dataSource: AuditDataSource,
  ) {
    super(AuditLog, dataSource);
  }
}
```

- The component exposes a mixin for your repository classes. Just extend your repository class with `AuditRepositoryMixin`, for all those repositories where you need audit data. See an example below. For a model `Group`, here we are extending the `GroupRepository` with `AuditRepositoryMixin`.

```ts
import {repository} from '@loopback/repository';
import {Group, GroupRelations} from '../models';
import {PgdbDataSource} from '../datasources';
import {inject, Getter, Constructor} from '@loopback/core';
import {AuthenticationBindings, IAuthUser} from 'loopback4-authentication';
import {AuditRepositoryMixin, AuditLogRepository} from '@sourceloop/audit-log';

const groupAuditOpts: IAuditMixinOptions = {
  actionKey: 'Group_Logs',
};

export class GroupRepository extends AuditRepositoryMixin<
  Group,
  typeof Group.prototype.id,
  GroupRelations,
  string,
  Constructor<
    DefaultCrudRepository<Group, typeof Group.prototype.id, GroupRelations>
  >
>(DefaultCrudRepository, groupAuditOpts) {
  constructor(
    @inject('datasources.pgdb') dataSource: PgdbDataSource,
    @inject.getter(AuthenticationBindings.CURRENT_USER)
    public getCurrentUser: Getter<IAuthUser>,
    @repository.getter('AuditLogRepository')
    public getAuditLogRepository: Getter<AuditLogRepository>,
  ) {
    super(Group, dataSource, getCurrentUser);
  }
}
```

You can pass any extra attributes to save into audit table using the `IAuditMixinOptions` parameter of mixin function. You can also pass some dynamic values to the extra columns of the audit-log table via the method options.

```ts
const groupAuditOpts: IAuditMixinOptions = {
  actionKey: 'Group_Logs',
  extra: 'static value',
};
```

```ts
repo.create(data, {extra: 'random calculated value'});
```

So the method options will have a priority over repository mixin options.

Make sure you provide `getCurrentUser` and `getAuditLogRepository` Getter functions in constructor.

This will create all insert, update, delete audits for this model.

- Option to disable audit logging on specific functions by just passing `noAudit:true` flag with options

```ts
create(data, {noAudit: true});
```

- The Actor field is now configurable and can save any string type value in the field.
  Though the default value will be userId a developer can save any string field from the current User that is being passed.

```ts
export interface User<ID = string, TID = string, UTID = string> {
  id?: string;
  username: string;
  password?: string;
  identifier?: ID;
  permissions: string[];
  authClientId: number;
  email?: string;
  role: string;
  firstName: string;
  lastName: string;
  middleName?: string;
  tenantId?: TID;
  userTenantId?: UTID;
  passwordExpiryTime?: Date;
  allowedResources?: string[];
}
```

### Steps

1. All you need to do is bind a User key to the ActorIdKey in application.ts

```ts
this.bind(AuthServiceBindings.ActorIdKey).to('username');
```

2. Pass the actorIdKey argument in the constructor

```ts
@inject(AuditBindings.ActorIdKey, {optional: true})
public actorIdKey?: ActorId,
```

- The package exposes a conditional mixin for your repository classes. Just extend your repository class with `ConditionalAuditRepositoryMixin`, for all those repositories where you need audit data based on condition whether `ADD_AUDIT_LOG_MIXIN` is set true. See an example below. For a model `Group`, here we are extending the `GroupRepository` with `AuditRepositoryMixin`.

```ts
import {repository} from '@loopback/repository';
import {Group, GroupRelations} from '../models';
import {PgdbDataSource} from '../datasources';
import {inject, Getter, Constructor} from '@loopback/core';
import {AuthenticationBindings, IAuthUser} from 'loopback4-authentication';
import {ConditionalAuditRepositoryMixin} from '@sourceloop/audit-log';
import {AuditLogRepository} from './audit-log.repository';

const groupAuditOpts: IAuditMixinOptions = {
  actionKey: 'Group_Logs',
};

export class GroupRepository extends ConditionalAuditRepositoryMixin(
  DefaultUserModifyCrudRepository<
    Group,
    typeof Group.prototype.id,
    GroupRelations
  >,
  groupAuditOpts,
) {
  constructor(
    @inject('datasources.pgdb') dataSource: PgdbDataSource,
    @inject.getter(AuthenticationBindings.CURRENT_USER)
    public getCurrentUser: Getter<IAuthUser>,
    @repository.getter('AuditLogRepository')
    public getAuditLogRepository: Getter<AuditLogRepository>,
  ) {
    super(Group, dataSource, getCurrentUser);
  }
}
```

### Making current user not mandatory

Incase you dont have current user binded in your application context and wish to log the activities within your application then in that case you can pass the actor id along with the
options just like

```ts
await productRepo.create(product, {noAudit: false, actorId: 'userId'});
```

## Using with Sequelize ORM

This extension provides support to both juggler (the default loopback ORM) and sequelize.

If your loopback project is already using `SequelizeCrudRepository` from [@loopback/sequelize](https://www.npmjs.com/package/@loopback/sequelize) or equivalent add on repositories from sourceloop packages like [`SequelizeUserModifyCrudRepository`](https://sourcefuse.github.io/arc-docs/arc-api-docs/packages/core/#sequelizeusermodifycrudrepository). You'll need to make just two changes:

1. The import statements should have the suffix `/sequelize`, like below:

```ts
import {
  AuditRepositoryMixin,
  AuditLogRepository,
} from '@sourceloop/audit-log/sequelize';
```

2. The Audit datasource's parent class should be `SequelizeDataSource`.

```ts
import {SequelizeDataSource} from '@loopback/sequelize';

export class AuditDataSource
  extends SequelizeDataSource
  implements LifeCycleObserver
{
  static dataSourceName = AuditDbSourceName;
  static readonly defaultConfig = config;

  constructor(
    @inject('datasources.config.audit', {optional: true})
    dsConfig: object = config,
  ) {
    super(dsConfig);
  }
}
```

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-audit-log/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-audit-log/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-audit-log/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-audit-log/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-audit-log/blob/master/LICENSE)
