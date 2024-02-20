[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / TenantConfig

# Class: TenantConfig

## Hierarchy

- `UserModifiableEntity`<[`TenantConfig`](TenantConfig.md)\>

  ↳ **`TenantConfig`**

## Table of contents

### Constructors

- [constructor](TenantConfig.md#constructor)

### Properties

- [configKey](TenantConfig.md#configkey)
- [configValue](TenantConfig.md#configvalue)
- [createdBy](TenantConfig.md#createdby)
- [createdOn](TenantConfig.md#createdon)
- [id](TenantConfig.md#id)
- [modifiedBy](TenantConfig.md#modifiedby)
- [modifiedOn](TenantConfig.md#modifiedon)
- [tenantId](TenantConfig.md#tenantid)

## Constructors

### constructor

• **new TenantConfig**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`TenantConfig`](TenantConfig.md)\> |

#### Inherited from

UserModifiableEntity<TenantConfig\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### configKey

• **configKey**: `ConfigKey`

#### Defined in

[services/authentication-service/src/models/tenant-config.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant-config.model.ts#L24)

___

### configValue

• `Optional` **configValue**: `object`

#### Defined in

[services/authentication-service/src/models/tenant-config.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant-config.model.ts#L30)

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

[services/authentication-service/src/models/tenant-config.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant-config.model.ts#L17)

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

### tenantId

• **tenantId**: `string`

#### Defined in

[services/authentication-service/src/models/tenant-config.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant-config.model.ts#L40)
