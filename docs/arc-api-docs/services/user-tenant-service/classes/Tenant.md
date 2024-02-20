[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Tenant

# Class: Tenant

## Hierarchy

- `UserModifiableEntity`<[`Tenant`](Tenant.md)\>

  ↳ **`Tenant`**

## Table of contents

### Constructors

- [constructor](Tenant.md#constructor)

### Properties

- [address](Tenant.md#address)
- [city](Tenant.md#city)
- [country](Tenant.md#country)
- [createdBy](Tenant.md#createdby)
- [createdOn](Tenant.md#createdon)
- [groups](Tenant.md#groups)
- [id](Tenant.md#id)
- [key](Tenant.md#key)
- [modifiedBy](Tenant.md#modifiedby)
- [modifiedOn](Tenant.md#modifiedon)
- [name](Tenant.md#name)
- [roles](Tenant.md#roles)
- [state](Tenant.md#state)
- [status](Tenant.md#status)
- [tenantConfigs](Tenant.md#tenantconfigs)
- [userTenants](Tenant.md#usertenants)
- [users](Tenant.md#users)
- [website](Tenant.md#website)
- [zip](Tenant.md#zip)

## Constructors

### constructor

• **new Tenant**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Tenant`](Tenant.md)\> |

#### Inherited from

UserModifiableEntity<Tenant\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### address

• `Optional` **address**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L59)

___

### city

• `Optional` **city**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L64)

___

### country

• `Optional` **country**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L79)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### groups

• **groups**: [`Group`](Group.md)<`DataObject`<`Model`\>\>[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L94)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L27)

___

### key

• `Optional` **key**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L49)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L33)

___

### roles

• **roles**: [`Role`](Role.md)[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L91)

___

### state

• `Optional` **state**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L69)

___

### status

• **status**: `TenantStatus`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L44)

___

### tenantConfigs

• **tenantConfigs**: [`TenantConfig`](TenantConfig.md)[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L82)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L85)

___

### users

• **users**: [`User`](User.md)<`DataObject`<`Model`\>\>[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L88)

___

### website

• `Optional` **website**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L54)

___

### zip

• `Optional` **zip**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L74)
