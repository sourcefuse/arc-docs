[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / Subscription

# Class: Subscription

## Hierarchy

- `UserModifiableEntity`<[`Subscription`](Subscription.md)\>

  ↳ **`Subscription`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Subscription.md#constructor)

### Properties

- [accessRole](Subscription.md#accessrole)
- [bgColor](Subscription.md#bgcolor)
- [calendarId](Subscription.md#calendarid)
- [createdBy](Subscription.md#createdby)
- [createdOn](Subscription.md#createdon)
- [defaultReminders](Subscription.md#defaultreminders)
- [extId](Subscription.md#extid)
- [extMetadata](Subscription.md#extmetadata)
- [fgColor](Subscription.md#fgcolor)
- [id](Subscription.md#id)
- [identifier](Subscription.md#identifier)
- [isHidden](Subscription.md#ishidden)
- [isPrimary](Subscription.md#isprimary)
- [modifiedBy](Subscription.md#modifiedby)
- [modifiedOn](Subscription.md#modifiedon)
- [notificationSettings](Subscription.md#notificationsettings)

## Constructors

### constructor

• **new Subscription**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Subscription`](Subscription.md)\> |

#### Inherited from

UserModifiableEntity<Subscription\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### accessRole

• `Optional` **accessRole**: [`AccessRoleType`](../enums/AccessRoleType.md)

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L39)

___

### bgColor

• `Optional` **bgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L45)

___

### calendarId

• **calendarId**: `string`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L94)

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

### defaultReminders

• `Optional` **defaultReminders**: `object`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L78)

___

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L100)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L106)

___

### fgColor

• `Optional` **fgColor**: `string`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L51)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L24)

___

### identifier

• **identifier**: `string`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L72)

___

### isHidden

• `Optional` **isHidden**: `boolean`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L58)

___

### isPrimary

• `Optional` **isPrimary**: `boolean`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L65)

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

### notificationSettings

• `Optional` **notificationSettings**: `object`

#### Defined in

[services/scheduler-service/src/models/subscription.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/subscription.model.ts#L84)
