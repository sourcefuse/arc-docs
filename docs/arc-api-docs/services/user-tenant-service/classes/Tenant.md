[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / Tenant

# Class: Tenant

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Tenant`**

## Table of contents

### Constructors

- [constructor](Tenant.md#constructor)

### Properties

- [address](Tenant.md#address)
- [allowedDomain](Tenant.md#alloweddomain)
- [city](Tenant.md#city)
- [country](Tenant.md#country)
- [createdBy](Tenant.md#createdby)
- [createdOn](Tenant.md#createdon)
- [id](Tenant.md#id)
- [key](Tenant.md#key)
- [modifiedBy](Tenant.md#modifiedby)
- [modifiedOn](Tenant.md#modifiedon)
- [name](Tenant.md#name)
- [primaryContactEmail](Tenant.md#primarycontactemail)
- [state](Tenant.md#state)
- [status](Tenant.md#status)
- [tenantConfigs](Tenant.md#tenantconfigs)
- [tenantType](Tenant.md#tenanttype)
- [userTenants](Tenant.md#usertenants)
- [website](Tenant.md#website)
- [zip](Tenant.md#zip)

## Constructors

### constructor

• **new Tenant**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Tenant`](Tenant.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L102)

## Properties

### address

• `Optional` **address**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L56)

___

### allowedDomain

• **allowedDomain**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L88)

___

### city

• `Optional` **city**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L61)

___

### country

• `Optional` **country**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L76)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L24)

___

### key

• `Optional` **key**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L46)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### name

• **name**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L30)

___

### primaryContactEmail

• **primaryContactEmail**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L82)

___

### state

• `Optional` **state**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L66)

___

### status

• **status**: `TenantStatus`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L41)

___

### tenantConfigs

• **tenantConfigs**: [`TenantConfig`](TenantConfig.md)[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L97)

___

### tenantType

• **tenantType**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L94)

___

### userTenants

• **userTenants**: [`UserTenant`](UserTenant.md)[]

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L100)

___

### website

• `Optional` **website**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L51)

___

### zip

• `Optional` **zip**: `string`

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/user-tenant-service/src/models/tenant.model.ts#L71)
