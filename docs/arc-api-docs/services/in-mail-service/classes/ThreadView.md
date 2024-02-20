[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / ThreadView

# Class: ThreadView

## Hierarchy

- `UserModifiableEntity`<[`ThreadView`](ThreadView.md)\>

  ↳ **`ThreadView`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](ThreadView.md#constructor)

### Properties

- [attachment](ThreadView.md#attachment)
- [body](ThreadView.md#body)
- [createdBy](ThreadView.md#createdby)
- [createdOn](ThreadView.md#createdon)
- [extId](ThreadView.md#extid)
- [group](ThreadView.md#group)
- [id](ThreadView.md#id)
- [messageExtMetaData](ThreadView.md#messageextmetadata)
- [messageId](ThreadView.md#messageid)
- [modifiedBy](ThreadView.md#modifiedby)
- [modifiedOn](ThreadView.md#modifiedon)
- [sender](ThreadView.md#sender)
- [subject](ThreadView.md#subject)
- [threadExtMetadata](ThreadView.md#threadextmetadata)

## Constructors

### constructor

• **new ThreadView**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ThreadView`](ThreadView.md)\> |

#### Inherited from

UserModifiableEntity<ThreadView\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### attachment

• `Optional` **attachment**: [`Attachment`](Attachment.md)[]

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L72)

___

### body

• `Optional` **body**: `string`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L60)

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

### extId

• `Optional` **extId**: `string`

#### Implementation of

ExternalIdentifierEnabledEntity.extId

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L38)

___

### group

• `Optional` **group**: [`Group`](Group.md)[]

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L78)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L27)

___

### messageExtMetaData

• `Optional` **messageExtMetaData**: `string`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L66)

___

### messageId

• `Optional` **messageId**: `string`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L50)

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

### sender

• `Optional` **sender**: `string`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L55)

___

### subject

• `Optional` **subject**: `string`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L32)

___

### threadExtMetadata

• `Optional` **threadExtMetadata**: `object`

#### Defined in

[services/in-mail-service/src/models/thread-view.model.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/thread-view.model.ts#L44)
