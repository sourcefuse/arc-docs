[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / Tenant

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
- [id](Tenant.md#id)
- [key](Tenant.md#key)
- [modifiedBy](Tenant.md#modifiedby)
- [modifiedOn](Tenant.md#modifiedon)
- [name](Tenant.md#name)
- [state](Tenant.md#state)
- [status](Tenant.md#status)
- [tenantConfigs](Tenant.md#tenantconfigs)
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

[services/authentication-service/src/models/tenant.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L35)

___

### city

• `Optional` **city**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L45)

___

### country

• `Optional` **country**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L60)

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

### id

• `Optional` **id**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L18)

___

### key

• **key**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L30)

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

[services/authentication-service/src/models/tenant.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L24)

___

### state

• `Optional` **state**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L50)

___

### status

• **status**: `TenantStatus`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L70)

___

### tenantConfigs

• **tenantConfigs**: [`TenantConfig`](TenantConfig.md)[]

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L73)

___

### website

• `Optional` **website**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L40)

___

### zip

• `Optional` **zip**: `string`

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L55)
