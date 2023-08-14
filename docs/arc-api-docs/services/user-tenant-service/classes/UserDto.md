[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserDto

# Class: UserDto

## Hierarchy

- `CoreModel`<[`UserDto`](UserDto.md)\>

  ↳ **`UserDto`**

## Table of contents

### Constructors

- [constructor](UserDto.md#constructor)

### Properties

- [authId](UserDto.md#authid)
- [authProvider](UserDto.md#authprovider)
- [roleId](UserDto.md#roleid)
- [status](UserDto.md#status)
- [tenantId](UserDto.md#tenantid)
- [userDetails](UserDto.md#userdetails)
- [userTenantId](UserDto.md#usertenantid)

## Constructors

### constructor

• **new UserDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserDto`](UserDto.md)\> |

#### Inherited from

CoreModel<UserDto\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### authId

• `Optional` **authId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L38)

___

### authProvider

• `Optional` **authProvider**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L32)

___

### roleId

• **roleId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L15)

___

### status

• `Optional` **status**: `number`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L26)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L21)

___

### userDetails

• **userDetails**: [`User`](User.md)<`DataObject`<`Model`\>\>

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L48)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-dto.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/user-tenant-service/src/models/user-dto.model.ts#L45)
