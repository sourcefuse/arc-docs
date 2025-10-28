[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionHelperService

# Class: QuestionHelperService

## Table of contents

### Constructors

- [constructor](QuestionHelperService.md#constructor)

### Properties

- [logger](QuestionHelperService.md#logger)
- [optionsRepository](QuestionHelperService.md#optionsrepository)
- [questionRepository](QuestionHelperService.md#questionrepository)
- [surveyQuestionRepository](QuestionHelperService.md#surveyquestionrepository)
- [surveyService](QuestionHelperService.md#surveyservice)
- [templateQuestionRepository](QuestionHelperService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](QuestionHelperService.md#_addleadingzero)
- [\_createDefaultOptions](QuestionHelperService.md#_createdefaultoptions)
- [\_createFollowupQuestion](QuestionHelperService.md#_createfollowupquestion)
- [\_deleteAllOptionsByQuestion](QuestionHelperService.md#_deletealloptionsbyquestion)
- [\_handleQuestionTypeChange](QuestionHelperService.md#_handlequestiontypechange)
- [checkAndGetIfAllowedQuestionToUpdate](QuestionHelperService.md#checkandgetifallowedquestiontoupdate)
- [checkIfAllowedToUpdate](QuestionHelperService.md#checkifallowedtoupdate)
- [checkIfUsedInTemplateOrSurvey](QuestionHelperService.md#checkifusedintemplateorsurvey)
- [createQuestion](QuestionHelperService.md#createquestion)
- [deleteQuestion](QuestionHelperService.md#deletequestion)
- [findQuestionWithOptions](QuestionHelperService.md#findquestionwithoptions)
- [generateQuestionUuid](QuestionHelperService.md#generatequestionuuid)
- [handleApprove](QuestionHelperService.md#handleapprove)
- [handleOnStatusChange](QuestionHelperService.md#handleonstatuschange)
- [updateAllChildStatus](QuestionHelperService.md#updateallchildstatus)
- [updateQuestion](QuestionHelperService.md#updatequestion)
- [validateParentQuestion](QuestionHelperService.md#validateparentquestion)

## Constructors

### constructor

• **new QuestionHelperService**(`questionRepository`, `optionsRepository`, `templateQuestionRepository`, `surveyQuestionRepository`, `surveyService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionRepository` | [`QuestionRepository`](QuestionRepository.md) |
| `optionsRepository` | [`OptionsRepository`](OptionsRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](TemplateQuestionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](SurveyQuestionRepository.md) |
| `surveyService` | [`SurveyService`](SurveyService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L21)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L32)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L25)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L23)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L29)

___

### surveyService

• **surveyService**: [`SurveyService`](SurveyService.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L31)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L27)

## Methods

### \_addLeadingZero

▸ **_addLeadingZero**(`number`, `size`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `number` | `number` |
| `size` | `number` |

#### Returns

`string`

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:169](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L169)

___

### \_createDefaultOptions

▸ **_createDefaultOptions**(`questionId`, `questionType`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `questionType` | [`QuestionType`](../enums/QuestionType.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:179](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L179)

___

### \_createFollowupQuestion

▸ **_createFollowupQuestion**(`question`, `optionId`): `Promise`<[`Question`](Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `question` | [`Question`](Question.md) |
| `optionId` | `string` |

#### Returns

`Promise`<[`Question`](Question.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L101)

___

### \_deleteAllOptionsByQuestion

▸ **_deleteAllOptionsByQuestion**(`question`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `question` | [`Question`](Question.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:238](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L238)

___

### \_handleQuestionTypeChange

▸ **_handleQuestionTypeChange**(`question`, `existingQuestion`, `questionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `question` | [`Question`](Question.md) |
| `existingQuestion` | [`Question`](Question.md) |
| `questionId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:305](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L305)

___

### checkAndGetIfAllowedQuestionToUpdate

▸ **checkAndGetIfAllowedQuestionToUpdate**(`questionId`, `question?`): `Promise`<{ `existingQuestion`: [`Question`](Question.md) & [`QuestionRelations`](../interfaces/QuestionRelations.md)  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `question?` | [`Question`](Question.md) |

#### Returns

`Promise`<{ `existingQuestion`: [`Question`](Question.md) & [`QuestionRelations`](../interfaces/QuestionRelations.md)  }\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:393](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L393)

___

### checkIfAllowedToUpdate

▸ **checkIfAllowedToUpdate**(`existingQuestion`, `updateQuestion?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `existingQuestion` | [`Question`](Question.md) |
| `updateQuestion?` | [`Question`](Question.md) |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:335](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L335)

___

### checkIfUsedInTemplateOrSurvey

▸ **checkIfUsedInTemplateOrSurvey**(`questionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:345](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L345)

___

### createQuestion

▸ **createQuestion**(`question`, `status?`): `Promise`<[`Question`](Question.md)\>

This function creates a new question with specified status and additional logic for handling
follow-up questions and default options.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `question` | [`QuestionDto`](QuestionDto.md) | `undefined` | The `createQuestion` function you provided is an asynchronous function that creates a new question based on the provided `QuestionDto` object and a default status of `QuestionStatus.DRAFT`. Here's a breakdown of the function: |
| `status` | `string` | `QuestionStatus.DRAFT` | The `status` parameter in the `createQuestion` function is used to specify the status of the question being created. By default, if no status is provided, the question will be set to `QuestionStatus.DRAFT`. However, you can override this default value by providing a different status when calling |

#### Returns

`Promise`<[`Question`](Question.md)\>

The `createQuestion` function returns a `Promise` that resolves to a `Question` object.

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L47)

___

### deleteQuestion

▸ **deleteQuestion**(`id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:208](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L208)

___

### findQuestionWithOptions

▸ **findQuestionWithOptions**(`questionId`): `Promise`<[`Question`](Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |

#### Returns

`Promise`<[`Question`](Question.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:246](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L246)

___

### generateQuestionUuid

▸ **generateQuestionUuid**(`questionId?`): `Promise`<`string`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId?` | `string` |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L146)

___

### handleApprove

▸ **handleApprove**(`id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:322](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L322)

___

### handleOnStatusChange

▸ **handleOnStatusChange**(`id`, `updateQuestion`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `updateQuestion` | [`Question`](Question.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:364](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L364)

___

### updateAllChildStatus

▸ **updateAllChildStatus**(`id`, `status`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `status` | [`QuestionStatus`](../enums/QuestionStatus.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:326](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L326)

___

### updateQuestion

▸ **updateQuestion**(`questionId`, `question`): `Promise`<[`Question`](Question.md) & [`QuestionRelations`](../interfaces/QuestionRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `question` | [`Question`](Question.md) |

#### Returns

`Promise`<[`Question`](Question.md) & [`QuestionRelations`](../interfaces/QuestionRelations.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:265](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L265)

___

### validateParentQuestion

▸ **validateParentQuestion**(`parentQuestionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `parentQuestionId` | `undefined` \| `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:372](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/question-helper.service.ts#L372)
