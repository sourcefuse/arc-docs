[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / QuestionTemplate

# Class: QuestionTemplate<T\>

[index](../modules/index.md).QuestionTemplate

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`QuestionTemplate`](index.QuestionTemplate.md)\>

  ↳ **`QuestionTemplate`**

  ↳↳ [`QuestionTemplatesDto`](index.QuestionTemplatesDto.md)

  ↳↳ [`QuestionTemplateResponse`](index.QuestionTemplateResponse.md)

## Table of contents

### Constructors

- [constructor](index.QuestionTemplate.md#constructor)

### Properties

- [createdBy](index.QuestionTemplate.md#createdby)
- [createdByUser](index.QuestionTemplate.md#createdbyuser)
- [createdOn](index.QuestionTemplate.md#createdon)
- [extId](index.QuestionTemplate.md#extid)
- [extMetadata](index.QuestionTemplate.md#extmetadata)
- [id](index.QuestionTemplate.md#id)
- [isEnableWeight](index.QuestionTemplate.md#isenableweight)
- [modifiedBy](index.QuestionTemplate.md#modifiedby)
- [modifiedByUser](index.QuestionTemplate.md#modifiedbyuser)
- [modifiedOn](index.QuestionTemplate.md#modifiedon)
- [name](index.QuestionTemplate.md#name)
- [status](index.QuestionTemplate.md#status)
- [uid](index.QuestionTemplate.md#uid)

## Constructors

### constructor

• **new QuestionTemplate**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<T & QuestionTemplate\>.constructor

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

### createdByUser

• `Optional` **createdByUser**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L47)

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

#### Defined in

[services/survey-service/src/models/question-template.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L55)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L61)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L19)

___

### isEnableWeight

• **isEnableWeight**: `boolean`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L45)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L49)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• `Optional` **name**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L32)

___

### status

• **status**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L38)

___

### uid

• **uid**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L26)
