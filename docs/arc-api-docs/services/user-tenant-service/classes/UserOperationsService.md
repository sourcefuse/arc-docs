[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserOperationsService

# Class: UserOperationsService

## Table of contents

### Constructors

- [constructor](UserOperationsService.md#constructor)

### Properties

- [getCurrentUser](UserOperationsService.md#getcurrentuser)
- [logger](UserOperationsService.md#logger)
- [roleRepository](UserOperationsService.md#rolerepository)
- [tenantRepository](UserOperationsService.md#tenantrepository)
- [userGroupRepository](UserOperationsService.md#usergrouprepository)
- [userRepository](UserOperationsService.md#userrepository)
- [userTenantRepository](UserOperationsService.md#usertenantrepository)
- [userViewRepository](UserOperationsService.md#userviewrepository)

### Methods

- [\_validateUserCreation](UserOperationsService.md#_validateusercreation)
- [create](UserOperationsService.md#create)
- [deleteById](UserOperationsService.md#deletebyid)
- [find](UserOperationsService.md#find)
- [updateById](UserOperationsService.md#updatebyid)
- [updateUserTenant](UserOperationsService.md#updateusertenant)

## Constructors

### constructor

• **new UserOperationsService**(`roleRepository`, `userRepository`, `userViewRepository`, `tenantRepository`, `userGroupRepository`, `userTenantRepository`, `getCurrentUser`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `roleRepository` | [`RoleRepository`](RoleRepository.md) |
| `userRepository` | [`UserRepository`](UserRepository.md) |
| `userViewRepository` | [`UserViewRepository`](UserViewRepository.md) |
| `tenantRepository` | [`TenantRepository`](TenantRepository.md) |
| `userGroupRepository` | [`UserGroupRepository`](UserGroupRepository.md) |
| `userTenantRepository` | [`UserTenantRepository`](UserTenantRepository.md) |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `logger` | `ILogger` |

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L30)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L41)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L42)

___

### roleRepository

• `Readonly` **roleRepository**: [`RoleRepository`](RoleRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L31)

___

### tenantRepository

• `Readonly` **tenantRepository**: [`TenantRepository`](TenantRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L35)

___

### userGroupRepository

• `Readonly` **userGroupRepository**: [`UserGroupRepository`](UserGroupRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L37)

___

### userRepository

• `Readonly` **userRepository**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L32)

___

### userTenantRepository

• `Readonly` **userTenantRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L39)

___

### userViewRepository

• `Readonly` **userViewRepository**: [`UserViewRepository`](UserViewRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L34)

## Methods

### \_validateUserCreation

▸ `Private` **_validateUserCreation**(`userDtoData`, `tenant`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userDtoData` | [`UserDto`](UserDto.md) |
| `tenant` | [`Tenant`](Tenant.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:224](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L224)

___

### create

▸ **create**(`userDtoData`, `tenantId`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userDtoData` | [`UserDto`](UserDto.md) |
| `tenantId` | `string` |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L45)

___

### deleteById

▸ **deleteById**(`id`, `tenantId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `tenantId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:193](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L193)

___

### find

▸ **find**(`tenantId`, `filter?`, `permissions?`): `Promise`<[`UserView`](UserView.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tenantId` | `string` |
| `filter?` | `Filter`<[`UserView`](UserView.md)<`DataObject`<`Model`\>\>\> |
| `permissions?` | `string`[] |

#### Returns

`Promise`<[`UserView`](UserView.md)<`DataObject`<`Model`\>\>[]\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L105)

___

### updateById

▸ **updateById**(`userData`, `userId`, `tenantId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userData` | `Omit`<[`UserView`](UserView.md)<`DataObject`<`Model`\>\>, ``"id"`` \| ``"authClientIds"`` \| ``"lastLogin"`` \| ``"status"`` \| ``"tenantId"``\> |
| `userId` | `string` |
| `tenantId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L138)

___

### updateUserTenant

▸ **updateUserTenant**(`userData`, `id`, `currentUser`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userData` | `Partial`<[`UserDto`](UserDto.md)\> |
| `id` | `string` |
| `currentUser` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-operations.service.ts:173](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-operations.service.ts#L173)
