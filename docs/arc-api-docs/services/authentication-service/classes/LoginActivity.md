[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LoginActivity

# Class: LoginActivity

## Hierarchy

- `CoreEntity`<[`LoginActivity`](LoginActivity.md)\>

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

#### Inherited from

CoreEntity<LoginActivity\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### actor

• **actor**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L20)

___

### deviceInfo

• **deviceInfo**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L51)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L14)

___

### ipAddress

• **ipAddress**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L57)

___

### loginTime

• **loginTime**: `Date`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L33)

___

### loginType

• **loginType**: [`LoginType`](../enums/LoginType.md)

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L45)

___

### tenantId

• `Optional` **tenantId**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L26)

___

### tokenPayload

• `Optional` **tokenPayload**: `string`

#### Defined in

[services/authentication-service/src/models/login-activity.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/login-activity.model.ts#L39)
