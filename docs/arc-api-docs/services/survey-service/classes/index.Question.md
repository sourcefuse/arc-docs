[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / Question

# Class: Question

[index](../modules/index.md).Question

## Hierarchy

- `UserModifiableEntity`<[`Question`](index.Question.md)\>

  ↳ **`Question`**

## Table of contents

### Constructors

- [constructor](index.Question.md#constructor)

### Properties

- [createdBy](index.Question.md#createdby)
- [createdByName](index.Question.md#createdbyname)
- [createdOn](index.Question.md#createdon)
- [extId](index.Question.md#extid)
- [extMetadata](index.Question.md#extmetadata)
- [followUpQuestions](index.Question.md#followupquestions)
- [id](index.Question.md#id)
- [isFollowupEnabled](index.Question.md#isfollowupenabled)
- [isScoreEnabled](index.Question.md#isscoreenabled)
- [modifiedBy](index.Question.md#modifiedby)
- [modifiedByName](index.Question.md#modifiedbyname)
- [modifiedOn](index.Question.md#modifiedon)
- [name](index.Question.md#name)
- [options](index.Question.md#options)
- [parentQuestionId](index.Question.md#parentquestionid)
- [questionType](index.Question.md#questiontype)
- [rootQuestionId](index.Question.md#rootquestionid)
- [status](index.Question.md#status)
- [surveyId](index.Question.md#surveyid)
- [surveyResponseDetail](index.Question.md#surveyresponsedetail)
- [uid](index.Question.md#uid)
- [validation](index.Question.md#validation)

## Constructors

### constructor

• **new Question**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Question`](index.Question.md)\> |

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

[services/survey-service/src/models/questions.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L118)

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

[services/survey-service/src/models/questions.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L59)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/questions.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L65)

___

### followUpQuestions

• **followUpQuestions**: [`Question`](index.Question.md)[]

#### Defined in

[services/survey-service/src/models/questions.model.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L116)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L22)

___

### isFollowupEnabled

• `Optional` **isFollowupEnabled**: `boolean`

#### Defined in

[services/survey-service/src/models/questions.model.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L79)

___

### isScoreEnabled

• `Optional` **isScoreEnabled**: `boolean`

#### Defined in

[services/survey-service/src/models/questions.model.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L72)

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

[services/survey-service/src/models/questions.model.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L119)

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

[services/survey-service/src/models/questions.model.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L37)

___

### options

• **options**: [`Options`](index.Options.md)[]

#### Defined in

[services/survey-service/src/models/questions.model.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L113)

___

### parentQuestionId

• `Optional` **parentQuestionId**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L110)

___

### questionType

• **questionType**: [`QuestionType`](../enums/index.QuestionType.md)

#### Defined in

[services/survey-service/src/models/questions.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L53)

___

### rootQuestionId

• `Optional` **rootQuestionId**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L96)

___

### status

• **status**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L43)

___

### surveyId

• **surveyId**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L134)

___

### surveyResponseDetail

• `Optional` **surveyResponseDetail**: [`SurveyResponseDetail`](index.SurveyResponseDetail.md)

#### Defined in

[services/survey-service/src/models/questions.model.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L121)

___

### uid

• **uid**: `string`

#### Defined in

[services/survey-service/src/models/questions.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L29)

___

### validation

• `Optional` **validation**: `object`

#### Defined in

[services/survey-service/src/models/questions.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L84)
