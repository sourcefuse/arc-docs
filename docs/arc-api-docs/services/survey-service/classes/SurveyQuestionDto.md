[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyQuestionDto

# Class: SurveyQuestionDto

## Hierarchy

- [`SurveyQuestion`](SurveyQuestion.md)<[`SurveyQuestionDto`](SurveyQuestionDto.md)\>

  ↳ **`SurveyQuestionDto`**

## Table of contents

### Constructors

- [constructor](SurveyQuestionDto.md#constructor)

### Properties

- [createdBy](SurveyQuestionDto.md#createdby)
- [createdByUser](SurveyQuestionDto.md#createdbyuser)
- [createdOn](SurveyQuestionDto.md#createdon)
- [dependentOnQuestionId](SurveyQuestionDto.md#dependentonquestionid)
- [displayOrder](SurveyQuestionDto.md#displayorder)
- [extId](SurveyQuestionDto.md#extid)
- [extMetadata](SurveyQuestionDto.md#extmetadata)
- [id](SurveyQuestionDto.md#id)
- [isMandatory](SurveyQuestionDto.md#ismandatory)
- [isPredefined](SurveyQuestionDto.md#ispredefined)
- [modifiedBy](SurveyQuestionDto.md#modifiedby)
- [modifiedByUser](SurveyQuestionDto.md#modifiedbyuser)
- [modifiedOn](SurveyQuestionDto.md#modifiedon)
- [questionId](SurveyQuestionDto.md#questionid)
- [sectionId](SurveyQuestionDto.md#sectionid)
- [surveyId](SurveyQuestionDto.md#surveyid)
- [weight](SurveyQuestionDto.md#weight)

## Constructors

### constructor

• **new SurveyQuestionDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyQuestionDto`](SurveyQuestionDto.md) & [`SurveyQuestion`](SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[constructor](SurveyQuestion.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[createdBy](SurveyQuestion.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdByUser

• `Optional` **createdByUser**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[createdByUser](SurveyQuestion.md#createdbyuser)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L64)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[createdOn](SurveyQuestion.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### dependentOnQuestionId

• `Optional` **dependentOnQuestionId**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[dependentOnQuestionId](SurveyQuestion.md#dependentonquestionid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L53)

___

### displayOrder

• **displayOrder**: `number`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[displayOrder](SurveyQuestion.md#displayorder)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L30)

___

### extId

• `Optional` **extId**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[extId](SurveyQuestion.md#extid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L113)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[extMetadata](SurveyQuestion.md#extmetadata)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L119)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[id](SurveyQuestion.md#id)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L23)

___

### isMandatory

• **isMandatory**: `boolean`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[isMandatory](SurveyQuestion.md#ismandatory)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L37)

___

### isPredefined

• **isPredefined**: `boolean`

#### Defined in

[services/survey-service/src/models/survey-question-dto.model.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question-dto.model.ts#L9)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[modifiedBy](SurveyQuestion.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[modifiedByUser](SurveyQuestion.md#modifiedbyuser)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L66)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[modifiedOn](SurveyQuestion.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### questionId

• **questionId**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[questionId](SurveyQuestion.md#questionid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L92)

___

### sectionId

• `Optional` **sectionId**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[sectionId](SurveyQuestion.md#sectionid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L107)

___

### surveyId

• **surveyId**: `string`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[surveyId](SurveyQuestion.md#surveyid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L79)

___

### weight

• `Optional` **weight**: `number`

#### Inherited from

[SurveyQuestion](SurveyQuestion.md).[weight](SurveyQuestion.md#weight)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L62)
