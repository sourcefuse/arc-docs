[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponseDetail

# Class: SurveyResponseDetail

## Hierarchy

- `UserModifiableEntity`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\>

  ↳ **`SurveyResponseDetail`**

## Table of contents

### Constructors

- [constructor](SurveyResponseDetail.md#constructor)

### Properties

- [createdBy](SurveyResponseDetail.md#createdby)
- [createdOn](SurveyResponseDetail.md#createdon)
- [extId](SurveyResponseDetail.md#extid)
- [extMetadata](SurveyResponseDetail.md#extmetadata)
- [id](SurveyResponseDetail.md#id)
- [modifiedBy](SurveyResponseDetail.md#modifiedby)
- [modifiedOn](SurveyResponseDetail.md#modifiedon)
- [optionId](SurveyResponseDetail.md#optionid)
- [questionId](SurveyResponseDetail.md#questionid)
- [responseType](SurveyResponseDetail.md#responsetype)
- [score](SurveyResponseDetail.md#score)
- [surveyResponseId](SurveyResponseDetail.md#surveyresponseid)
- [textAnswer](SurveyResponseDetail.md#textanswer)

## Constructors

### constructor

• **new SurveyResponseDetail**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\> |

#### Inherited from

UserModifiableEntity<SurveyResponseDetail\>.constructor

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

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L87)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L93)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L15)

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

### optionId

• **optionId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L81)

___

### questionId

• **questionId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L43)

___

### responseType

• **responseType**: [`QuestionType`](../enums/QuestionType.md)

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L62)

___

### score

• `Optional` **score**: `number`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L52)

___

### surveyResponseId

• **surveyResponseId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L29)

___

### textAnswer

• `Optional` **textAnswer**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response-detail.model.ts#L68)
