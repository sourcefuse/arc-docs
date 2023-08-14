[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / QuestionHelperService

# Class: QuestionHelperService

[index](../modules/index.md).QuestionHelperService

## Hierarchy

- **`QuestionHelperService`**

  ↳ [`QuestionHelperService`](sequelize_index.QuestionHelperService.md)

## Table of contents

### Constructors

- [constructor](index.QuestionHelperService.md#constructor)

### Properties

- [logger](index.QuestionHelperService.md#logger)
- [optionsRepository](index.QuestionHelperService.md#optionsrepository)
- [questionRepository](index.QuestionHelperService.md#questionrepository)
- [surveyQuestionRepository](index.QuestionHelperService.md#surveyquestionrepository)
- [surveyService](index.QuestionHelperService.md#surveyservice)
- [templateQuestionRepository](index.QuestionHelperService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](index.QuestionHelperService.md#_addleadingzero)
- [\_createDefaultOptions](index.QuestionHelperService.md#_createdefaultoptions)
- [\_createFollowupQuestion](index.QuestionHelperService.md#_createfollowupquestion)
- [\_deleteAllOptionsByQuestion](index.QuestionHelperService.md#_deletealloptionsbyquestion)
- [\_handleQuestionTypeChange](index.QuestionHelperService.md#_handlequestiontypechange)
- [checkAndGetIfAllowedQuestionToUpdate](index.QuestionHelperService.md#checkandgetifallowedquestiontoupdate)
- [checkIfAllowedToUpdate](index.QuestionHelperService.md#checkifallowedtoupdate)
- [checkIfUsedInTemplateOrSurvey](index.QuestionHelperService.md#checkifusedintemplateorsurvey)
- [createQuestion](index.QuestionHelperService.md#createquestion)
- [deleteQuestion](index.QuestionHelperService.md#deletequestion)
- [findQuestionWithOptions](index.QuestionHelperService.md#findquestionwithoptions)
- [generateQuestionUuid](index.QuestionHelperService.md#generatequestionuuid)
- [handleApprove](index.QuestionHelperService.md#handleapprove)
- [handleOnStatusChange](index.QuestionHelperService.md#handleonstatuschange)
- [updateAllChildStatus](index.QuestionHelperService.md#updateallchildstatus)
- [updateQuestion](index.QuestionHelperService.md#updatequestion)
- [validateParentQuestion](index.QuestionHelperService.md#validateparentquestion)

## Constructors

### constructor

• **new QuestionHelperService**(`questionRepository`, `optionsRepository`, `templateQuestionRepository`, `surveyQuestionRepository`, `surveyService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionRepository` | [`QuestionRepository`](index.QuestionRepository.md) \| [`QuestionRepository`](sequelize_index.QuestionRepository.md) |
| `optionsRepository` | [`OptionsRepository`](index.OptionsRepository.md) \| [`OptionsRepository`](sequelize_index.OptionsRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](index.TemplateQuestionRepository.md) \| [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `surveyService` | [`SurveyService`](index.SurveyService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L27)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L42)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](index.OptionsRepository.md) \| [`OptionsRepository`](sequelize_index.OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L31)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](index.QuestionRepository.md) \| [`QuestionRepository`](sequelize_index.QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L29)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L37)

___

### surveyService

• **surveyService**: [`SurveyService`](index.SurveyService.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L41)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](index.TemplateQuestionRepository.md) \| [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L33)

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

[services/survey-service/src/services/question-helper.service.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L170)

___

### \_createDefaultOptions

▸ **_createDefaultOptions**(`questionId`, `questionType`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `questionType` | [`QuestionType`](../enums/index.QuestionType.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:180](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L180)

___

### \_createFollowupQuestion

▸ **_createFollowupQuestion**(`question`, `optionId`): `Promise`<[`Question`](index.Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `question` | [`Question`](index.Question.md) |
| `optionId` | `string` |

#### Returns

`Promise`<[`Question`](index.Question.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L102)

___

### \_deleteAllOptionsByQuestion

▸ **_deleteAllOptionsByQuestion**(`question`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `question` | [`Question`](index.Question.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:239](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L239)

___

### \_handleQuestionTypeChange

▸ **_handleQuestionTypeChange**(`question`, `existingQuestion`, `questionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `question` | [`Question`](index.Question.md) |
| `existingQuestion` | [`Question`](index.Question.md) |
| `questionId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:306](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L306)

___

### checkAndGetIfAllowedQuestionToUpdate

▸ **checkAndGetIfAllowedQuestionToUpdate**(`questionId`, `question?`): `Promise`<{ `existingQuestion`: [`Question`](index.Question.md) & [`QuestionRelations`](../interfaces/index.QuestionRelations.md)  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `question?` | [`Question`](index.Question.md) |

#### Returns

`Promise`<{ `existingQuestion`: [`Question`](index.Question.md) & [`QuestionRelations`](../interfaces/index.QuestionRelations.md)  }\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:395](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L395)

___

### checkIfAllowedToUpdate

▸ **checkIfAllowedToUpdate**(`existingQuestion`, `updateQuestion?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `existingQuestion` | [`Question`](index.Question.md) |
| `updateQuestion?` | [`Question`](index.Question.md) |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:336](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L336)

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

[services/survey-service/src/services/question-helper.service.ts:346](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L346)

___

### createQuestion

▸ **createQuestion**(`question`, `status?`): `Promise`<[`Question`](index.Question.md)\>

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `question` | [`QuestionDto`](index.QuestionDto.md) | `undefined` |
| `status` | `string` | `QuestionStatus.DRAFT` |

#### Returns

`Promise`<[`Question`](index.Question.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L45)

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

[services/survey-service/src/services/question-helper.service.ts:209](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L209)

___

### findQuestionWithOptions

▸ **findQuestionWithOptions**(`questionId`): `Promise`<[`Question`](index.Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |

#### Returns

`Promise`<[`Question`](index.Question.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:247](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L247)

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

[services/survey-service/src/services/question-helper.service.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L147)

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

[services/survey-service/src/services/question-helper.service.ts:323](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L323)

___

### handleOnStatusChange

▸ **handleOnStatusChange**(`id`, `updateQuestion`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `updateQuestion` | [`Question`](index.Question.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:365](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L365)

___

### updateAllChildStatus

▸ **updateAllChildStatus**(`id`, `status`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `status` | [`QuestionStatus`](../enums/index.QuestionStatus.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:327](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L327)

___

### updateQuestion

▸ **updateQuestion**(`questionId`, `question`): `Promise`<[`Question`](index.Question.md) & [`QuestionRelations`](../interfaces/index.QuestionRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |
| `question` | [`Question`](index.Question.md) |

#### Returns

`Promise`<[`Question`](index.Question.md) & [`QuestionRelations`](../interfaces/index.QuestionRelations.md)\>

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:266](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L266)

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

[services/survey-service/src/services/question-helper.service.ts:373](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L373)
