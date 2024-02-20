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

[services/survey-service/src/services/question-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L21)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L32)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L25)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L23)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L29)

___

### surveyService

• **surveyService**: [`SurveyService`](SurveyService.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L31)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L27)

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

[services/survey-service/src/services/question-helper.service.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L160)

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

[services/survey-service/src/services/question-helper.service.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L170)

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

[services/survey-service/src/services/question-helper.service.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L92)

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

[services/survey-service/src/services/question-helper.service.ts:229](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L229)

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

[services/survey-service/src/services/question-helper.service.ts:296](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L296)

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

[services/survey-service/src/services/question-helper.service.ts:384](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L384)

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

[services/survey-service/src/services/question-helper.service.ts:326](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L326)

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

[services/survey-service/src/services/question-helper.service.ts:336](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L336)

___

### createQuestion

▸ **createQuestion**(`question`, `status?`): `Promise`<[`Question`](Question.md)\>

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `question` | [`QuestionDto`](QuestionDto.md) | `undefined` |
| `status` | `string` | `QuestionStatus.DRAFT` |

#### Returns

`Promise`<[`Question`](Question.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L35)

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

[services/survey-service/src/services/question-helper.service.ts:199](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L199)

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

[services/survey-service/src/services/question-helper.service.ts:237](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L237)

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

[services/survey-service/src/services/question-helper.service.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L137)

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

[services/survey-service/src/services/question-helper.service.ts:313](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L313)

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

[services/survey-service/src/services/question-helper.service.ts:355](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L355)

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

[services/survey-service/src/services/question-helper.service.ts:317](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L317)

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

[services/survey-service/src/services/question-helper.service.ts:256](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L256)

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

[services/survey-service/src/services/question-helper.service.ts:363](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-helper.service.ts#L363)
