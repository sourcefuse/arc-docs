[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Settings

# Class: Settings

## Hierarchy

- `UserModifiableEntity`<[`Settings`](Settings.md)\>

  ↳ **`Settings`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Settings.md#constructor)

### Properties

- [createdBy](Settings.md#createdby)
- [createdOn](Settings.md#createdon)
- [extId](Settings.md#extid)
- [extMetadata](Settings.md#extmetadata)
- [id](Settings.md#id)
- [modifiedBy](Settings.md#modifiedby)
- [modifiedOn](Settings.md#modifiedon)
- [ownerId](Settings.md#ownerid)
- [ownerType](Settings.md#ownertype)
- [settingName](Settings.md#settingname)
- [settingValue](Settings.md#settingvalue)

## Constructors

### constructor

• **new Settings**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Settings`](Settings.md)\> |

#### Inherited from

UserModifiableEntity<Settings\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

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

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L72)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L78)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L23)

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

### ownerId

• **ownerId**: `string`

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L33)

___

### ownerType

• `Optional` **ownerType**: [`OwnerType`](../enums/OwnerType.md)

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L48)

___

### settingName

• `Optional` **settingName**: `string`

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L57)

___

### settingValue

• `Optional` **settingValue**: `string`

#### Defined in

[services/scheduler-service/src/models/settings.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/settings.model.ts#L66)
