[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyQuestionDto

# Class: SurveyQuestionDto

[index](../modules/index.md).SurveyQuestionDto

## Hierarchy

- [`SurveyQuestion`](index.SurveyQuestion.md)<[`SurveyQuestionDto`](index.SurveyQuestionDto.md)\>

  ↳ **`SurveyQuestionDto`**

## Table of contents

### Constructors

- [constructor](index.SurveyQuestionDto.md#constructor)

### Properties

- [createdBy](index.SurveyQuestionDto.md#createdby)
- [createdByUser](index.SurveyQuestionDto.md#createdbyuser)
- [createdOn](index.SurveyQuestionDto.md#createdon)
- [dependentOnQuestionId](index.SurveyQuestionDto.md#dependentonquestionid)
- [displayOrder](index.SurveyQuestionDto.md#displayorder)
- [extId](index.SurveyQuestionDto.md#extid)
- [extMetadata](index.SurveyQuestionDto.md#extmetadata)
- [id](index.SurveyQuestionDto.md#id)
- [isMandatory](index.SurveyQuestionDto.md#ismandatory)
- [isPredefined](index.SurveyQuestionDto.md#ispredefined)
- [modifiedBy](index.SurveyQuestionDto.md#modifiedby)
- [modifiedByUser](index.SurveyQuestionDto.md#modifiedbyuser)
- [modifiedOn](index.SurveyQuestionDto.md#modifiedon)
- [questionId](index.SurveyQuestionDto.md#questionid)
- [sectionId](index.SurveyQuestionDto.md#sectionid)
- [surveyId](index.SurveyQuestionDto.md#surveyid)
- [weight](index.SurveyQuestionDto.md#weight)

## Constructors

### constructor

• **new SurveyQuestionDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyQuestionDto`](index.SurveyQuestionDto.md) & [`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[constructor](index.SurveyQuestion.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[createdBy](index.SurveyQuestion.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdByUser

• `Optional` **createdByUser**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[createdByUser](index.SurveyQuestion.md#createdbyuser)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L64)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[createdOn](index.SurveyQuestion.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### dependentOnQuestionId

• `Optional` **dependentOnQuestionId**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[dependentOnQuestionId](index.SurveyQuestion.md#dependentonquestionid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L53)

___

### displayOrder

• **displayOrder**: `number`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[displayOrder](index.SurveyQuestion.md#displayorder)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L30)

___

### extId

• `Optional` **extId**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[extId](index.SurveyQuestion.md#extid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L113)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[extMetadata](index.SurveyQuestion.md#extmetadata)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L119)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[id](index.SurveyQuestion.md#id)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L23)

___

### isMandatory

• **isMandatory**: `boolean`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[isMandatory](index.SurveyQuestion.md#ismandatory)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L37)

___

### isPredefined

• **isPredefined**: `boolean`

#### Defined in

[services/survey-service/src/models/survey-question-dto.model.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question-dto.model.ts#L9)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[modifiedBy](index.SurveyQuestion.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[modifiedByUser](index.SurveyQuestion.md#modifiedbyuser)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L66)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[modifiedOn](index.SurveyQuestion.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### questionId

• **questionId**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[questionId](index.SurveyQuestion.md#questionid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L92)

___

### sectionId

• `Optional` **sectionId**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[sectionId](index.SurveyQuestion.md#sectionid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L107)

___

### surveyId

• **surveyId**: `string`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[surveyId](index.SurveyQuestion.md#surveyid)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L79)

___

### weight

• `Optional` **weight**: `number`

#### Inherited from

[SurveyQuestion](index.SurveyQuestion.md).[weight](index.SurveyQuestion.md#weight)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L62)
