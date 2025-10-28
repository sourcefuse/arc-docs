[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LoginActivityHelperService

# Class: LoginActivityHelperService

## Table of contents

### Constructors

- [constructor](LoginActivityHelperService.md#constructor)

### Properties

- [getCurrentUser](LoginActivityHelperService.md#getcurrentuser)
- [loginActivityRepository](LoginActivityHelperService.md#loginactivityrepository)
- [tenantGuardService](LoginActivityHelperService.md#tenantguardservice)

### Methods

- [count](LoginActivityHelperService.md#count)
- [find](LoginActivityHelperService.md#find)
- [findById](LoginActivityHelperService.md#findbyid)
- [findOne](LoginActivityHelperService.md#findone)

## Constructors

### constructor

• **new LoginActivityHelperService**(`getCurrentUser`, `tenantGuardService`, `loginActivityRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `getCurrentUser` | `Getter`<`UserInToken`\> |
| `tenantGuardService` | `TenantGuardService`<`EntityWithTenantId`, `string`\> |
| `loginActivityRepository` | [`LoginActivityRepository`](LoginActivityRepository.md) |

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L28)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`UserInToken`\>

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L30)

___

### loginActivityRepository

• **loginActivityRepository**: [`LoginActivityRepository`](LoginActivityRepository.md)

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L34)

___

### tenantGuardService

• **tenantGuardService**: `TenantGuardService`<`EntityWithTenantId`, `string`\>

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L32)

## Methods

### count

▸ **count**(`where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<[`LoginActivity`](LoginActivity.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L83)

___

### find

▸ **find**(`filter?`, `options?`): `Promise`<[`LoginActivity`](LoginActivity.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<[`LoginActivity`](LoginActivity.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`LoginActivity`](LoginActivity.md)[]\>

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L37)

___

### findById

▸ **findById**(`id`, `filter?`, `options?`): `Promise`<[`LoginActivity`](LoginActivity.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `filter?` | `FilterExcludingWhere`<[`LoginActivity`](LoginActivity.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`LoginActivity`](LoginActivity.md)\>

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L49)

___

### findOne

▸ **findOne**(`filter?`, `options?`): `Promise`<``null`` \| [`LoginActivity`](LoginActivity.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `filter?` | `Filter`<[`LoginActivity`](LoginActivity.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<``null`` \| [`LoginActivity`](LoginActivity.md)\>

#### Defined in

[services/authentication-service/src/services/login-activity-helper.service.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/login-activity-helper.service.ts#L72)
