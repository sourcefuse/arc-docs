[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Theme

# Class: Theme

## Hierarchy

- `UserModifiableEntity`<[`Theme`](Theme.md)\>

  ↳ **`Theme`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Theme.md#constructor)

### Properties

- [calBg](Theme.md#calbg)
- [calFg](Theme.md#calfg)
- [createdBy](Theme.md#createdby)
- [createdOn](Theme.md#createdon)
- [eventBg](Theme.md#eventbg)
- [eventFg](Theme.md#eventfg)
- [extId](Theme.md#extid)
- [extMetadata](Theme.md#extmetadata)
- [id](Theme.md#id)
- [modifiedBy](Theme.md#modifiedby)
- [modifiedOn](Theme.md#modifiedon)

## Constructors

### constructor

• **new Theme**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Theme`](Theme.md)\> |

#### Inherited from

UserModifiableEntity<Theme\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### calBg

• `Optional` **calBg**: `string`

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L31)

___

### calFg

• `Optional` **calFg**: `string`

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L40)

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

### eventBg

• `Optional` **eventBg**: `string`

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L49)

___

### eventFg

• `Optional` **eventFg**: `string`

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L58)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L64)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L70)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/theme.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/theme.model.ts#L22)

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
