[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyResponseDetail

# Class: SurveyResponseDetail

[index](../modules/index.md).SurveyResponseDetail

## Hierarchy

- `UserModifiableEntity`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\>

  ↳ **`SurveyResponseDetail`**

## Table of contents

### Constructors

- [constructor](index.SurveyResponseDetail.md#constructor)

### Properties

- [createdBy](index.SurveyResponseDetail.md#createdby)
- [createdOn](index.SurveyResponseDetail.md#createdon)
- [extId](index.SurveyResponseDetail.md#extid)
- [extMetadata](index.SurveyResponseDetail.md#extmetadata)
- [id](index.SurveyResponseDetail.md#id)
- [modifiedBy](index.SurveyResponseDetail.md#modifiedby)
- [modifiedOn](index.SurveyResponseDetail.md#modifiedon)
- [optionId](index.SurveyResponseDetail.md#optionid)
- [questionId](index.SurveyResponseDetail.md#questionid)
- [responseType](index.SurveyResponseDetail.md#responsetype)
- [score](index.SurveyResponseDetail.md#score)
- [surveyResponseId](index.SurveyResponseDetail.md#surveyresponseid)
- [textAnswer](index.SurveyResponseDetail.md#textanswer)

## Constructors

### constructor

• **new SurveyResponseDetail**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\> |

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

[services/survey-service/src/models/survey-response-detail.model.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L87)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L93)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L15)

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

[services/survey-service/src/models/survey-response-detail.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L81)

___

### questionId

• **questionId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L43)

___

### responseType

• **responseType**: [`QuestionType`](../enums/index.QuestionType.md)

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L62)

___

### score

• `Optional` **score**: `number`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L52)

___

### surveyResponseId

• **surveyResponseId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L29)

___

### textAnswer

• `Optional` **textAnswer**: `string`

#### Defined in

[services/survey-service/src/models/survey-response-detail.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response-detail.model.ts#L68)
