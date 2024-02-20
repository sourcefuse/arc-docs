[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / Group

# Class: Group

## Hierarchy

- `UserModifiableEntity`<[`Group`](Group.md)\>

  ↳ **`Group`**

## Implements

- `ExternalIdentifierEnabledEntity`

## Table of contents

### Constructors

- [constructor](Group.md#constructor)

### Properties

- [createdBy](Group.md#createdby)
- [createdOn](Group.md#createdon)
- [extId](Group.md#extid)
- [extMetadata](Group.md#extmetadata)
- [id](Group.md#id)
- [isImportant](Group.md#isimportant)
- [messageId](Group.md#messageid)
- [modifiedBy](Group.md#modifiedby)
- [modifiedOn](Group.md#modifiedon)
- [party](Group.md#party)
- [storage](Group.md#storage)
- [threadId](Group.md#threadid)
- [type](Group.md#type)
- [visibility](Group.md#visibility)

## Constructors

### constructor

• **new Group**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Group`](Group.md)\> |

#### Inherited from

UserModifiableEntity<Group\>.constructor

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

[services/in-mail-service/src/models/group.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L76)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Implementation of

ExternalIdentifierEnabledEntity.extMetadata

#### Defined in

[services/in-mail-service/src/models/group.model.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L83)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L28)

___

### isImportant

• `Optional` **isImportant**: `boolean`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L49)

___

### messageId

• **messageId**: `string`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L94)

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

### party

• **party**: `string`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L34)

___

### storage

• `Optional` **storage**: `string`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L59)

___

### threadId

• **threadId**: `string`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L105)

___

### type

• **type**: [`PartyTypeMarker`](../enums/PartyTypeMarker.md)

#### Defined in

[services/in-mail-service/src/models/group.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L43)

___

### visibility

• `Optional` **visibility**: `string`

#### Defined in

[services/in-mail-service/src/models/group.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/models/group.model.ts#L69)
