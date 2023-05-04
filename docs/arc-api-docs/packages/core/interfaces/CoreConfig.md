[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreConfig

# Interface: CoreConfig

## Table of contents

### Properties

- [authenticateSwaggerUI](CoreConfig.md#authenticateswaggerui)
- [authentication](CoreConfig.md#authentication)
- [configObject](CoreConfig.md#configobject)
- [enableObf](CoreConfig.md#enableobf)
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

[src/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L21)

___

### authentication

• `Optional` **authentication**: `boolean`

#### Defined in

[src/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L18)

___

### configObject

• `Optional` **configObject**: `ConfigurationOptions`

#### Defined in

[src/types.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L14)

___

### enableObf

• `Optional` **enableObf**: `boolean`

#### Defined in

[src/types.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L15)

___

### name

• `Optional` **name**: `string`

#### Defined in

[src/types.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L13)

___

### obfPath

• `Optional` **obfPath**: `string`

#### Defined in

[src/types.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L16)

___

### openapiSpec

• `Optional` **openapiSpec**: `Record`<`string`, `unknown`\>

#### Defined in

[src/types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L17)

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

[src/types.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L28)

___

### swaggerPassword

• `Optional` **swaggerPassword**: `string`

#### Defined in

[src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L20)

___

### swaggerStatsConfig

• `Optional` **swaggerStatsConfig**: `Omit`<`Partial`<{}\>, ``"name"`` \| ``"uriPath"`` \| ``"swaggerSpec"`` \| ``"authentication"`` \| ``"onAuthenticate"``\>

#### Defined in

[src/types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L23)

___

### swaggerUsername

• `Optional` **swaggerUsername**: `string`

#### Defined in

[src/types.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/core/src/types.ts#L19)
