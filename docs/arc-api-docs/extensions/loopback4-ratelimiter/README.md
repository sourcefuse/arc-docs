<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-ratelimiter](https://github.com/sourcefuse/loopback4-ratelimiter)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-ratelimiter">
<img src="https://img.shields.io/npm/v/loopback4-ratelimiter.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-ratelimiter" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-ratelimiter?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-ratelimiter%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-ratelimiter/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-ratelimiter">
</a>
<a href="https://www.npmjs.com/package/loopback4-ratelimiter" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-ratelimiter.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-ratelimiter/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-ratelimiter" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

A simple loopback-next extension for rate limiting in loopback applications. This extension uses [express-rate-limit](https://github.com/nfriedly/express-rate-limit) under the hood with redis, memcache and mongodDB used as store for rate limiting key storage using [rate-limit-redis](https://github.com/wyattjoh/rate-limit-redis), [rate-limit-memcached](https://github.com/linyows/rate-limit-memcached) and [rate-limit-mongo](https://github.com/2do2go/rate-limit-mongo)

## Install

```sh
npm install loopback4-ratelimiter
```

## Usage

In order to use this component into your LoopBack application, please follow below steps.

- Add component to application.

```ts
this.component(RateLimiterComponent);
```

- Minimum configuration required for this component is given below.

For redis datasource, you have to pass the name of a loopback4 datasource

```ts
this.bind(RateLimitSecurityBindings.CONFIG).to({
  name: 'redis',
  type: 'RedisStore',
});
```

For memcache datasource

```ts
this.bind(RateLimitSecurityBindings.CONFIG).to({
  client: memoryClient,
  type: 'MemcachedStore',
});
```

For mongoDB datasource

```ts
this.bind(RateLimitSecurityBindings.CONFIG).to({
  name: 'mongo',
  type:'MongoStore';
  uri: 'mongodb://127.0.0.1:27017/test_db',
  collectionName: 'expressRateRecords'
});
```

- By default, ratelimiter will be initialized with default options as mentioned [here](https://github.com/nfriedly/express-rate-limit#configuration-options). However, you can override any of the options using the Config Binding. Below is an example of how to do it with the redis datasource, you can also do it with other two datasources similarly.

```ts
const rateLimitKeyGen = (req: Request) => {
  const token =
    (req.headers &&
      req.headers.authorization &&
      req.headers.authorization.replace(/bearer /i, '')) ||
    '';
  return token;
};

......


this.bind(RateLimitSecurityBindings.CONFIG).to({
  name: 'redis',
  type: 'RedisStore',
  max: 60,
  keyGenerator: rateLimitKeyGen,
});
```

## EnabledbyDefault

enabledByDefault option in Config Binding will provide a configurable mode.
When its enabled (default value is true),it will provide a way to
ratelimit all API's except a few that are disabled using a decorator.

To disable ratelimiting for all APIs except those that are enabled using the decorator,
you can set its value to false in config binding option.

```
this.bind(RateLimitSecurityBindings.CONFIG).to({
  name: 'redis',
  type: 'RedisStore',
  max: 60,
  keyGenerator: rateLimitKeyGen,
  enabledByDefault:false
});
```

- The component exposes a sequence action which can be added to your server sequence class. Adding this will trigger ratelimiter middleware for all the requests passing through.

```ts
export class MySequence implements SequenceHandler {
  constructor(
    @inject(SequenceActions.FIND_ROUTE) protected findRoute: FindRoute,
    @inject(SequenceActions.PARSE_PARAMS) protected parseParams: ParseParams,
    @inject(SequenceActions.INVOKE_METHOD) protected invoke: InvokeMethod,
    @inject(SequenceActions.SEND) public send: Send,
    @inject(SequenceActions.REJECT) public reject: Reject,
    @inject(RateLimitSecurityBindings.RATELIMIT_SECURITY_ACTION)
    protected rateLimitAction: RateLimitAction,
  ) {}

  async handle(context: RequestContext) {
    const requestTime = Date.now();
    try {
      const {request, response} = context;
      const route = this.findRoute(request);
      const args = await this.parseParams(request, route);

      // rate limit Action here
      await this.rateLimitAction(request, response);

      const result = await this.invoke(route, args);
      this.send(response, result);
    } catch (err) {
      ...
    } finally {
      ...
    }
  }
}
```

- This component also exposes a method decorator for cases where you want tp specify different rate limiting options at API method level. For example, you want to keep hard rate limit for unauthorized API requests and want to keep it softer for other API requests. In this case, the global config will be overwritten by the method decoration. Refer below.

```ts
const rateLimitKeyGen = (req: Request) => {
  const token =
    (req.headers &&
      req.headers.authorization &&
      req.headers.authorization.replace(/bearer /i, '')) ||
    '';
  return token;
};

.....

@ratelimit(true, {
  max: 60,
  keyGenerator: rateLimitKeyGen,
})
@patch(`/auth/change-password`, {
  responses: {
    [STATUS_CODE.OK]: {
      description: 'If User password successfully changed.',
    },
    ...ErrorCodes,
  },
  security: [
    {
      [STRATEGY.BEARER]: [],
    },
  ],
})
async resetPassword(
  @requestBody({
    content: {
      [CONTENT_TYPE.JSON]: {
        schema: getModelSchemaRef(ResetPassword, {partial: true}),
      },
    },
  })
  req: ResetPassword,
  @param.header.string('Authorization') auth: string,
): Promise<User> {
  return this.authService.changepassword(req, auth);
}
```

- You can also disable rate limiting for specific API methods using the decorator like below or use the [skip handler](#skip-handler)

```ts
@ratelimit(false)
@authenticate(STRATEGY.BEARER)
@authorize(['*'])
@get('/auth/me', {
  description: ' To get the user details',
  security: [
    {
      [STRATEGY.BEARER]: [],
    },
  ],
  responses: {
    [STATUS_CODE.OK]: {
      description: 'User Object',
      content: {
        [CONTENT_TYPE.JSON]: AuthUser,
      },
    },
    ...ErrorCodes,
  },
})
async userDetails(
  @inject(RestBindings.Http.REQUEST) req: Request,
): Promise<AuthUser> {
  return this.authService.getme(req.headers.authorization);
}
```

## Middleware Sequence Support

As action based sequence will be deprecated soon, we have provided support for middleware based sequences. If you are using middleware sequence you can add ratelimit to your application by enabling ratelimit action middleware. This can be done by binding the RateLimitSecurityBindings.CONFIG in application.ts :

```ts
this.bind(RateLimitSecurityBindings.RATELIMITCONFIG).to({
  RatelimitActionMiddleware: true,
});

this.component(RateLimiterComponent);
```

This binding needs to be done before adding the RateLimiter component to your application.
Apart from this all other steps will remain the same.

## Skip Handler

By default all the paths are rate limited based on the configuration provided, but can be skipped using the skip handler.

Following is the example of an handler that returns true if the path starts with `/obf/` such as `/obf/css/style.css`, `/obf/fonts`, `/obf/stats` etc.

```diff
const obfPath = process.env.OBF_PATH ?? '/obf';

this.bind(RateLimitSecurityBindings.CONFIG).to({
  name: RedisDataSource.dataSourceName,
  type: 'RedisStore',
+  skip: (request, response) => {
+    const isOBFSubpath = Boolean(
+      request.path.match(new RegExp(`^/$+{obfPath.replace(/^\//, '')}/.+`)),
+    );
+    return !!isOBFSubpath;
  },
});
```

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-ratelimiter/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-ratelimiter/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-ratelimiter/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-ratelimiter/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-ratelimiter/blob/master/LICENSE)
