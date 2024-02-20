[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyQuestion

# Class: SurveyQuestion<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`SurveyQuestion`](SurveyQuestion.md)\>

  ↳ **`SurveyQuestion`**

  ↳↳ [`SurveyQuestionDto`](SurveyQuestionDto.md)

## Table of contents

### Constructors

- [constructor](SurveyQuestion.md#constructor)

### Properties

- [createdBy](SurveyQuestion.md#createdby)
- [createdByUser](SurveyQuestion.md#createdbyuser)
- [createdOn](SurveyQuestion.md#createdon)
- [dependentOnQuestionId](SurveyQuestion.md#dependentonquestionid)
- [displayOrder](SurveyQuestion.md#displayorder)
- [extId](SurveyQuestion.md#extid)
- [extMetadata](SurveyQuestion.md#extmetadata)
- [id](SurveyQuestion.md#id)
- [isMandatory](SurveyQuestion.md#ismandatory)
- [modifiedBy](SurveyQuestion.md#modifiedby)
- [modifiedByUser](SurveyQuestion.md#modifiedbyuser)
- [modifiedOn](SurveyQuestion.md#modifiedon)
- [questionId](SurveyQuestion.md#questionid)
- [sectionId](SurveyQuestion.md#sectionid)
- [surveyId](SurveyQuestion.md#surveyid)
- [weight](SurveyQuestion.md#weight)

## Constructors

### constructor

• **new SurveyQuestion**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`SurveyQuestion`](SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<
  T & SurveyQuestion
\>.constructor

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

[services/survey-service/src/models/survey-question.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L64)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### dependentOnQuestionId

• `Optional` **dependentOnQuestionId**: `string`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L53)

___

### displayOrder

• **displayOrder**: `number`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L30)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L113)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L119)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L23)

___

### isMandatory

• **isMandatory**: `boolean`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L37)

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

[services/survey-service/src/models/survey-question.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L66)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### questionId

• **questionId**: `string`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L92)

___

### sectionId

• `Optional` **sectionId**: `string`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L107)

___

### surveyId

• **surveyId**: `string`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L79)

___

### weight

• `Optional` **weight**: `number`

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L62)
