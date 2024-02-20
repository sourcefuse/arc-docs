[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / FindAccountResult

# Interface: FindAccountResult

## Table of contents

### Properties

- [accountId](FindAccountResult.md#accountid)
- [claims](FindAccountResult.md#claims)

## Properties

### accountId

• **accountId**: `string`

#### Defined in

[services/oidc-service/src/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/types.ts#L41)

___

### claims

• **claims**: (`use`: `string`, `scope`: `string`, `claims`: `unknown`, `rejected`: `string`[]) => `Promise`<{ `[key: string]`: `unknown`;  }\>

#### Type declaration

▸ (`use`, `scope`, `claims`, `rejected`): `Promise`<{ `[key: string]`: `unknown`;  }\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `use` | `string` |
| `scope` | `string` |
| `claims` | `unknown` |
| `rejected` | `string`[] |

##### Returns

`Promise`<{ `[key: string]`: `unknown`;  }\>

#### Defined in

[services/oidc-service/src/types.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/types.ts#L42)
