<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [@sourceloop/vault](https://github.com/sourcefuse/loopback4-vault)

<p align="left">
<a href="https://www.npmjs.com/package/@sourceloop/vault">
<img src="https://img.shields.io/npm/v/@sourceloop/vault.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-vault" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-vault?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-vault%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-vault/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-vault">
</a>
<a href="https://www.npmjs.com/@sourceloop/vault" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dm/@sourceloop/vault">
</a>
<a href="https://github.com/sourcefuse/loopback4-s3/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-s3.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

A simple loopback-next extension for Hashicorp's [Vault](https://learn.hashicorp.com/vault) integration in loopback applications based on node.js vault client [node-vault](https://github.com/kr1sp1n/node-vault).

## Install

```sh
npm install @sourceloop/vault
```

## Usage

In order to use this component into your LoopBack application, please follow below steps.

- Add component to application and provide vault endpoint, vault token and unseal key via `VaultSecurityBindings`.

```ts
this.component(VaultComponent);
this.bind(VaultSecurityBindings.CONFIG).to({
  endpoint: process.env.VAULT_URL,
  token: process.env.VAULT_TOKEN,
  unsealKey: process.env.VAULT_UNSEAL_KEY,
});
```

- After this, you can just inject the `VaultSecurityBindings.VAULT_CONNECTOR` across application.

```ts
@inject(VaultSecurityBindings.VAULT_CONNECTOR)
private readonly vaultConnector: VaultConnect,
```

All the methods mentioned [here](https://github.com/kr1sp1n/node-vault/blob/master/features.md) are now available on `vaultConnector`.

Here is an example usage below

```ts
  private async upsertKeyToVault(credKey: string): Promise<{data: AnyObject}> {
    let data: {data: AnyObject};
    try {
      data = await this.vaultConnector.read(credKey);
    } catch (error) {
      if (error.response.statusCode === 404) {
        await this.vaultConnector.write(credKey, {empty: true});
        data = await this.vaultConnector.read(credKey);
      } else {
        this.logger.error(error);
        throw error;
      }
    }
    return data;
  }
```

- If you need to update vault token or any other connection parameters, there is a `reconnect(config: VaultProviderOptions)` function available to do so. Whatever new config parameters are needed, you can pass those and leave the unchanged ones out of the config. It will only update the new ones keeping the existing ones intact and will reconnect with vault again. Please note that this may cause disconnection with your existing vault data if you change the endpoints here.

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-vault/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-vault/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-vault/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-vault/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-vault/blob/master/LICENSE)
