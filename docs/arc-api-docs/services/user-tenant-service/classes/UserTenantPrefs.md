[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantPrefs

# Class: UserTenantPrefs

## Hierarchy

- `UserModifiableEntity`<[`UserTenantPrefs`](UserTenantPrefs.md)\>

  ↳ **`UserTenantPrefs`**

## Table of contents

### Constructors

- [constructor](UserTenantPrefs.md#constructor)

### Properties

- [configKey](UserTenantPrefs.md#configkey)
- [configValue](UserTenantPrefs.md#configvalue)
- [createdBy](UserTenantPrefs.md#createdby)
- [createdOn](UserTenantPrefs.md#createdon)
- [id](UserTenantPrefs.md#id)
- [modifiedBy](UserTenantPrefs.md#modifiedby)
- [modifiedOn](UserTenantPrefs.md#modifiedon)
- [userTenantId](UserTenantPrefs.md#usertenantid)

## Constructors

### constructor

• **new UserTenantPrefs**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`UserTenantPrefs`](UserTenantPrefs.md)\> |

#### Inherited from

UserModifiableEntity<UserTenantPrefs\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### configKey

• **configKey**: [`LastAccessedUrl`](../enums/UserConfigKey.md#lastaccessedurl)

#### Defined in

[services/user-tenant-service/src/models/user-tenant-prefs.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant-prefs.model.ts#L29)

___

### configValue

• `Optional` **configValue**: `object`

#### Defined in

[services/user-tenant-service/src/models/user-tenant-prefs.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant-prefs.model.ts#L36)

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

[services/user-tenant-service/src/models/user-tenant-prefs.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant-prefs.model.ts#L22)

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

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-tenant-prefs.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant-prefs.model.ts#L46)
