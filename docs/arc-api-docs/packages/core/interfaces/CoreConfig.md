[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreConfig

# Interface: CoreConfig

## Table of contents

### Properties

- [authenticateSwaggerUI](CoreConfig.md#authenticateswaggerui)
- [authentication](CoreConfig.md#authentication)
- [configObject](CoreConfig.md#configobject)
- [disablei18n](CoreConfig.md#disablei18n)
- [enableObf](CoreConfig.md#enableobf)
- [modifyPathDefinition](CoreConfig.md#modifypathdefinition)
- [name](CoreConfig.md#name)
- [obfPath](CoreConfig.md#obfpath)
- [openapiSpec](CoreConfig.md#openapispec)
- [swaggerAuthenticate](CoreConfig.md#swaggerauthenticate)
- [swaggerPassword](CoreConfig.md#swaggerpassword)
- [swaggerStatsConfig](CoreConfig.md#swaggerstatsconfig)
- [swaggerUsername](CoreConfig.md#swaggerusername)
- [tenantContextEncryptionKey](CoreConfig.md#tenantcontextencryptionkey)
- [tenantContextMiddleware](CoreConfig.md#tenantcontextmiddleware)

## Properties

### authenticateSwaggerUI

• `Optional` **authenticateSwaggerUI**: `boolean`

#### Defined in

[packages/core/src/types.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L45)

___

### authentication

• `Optional` **authentication**: `boolean`

#### Defined in

[packages/core/src/types.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L42)

___

### configObject

• `Optional` **configObject**: `ConfigurationOptions`

#### Defined in

[packages/core/src/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L22)

___

### disablei18n

• `Optional` **disablei18n**: `boolean`

#### Defined in

[packages/core/src/types.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L28)

___

### enableObf

• `Optional` **enableObf**: `boolean`

#### Defined in

[packages/core/src/types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L23)

___

### modifyPathDefinition

• `Optional` **modifyPathDefinition**: (`path`: `string`, `pathDefinition`: [`OASPathDefinition`](../modules.md#oaspathdefinition)) => ``null`` \| [`OASPathDefinition`](../modules.md#oaspathdefinition)

#### Type declaration

▸ (`path`, `pathDefinition`): ``null`` \| [`OASPathDefinition`](../modules.md#oaspathdefinition)

In order to hide or alter some path from the definition provided by swagger stats, `modifyPathDefinition`
callback can be used. It'll get called for each of the path specified in the `openapiSpec` provided.

##### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `path` | `string` | The name of the API path. |
| `pathDefinition` | [`OASPathDefinition`](../modules.md#oaspathdefinition) | The definition object containing method and other details. |

##### Returns

``null`` \| [`OASPathDefinition`](../modules.md#oaspathdefinition)

`null` if the path needs to be omitted from the spec else return the `pathDefinition` either in the original form as received in the argument or by modifying it as per the needs.

#### Defined in

[packages/core/src/types.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L37)

___

### name

• `Optional` **name**: `string`

#### Defined in

[packages/core/src/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L21)

___

### obfPath

• `Optional` **obfPath**: `string`

#### Defined in

[packages/core/src/types.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L24)

___

### openapiSpec

• `Optional` **openapiSpec**: `Record`<`string`, `unknown`\>

#### Defined in

[packages/core/src/types.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L26)

___

### swaggerAuthenticate

• `Optional` **swaggerAuthenticate**: (`req?`: `IncomingMessage`, `username?`: `string`, `password?`: `string`) => `boolean`

#### Type declaration

▸ (`req?`, `username?`, `password?`): `boolean`

##### Parameters

| Name | Type |
| :------ | :------ |
| `req?` | `IncomingMessage` |
| `username?` | `string` |
| `password?` | `string` |

##### Returns

`boolean`

#### Defined in

[packages/core/src/types.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L52)

___

### swaggerPassword

• `Optional` **swaggerPassword**: `string`

#### Defined in

[packages/core/src/types.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L44)

___

### swaggerStatsConfig

• `Optional` **swaggerStatsConfig**: `Omit`<`Partial`<{}\>, ``"name"`` \| ``"uriPath"`` \| ``"swaggerSpec"`` \| ``"authentication"`` \| ``"onAuthenticate"``\>

#### Defined in

[packages/core/src/types.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L47)

___

### swaggerUsername

• `Optional` **swaggerUsername**: `string`

#### Defined in

[packages/core/src/types.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L43)

___

### tenantContextEncryptionKey

• `Optional` **tenantContextEncryptionKey**: `string`

#### Defined in

[packages/core/src/types.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L25)

___

### tenantContextMiddleware

• `Optional` **tenantContextMiddleware**: `boolean`

#### Defined in

[packages/core/src/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/types.ts#L27)
