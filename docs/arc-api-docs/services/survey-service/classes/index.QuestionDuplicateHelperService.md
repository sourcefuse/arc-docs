[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / QuestionDuplicateHelperService

# Class: QuestionDuplicateHelperService

[index](../modules/index.md).QuestionDuplicateHelperService

## Hierarchy

- **`QuestionDuplicateHelperService`**

  ↳ [`QuestionDuplicateHelperService`](sequelize_index.QuestionDuplicateHelperService.md)

## Table of contents

### Constructors

- [constructor](index.QuestionDuplicateHelperService.md#constructor)

### Properties

- [logger](index.QuestionDuplicateHelperService.md#logger)
- [optionsRepository](index.QuestionDuplicateHelperService.md#optionsrepository)
- [questionHelperService](index.QuestionDuplicateHelperService.md#questionhelperservice)
- [questionIdsUsed](index.QuestionDuplicateHelperService.md#questionidsused)
- [questionRepository](index.QuestionDuplicateHelperService.md#questionrepository)

### Methods

- [checkIfQuestionCanBeDuplicated](index.QuestionDuplicateHelperService.md#checkifquestioncanbeduplicated)
- [duplicateQuestion](index.QuestionDuplicateHelperService.md#duplicatequestion)
- [duplicateScaleOrTextFollowUpQuestion](index.QuestionDuplicateHelperService.md#duplicatescaleortextfollowupquestion)
- [getQuestionId](index.QuestionDuplicateHelperService.md#getquestionid)
- [inheritOptions](index.QuestionDuplicateHelperService.md#inheritoptions)

## Constructors

### constructor

• **new QuestionDuplicateHelperService**(`questionRepository`, `optionsRepository`, `questionHelperService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionRepository` | [`QuestionRepository`](index.QuestionRepository.md) \| [`QuestionRepository`](sequelize_index.QuestionRepository.md) |
| `optionsRepository` | [`OptionsRepository`](index.OptionsRepository.md) \| [`OptionsRepository`](sequelize_index.OptionsRepository.md) |
| `questionHelperService` | [`QuestionHelperService`](index.QuestionHelperService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L19)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L26)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](index.OptionsRepository.md) \| [`OptionsRepository`](sequelize_index.OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L23)

___

### questionHelperService

• **questionHelperService**: [`QuestionHelperService`](index.QuestionHelperService.md)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L25)

___

### questionIdsUsed

• **questionIdsUsed**: `string`[] = `[]`

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L29)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](index.QuestionRepository.md) \| [`QuestionRepository`](sequelize_index.QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L21)

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

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L108)

___

### getQuestionId

▸ **getQuestionId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

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

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-duplicate-helper.service.ts#L136)
