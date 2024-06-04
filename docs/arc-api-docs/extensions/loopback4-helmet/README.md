<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-helmet](https://github.com/sourcefuse/loopback4-helmet)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-helmet">
<img src="https://img.shields.io/npm/v/loopback4-helmet.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-helmet" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-helmet?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-helmet%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-helmet/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-helmet">
</a>
<a href="https://www.npmjs.com/package/loopback4-helmet" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-helmet.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-helmet/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-helmet.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

A simple loopback-next extension for [helmetjs](https://helmetjs.github.io/) integration in loopback applications.

## Install

```sh
npm install loopback4-helmet
```

## Usage

In order to use this component into your LoopBack application, please follow below steps.

- Add component to application.

```ts
this.component(Loopback4HelmetComponent);
```

- By default, helmet will be initialized with only the default middlewares enabled as per [here](https://github.com/helmetjs/helmet#how-it-works). However, you can override any of the middleware settings using the Config Binding like below.

```ts
this.bind(HelmetSecurityBindings.CONFIG).to({
  referrerPolicy: {
    policy: 'same-origin',
  },
  contentSecurityPolicy: {
    directives: {
      frameSrc: ["'self'"],
    },
  },
});
```

- The component exposes a sequence action which can be added to your server sequence class. Adding this will trigger helmet middleware for all the requests passing through.

```ts
export class MySequence implements SequenceHandler {
  constructor(
    @inject(SequenceActions.FIND_ROUTE) protected findRoute: FindRoute,
    @inject(SequenceActions.PARSE_PARAMS) protected parseParams: ParseParams,
    @inject(SequenceActions.INVOKE_METHOD) protected invoke: InvokeMethod,
    @inject(SequenceActions.SEND) public send: Send,
    @inject(SequenceActions.REJECT) public reject: Reject,
    @inject(HelmetSecurityBindings.HELMET_SECURITY_ACTION)
    protected helmetAction: HelmetAction,
  ) {}

  async handle(context: RequestContext) {
    const requestTime = Date.now();
    try {
      const {request, response} = context;
      const route = this.findRoute(request);
      const args = await this.parseParams(request, route);

      // Helmet Action here
      await this.helmetAction(request, response);

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

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-helmet/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-helmet/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-helmet/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-helmet/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-helmet/blob/master/LICENSE)
