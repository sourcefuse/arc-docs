[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / QuestionDuplicateHelperService

# Class: QuestionDuplicateHelperService

[sequelize.index](../modules/sequelize_index.md).QuestionDuplicateHelperService

## Hierarchy

- [`QuestionDuplicateHelperService`](index.QuestionDuplicateHelperService.md)

  ↳ **`QuestionDuplicateHelperService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.QuestionDuplicateHelperService.md#constructor)

### Properties

- [logger](sequelize_index.QuestionDuplicateHelperService.md#logger)
- [optionsRepository](sequelize_index.QuestionDuplicateHelperService.md#optionsrepository)
- [questionHelperService](sequelize_index.QuestionDuplicateHelperService.md#questionhelperservice)
- [questionIdsUsed](sequelize_index.QuestionDuplicateHelperService.md#questionidsused)
- [questionRepository](sequelize_index.QuestionDuplicateHelperService.md#questionrepository)

### Methods

- [checkIfQuestionCanBeDuplicated](sequelize_index.QuestionDuplicateHelperService.md#checkifquestioncanbeduplicated)
- [duplicateQuestion](sequelize_index.QuestionDuplicateHelperService.md#duplicatequestion)
- [duplicateScaleOrTextFollowUpQuestion](sequelize_index.QuestionDuplicateHelperService.md#duplicatescaleortextfollowupquestion)
- [getQuestionId](sequelize_index.QuestionDuplicateHelperService.md#getquestionid)
- [inheritOptions](sequelize_index.QuestionDuplicateHelperService.md#inheritoptions)

## Constructors

### constructor

• **new QuestionDuplicateHelperService**(`questionRepository`, `optionsRepository`, `questionHelperService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionRepository` | [`QuestionRepository`](sequelize_index.QuestionRepository.md) |
| `optionsRepository` | [`OptionsRepository`](sequelize_index.OptionsRepository.md) |
| `questionHelperService` | [`QuestionHelperService`](sequelize_index.QuestionHelperService.md) |
| `logger` | `ILogger` |

#### Overrides

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[constructor](index.QuestionDuplicateHelperService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts#L14)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[logger](index.QuestionDuplicateHelperService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts#L21)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](sequelize_index.OptionsRepository.md)

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[optionsRepository](index.QuestionDuplicateHelperService.md#optionsrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts#L18)

___

### questionHelperService

• **questionHelperService**: [`QuestionHelperService`](sequelize_index.QuestionHelperService.md)

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[questionHelperService](index.QuestionDuplicateHelperService.md#questionhelperservice)

#### Defined in

[services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts#L20)

___

### questionIdsUsed

• **questionIdsUsed**: `string`[] = `[]`

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[questionIdsUsed](index.QuestionDuplicateHelperService.md#questionidsused)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L29)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](sequelize_index.QuestionRepository.md)

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[questionRepository](index.QuestionDuplicateHelperService.md#questionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-duplicate-helper.service.ts#L16)

## Methods

### checkIfQuestionCanBeDuplicated

▸ **checkIfQuestionCanBeDuplicated**(`masterQuestion`, `surveyId?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `masterQuestion` | [`Question`](index.Question.md) |
| `surveyId?` | `string` |

#### Returns

`void`

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[checkIfQuestionCanBeDuplicated](index.QuestionDuplicateHelperService.md#checkifquestioncanbeduplicated)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:96](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L96)

___

### duplicateQuestion

▸ **duplicateQuestion**(`questionId`, `body?`, `parentQuestionId?`, `rootQuestionId?`, `surveyId?`): `Promise`<[`Question`](index.Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `body?` | [`QuestionDuplicateDto`](index.QuestionDuplicateDto.md) |
| `parentQuestionId?` | `string` |
| `rootQuestionId?` | `string` |
| `surveyId?` | `string` |

#### Returns

`Promise`<[`Question`](index.Question.md)\>

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[duplicateQuestion](index.QuestionDuplicateHelperService.md#duplicatequestion)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L31)

___

### duplicateScaleOrTextFollowUpQuestion

▸ **duplicateScaleOrTextFollowUpQuestion**(`questionId?`, `masterQuestionId?`, `body?`, `rootQuestionId?`, `surveyId?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId?` | `string` |
| `masterQuestionId?` | `string` |
| `body?` | [`QuestionDuplicateDto`](index.QuestionDuplicateDto.md) |
| `rootQuestionId?` | `string` |
| `surveyId?` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[duplicateScaleOrTextFollowUpQuestion](index.QuestionDuplicateHelperService.md#duplicatescaleortextfollowupquestion)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L108)

___

### getQuestionId

▸ **getQuestionId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[getQuestionId](index.QuestionDuplicateHelperService.md#getquestionid)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:195](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L195)

___

### inheritOptions

▸ **inheritOptions**(`parentQuestionId`, `questionId`, `rootQuestionId?`, `body?`, `surveyId?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `parentQuestionId` | `string` |
| `questionId` | `string` |
| `rootQuestionId?` | `string` |
| `body?` | [`QuestionDuplicateDto`](index.QuestionDuplicateDto.md) |
| `surveyId?` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionDuplicateHelperService](index.QuestionDuplicateHelperService.md).[inheritOptions](index.QuestionDuplicateHelperService.md#inheritoptions)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L136)
