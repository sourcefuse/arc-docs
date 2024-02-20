[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionDuplicateHelperService

# Class: QuestionDuplicateHelperService

## Table of contents

### Constructors

- [constructor](QuestionDuplicateHelperService.md#constructor)

### Properties

- [logger](QuestionDuplicateHelperService.md#logger)
- [optionsRepository](QuestionDuplicateHelperService.md#optionsrepository)
- [questionHelperService](QuestionDuplicateHelperService.md#questionhelperservice)
- [questionIdsUsed](QuestionDuplicateHelperService.md#questionidsused)
- [questionRepository](QuestionDuplicateHelperService.md#questionrepository)

### Methods

- [checkIfQuestionCanBeDuplicated](QuestionDuplicateHelperService.md#checkifquestioncanbeduplicated)
- [duplicateQuestion](QuestionDuplicateHelperService.md#duplicatequestion)
- [duplicateScaleOrTextFollowUpQuestion](QuestionDuplicateHelperService.md#duplicatescaleortextfollowupquestion)
- [getQuestionId](QuestionDuplicateHelperService.md#getquestionid)
- [inheritOptions](QuestionDuplicateHelperService.md#inheritoptions)

## Constructors

### constructor

• **new QuestionDuplicateHelperService**(`questionRepository`, `optionsRepository`, `questionHelperService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionRepository` | [`QuestionRepository`](QuestionRepository.md) |
| `optionsRepository` | [`OptionsRepository`](OptionsRepository.md) |
| `questionHelperService` | [`QuestionHelperService`](QuestionHelperService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L15)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L22)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L19)

___

### questionHelperService

• **questionHelperService**: [`QuestionHelperService`](QuestionHelperService.md)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L21)

___

### questionIdsUsed

• **questionIdsUsed**: `string`[] = `[]`

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L25)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L17)

## Methods

### checkIfQuestionCanBeDuplicated

▸ **checkIfQuestionCanBeDuplicated**(`masterQuestion`, `surveyId?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `masterQuestion` | [`Question`](Question.md) |
| `surveyId?` | `string` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L92)

___

### duplicateQuestion

▸ **duplicateQuestion**(`questionId`, `body?`, `parentQuestionId?`, `rootQuestionId?`, `surveyId?`): `Promise`<[`Question`](Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `body?` | [`QuestionDuplicateDto`](QuestionDuplicateDto.md) |
| `parentQuestionId?` | `string` |
| `rootQuestionId?` | `string` |
| `surveyId?` | `string` |

#### Returns

`Promise`<[`Question`](Question.md)\>

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L27)

___

### duplicateScaleOrTextFollowUpQuestion

▸ **duplicateScaleOrTextFollowUpQuestion**(`questionId?`, `masterQuestionId?`, `body?`, `rootQuestionId?`, `surveyId?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId?` | `string` |
| `masterQuestionId?` | `string` |
| `body?` | [`QuestionDuplicateDto`](QuestionDuplicateDto.md) |
| `rootQuestionId?` | `string` |
| `surveyId?` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L104)

___

### getQuestionId

▸ **getQuestionId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:191](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L191)

___

### inheritOptions

▸ **inheritOptions**(`parentQuestionId`, `questionId`, `rootQuestionId?`, `body?`, `surveyId?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `parentQuestionId` | `string` |
| `questionId` | `string` |
| `rootQuestionId?` | `string` |
| `body?` | [`QuestionDuplicateDto`](QuestionDuplicateDto.md) |
| `surveyId?` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-duplicate-helper.service.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-duplicate-helper.service.ts#L132)
