<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-s3](https://github.com/sourcefuse/loopback4-s3)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-s3">
<img src="https://img.shields.io/npm/v/loopback4-s3.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-s3" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-s3?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-s3%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-s3/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-s3">
</a>
<a href="https://www.npmjs.com/package/loopback4-s3" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-s3.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-s3/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-s3.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

A simple loopback-next extension for AWS S3 integration in loopback applications.

## Install

```sh
npm install loopback4-s3
```

## Usage

In order to use this component into your LoopBack application, please follow below steps.

- Add component to application and provide access keys and other s3 initialization configuration details via AWSS3Bindings.Config binding as mentioned below. You can add any of the options mentioned [here](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/Config.html#constructor-property).

```ts
this.bind(AWSS3Bindings.Config).to({
  accessKeyId: process.env.AWS_ACCESS_KEY_ID,
  secretAccessKey: process.env.AWS_SECRET_ACCESS_KEY,
  region: process.env.AWS_REGION,
} as AwsS3Config);
this.component(AwsS3Component);
```

- After this, you can just inject the S3 provider across application.

```ts
import {S3WithSigner} from 'loopback4-s3';

@inject(AWSS3Bindings.AwsS3Provider) s3: S3WithSigner,
```

## Migration to a version after 4.0.0

`loopback4-s3@4.0.0` is the last version that would be using aws-sdk v2, after that all the versions are going to be based on [`aws-sdk v3`](https://github.com/aws/aws-sdk-js-v3).

You should remove any previous installation of `aws-sdk` from your projects if you have it installed just for `loopback4-s3`.

The client from v3 sdk no longer require the `.promise()` method to return a promise -

```
const data =  await v2client.command(params).promise() // in v2

const data = await v3client.command(params) // v3
```

The client provided by the `loopback4-s3` package extends `S3` class and not `S3Client`, so you do not need to create commands to use this module.

You can read [this](https://docs.aws.amazon.com/sdk-for-javascript/v3/developer-guide/migrating-to-v3.html) guide to know more about migrating your code to `aws-sdk-js-v3`.

The `getPresignedUrl` method is also missing in `aws-sdk/client-s3` client, so it is provided in the extended client returned by the provider. The documentation for this new `getPresignedUrl` are provided [here](https://docs.aws.amazon.com/AWSJavaScriptSDK/v3/latest/modules/_aws_sdk_s3_request_presigner.html)

You might also have to install `cmake 3.1+` on your machine if [`aws-crt`](https://www.npmjs.com/package/aws-crt) is not available as a prebuild package for your system.

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-s3/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-s3/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-s3/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Developing

For development guidelines, refer [here](https://github.com/sourcefuse/rakuten-pms-api/tree/master/DEVELOPING.md)

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-s3/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-s3/blob/master/LICENSE)
