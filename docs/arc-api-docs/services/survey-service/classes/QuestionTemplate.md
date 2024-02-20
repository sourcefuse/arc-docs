[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionTemplate

# Class: QuestionTemplate<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`QuestionTemplate`](QuestionTemplate.md)\>

  ↳ **`QuestionTemplate`**

  ↳↳ [`QuestionTemplatesDto`](QuestionTemplatesDto.md)

  ↳↳ [`QuestionTemplateResponse`](QuestionTemplateResponse.md)

## Table of contents

### Constructors

- [constructor](QuestionTemplate.md#constructor)

### Properties

- [createdBy](QuestionTemplate.md#createdby)
- [createdByUser](QuestionTemplate.md#createdbyuser)
- [createdOn](QuestionTemplate.md#createdon)
- [extId](QuestionTemplate.md#extid)
- [extMetadata](QuestionTemplate.md#extmetadata)
- [id](QuestionTemplate.md#id)
- [isEnableWeight](QuestionTemplate.md#isenableweight)
- [modifiedBy](QuestionTemplate.md#modifiedby)
- [modifiedByUser](QuestionTemplate.md#modifiedbyuser)
- [modifiedOn](QuestionTemplate.md#modifiedon)
- [name](QuestionTemplate.md#name)
- [status](QuestionTemplate.md#status)
- [uid](QuestionTemplate.md#uid)

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
| `data?` | `Partial`<`T` & [`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |

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

[services/survey-service/src/models/question-template.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L47)

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

[services/survey-service/src/models/question-template.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L55)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L61)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L19)

___

### isEnableWeight

• **isEnableWeight**: `boolean`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L45)

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

[services/survey-service/src/models/question-template.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L49)

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

[services/survey-service/src/models/question-template.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L32)

___

### status

• **status**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L38)

___

### uid

• **uid**: `string`

#### Defined in

[services/survey-service/src/models/question-template.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L26)
