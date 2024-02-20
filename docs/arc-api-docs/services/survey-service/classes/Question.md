[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / Question

# Class: Question

## Hierarchy

- `UserModifiableEntity`<[`Question`](Question.md)\>

  ↳ **`Question`**

## Table of contents

### Constructors

- [constructor](Question.md#constructor)

### Properties

- [createdBy](Question.md#createdby)
- [createdByName](Question.md#createdbyname)
- [createdOn](Question.md#createdon)
- [extId](Question.md#extid)
- [extMetadata](Question.md#extmetadata)
- [followUpQuestions](Question.md#followupquestions)
- [id](Question.md#id)
- [isFollowupEnabled](Question.md#isfollowupenabled)
- [isScoreEnabled](Question.md#isscoreenabled)
- [modifiedBy](Question.md#modifiedby)
- [modifiedByName](Question.md#modifiedbyname)
- [modifiedOn](Question.md#modifiedon)
- [name](Question.md#name)
- [options](Question.md#options)
- [parentQuestionId](Question.md#parentquestionid)
- [questionType](Question.md#questiontype)
- [rootQuestionId](Question.md#rootquestionid)
- [status](Question.md#status)
- [surveyId](Question.md#surveyid)
- [surveyResponseDetail](Question.md#surveyresponsedetail)
- [uid](Question.md#uid)
- [validation](Question.md#validation)

## Constructors

### constructor

• **new Question**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Question`](Question.md)\> |

#### Inherited from

UserModifiableEntity<Question\>.constructor

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

### createdByName

• `Optional` **createdByName**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L118)

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

[services/survey-service/src/models/questions.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L59)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/questions.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L65)

___

### followUpQuestions

• **followUpQuestions**: [`Question`](Question.md)[]

#### Defined in

[services/survey-service/src/models/questions.model.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L116)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L22)

___

### isFollowupEnabled

• `Optional` **isFollowupEnabled**: `boolean`

#### Defined in

[services/survey-service/src/models/questions.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L79)

___

### isScoreEnabled

• `Optional` **isScoreEnabled**: `boolean`

#### Defined in

[services/survey-service/src/models/questions.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L72)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByName

• `Optional` **modifiedByName**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L119)

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

[services/survey-service/src/models/questions.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L37)

___

### options

• **options**: [`Options`](Options.md)[]

#### Defined in

[services/survey-service/src/models/questions.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L113)

___

### parentQuestionId

• `Optional` **parentQuestionId**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L110)

___

### questionType

• **questionType**: [`QuestionType`](../enums/QuestionType.md)

#### Defined in

[services/survey-service/src/models/questions.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L53)

___

### rootQuestionId

• `Optional` **rootQuestionId**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L96)

___

### status

• **status**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L43)

___

### surveyId

• **surveyId**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L134)

___

### surveyResponseDetail

• `Optional` **surveyResponseDetail**: [`SurveyResponseDetail`](SurveyResponseDetail.md)

#### Defined in

[services/survey-service/src/models/questions.model.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L121)

___

### uid

• **uid**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L29)

___

### validation

• `Optional` **validation**: `object`

#### Defined in

[services/survey-service/src/models/questions.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L84)
