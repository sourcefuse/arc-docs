[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LoginActivity

# Class: LoginActivity

## Hierarchy

- `Entity`

  ↳ **`LoginActivity`**

## Table of contents

### Constructors

- [constructor](LoginActivity.md#constructor)

### Properties

- [actor](LoginActivity.md#actor)
- [deviceInfo](LoginActivity.md#deviceinfo)
- [id](LoginActivity.md#id)
- [ipAddress](LoginActivity.md#ipaddress)
- [loginTime](LoginActivity.md#logintime)
- [loginType](LoginActivity.md#logintype)
- [tenantId](LoginActivity.md#tenantid)
- [tokenPayload](LoginActivity.md#tokenpayload)

## Constructors

### constructor

• **new LoginActivity**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`LoginActivity`](LoginActivity.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L58)

## Properties

### actor

• **actor**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L19)

___

### deviceInfo

• **deviceInfo**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L50)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L13)

___

### ipAddress

• **ipAddress**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L56)

___

### loginTime

• **loginTime**: `Date`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L32)

___

### loginType

• **loginType**: [`LoginType`](../enums/LoginType.md)

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L44)

___

### tenantId

• `Optional` **tenantId**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L25)

___

### tokenPayload

• `Optional` **tokenPayload**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/authentication-service/src/models/login-activity.model.ts#L38)
