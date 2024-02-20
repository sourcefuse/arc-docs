[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreConfig

# Interface: CoreConfig

## Table of contents

### Properties

- [authenticateSwaggerUI](CoreConfig.md#authenticateswaggerui)
- [authentication](CoreConfig.md#authentication)
- [configObject](CoreConfig.md#configobject)
- [enableObf](CoreConfig.md#enableobf)
- [modifyPathDefinition](CoreConfig.md#modifypathdefinition)
- [name](CoreConfig.md#name)
- [obfPath](CoreConfig.md#obfpath)
- [openapiSpec](CoreConfig.md#openapispec)
- [swaggerAuthenticate](CoreConfig.md#swaggerauthenticate)
- [swaggerPassword](CoreConfig.md#swaggerpassword)
- [swaggerStatsConfig](CoreConfig.md#swaggerstatsconfig)
- [swaggerUsername](CoreConfig.md#swaggerusername)

## Properties

### authenticateSwaggerUI

• `Optional` **authenticateSwaggerUI**: `boolean`

#### Defined in

[packages/core/src/types.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L36)

___

### authentication

• `Optional` **authentication**: `boolean`

#### Defined in

[packages/core/src/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L33)

___

### configObject

• `Optional` **configObject**: `ConfigurationOptions`

#### Defined in

[packages/core/src/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L18)

___

### enableObf

• `Optional` **enableObf**: `boolean`

#### Defined in

[packages/core/src/types.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L19)

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

[packages/core/src/types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L29)

___

### name

• `Optional` **name**: `string`

#### Defined in

[packages/core/src/types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L17)

___

### obfPath

• `Optional` **obfPath**: `string`

#### Defined in

[packages/core/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L20)

___

### openapiSpec

• `Optional` **openapiSpec**: `Record`<`string`, `unknown`\>

#### Defined in

[packages/core/src/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L21)

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

[packages/core/src/types.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L43)

___

### swaggerPassword

• `Optional` **swaggerPassword**: `string`

#### Defined in

[packages/core/src/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L35)

___

### swaggerStatsConfig

• `Optional` **swaggerStatsConfig**: `Omit`<`Partial`<{}\>, ``"name"`` \| ``"uriPath"`` \| ``"swaggerSpec"`` \| ``"authentication"`` \| ``"onAuthenticate"``\>

#### Defined in

[packages/core/src/types.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L38)

___

### swaggerUsername

• `Optional` **swaggerUsername**: `string`

#### Defined in

[packages/core/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L34)
