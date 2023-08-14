[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / QuestionHelperService

# Class: QuestionHelperService

[sequelize.index](../modules/sequelize_index.md).QuestionHelperService

## Hierarchy

- [`QuestionHelperService`](index.QuestionHelperService.md)

  ↳ **`QuestionHelperService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.QuestionHelperService.md#constructor)

### Properties

- [logger](sequelize_index.QuestionHelperService.md#logger)
- [optionsRepository](sequelize_index.QuestionHelperService.md#optionsrepository)
- [questionRepository](sequelize_index.QuestionHelperService.md#questionrepository)
- [surveyQuestionRepository](sequelize_index.QuestionHelperService.md#surveyquestionrepository)
- [surveyService](sequelize_index.QuestionHelperService.md#surveyservice)
- [templateQuestionRepository](sequelize_index.QuestionHelperService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](sequelize_index.QuestionHelperService.md#_addleadingzero)
- [\_createDefaultOptions](sequelize_index.QuestionHelperService.md#_createdefaultoptions)
- [\_createFollowupQuestion](sequelize_index.QuestionHelperService.md#_createfollowupquestion)
- [\_deleteAllOptionsByQuestion](sequelize_index.QuestionHelperService.md#_deletealloptionsbyquestion)
- [\_handleQuestionTypeChange](sequelize_index.QuestionHelperService.md#_handlequestiontypechange)
- [checkAndGetIfAllowedQuestionToUpdate](sequelize_index.QuestionHelperService.md#checkandgetifallowedquestiontoupdate)
- [checkIfAllowedToUpdate](sequelize_index.QuestionHelperService.md#checkifallowedtoupdate)
- [checkIfUsedInTemplateOrSurvey](sequelize_index.QuestionHelperService.md#checkifusedintemplateorsurvey)
- [createQuestion](sequelize_index.QuestionHelperService.md#createquestion)
- [deleteQuestion](sequelize_index.QuestionHelperService.md#deletequestion)
- [findQuestionWithOptions](sequelize_index.QuestionHelperService.md#findquestionwithoptions)
- [generateQuestionUuid](sequelize_index.QuestionHelperService.md#generatequestionuuid)
- [handleApprove](sequelize_index.QuestionHelperService.md#handleapprove)
- [handleOnStatusChange](sequelize_index.QuestionHelperService.md#handleonstatuschange)
- [updateAllChildStatus](sequelize_index.QuestionHelperService.md#updateallchildstatus)
- [updateQuestion](sequelize_index.QuestionHelperService.md#updatequestion)
- [validateParentQuestion](sequelize_index.QuestionHelperService.md#validateparentquestion)

## Constructors

### constructor

• **new QuestionHelperService**(`questionRepository`, `optionsRepository`, `templateQuestionRepository`, `surveyQuestionRepository`, `surveyService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionRepository` | [`QuestionRepository`](sequelize_index.QuestionRepository.md) |
| `optionsRepository` | [`OptionsRepository`](sequelize_index.OptionsRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `surveyService` | [`SurveyService`](sequelize_index.SurveyService.md) |
| `logger` | `ILogger` |

#### Overrides

[QuestionHelperService](index.QuestionHelperService.md).[constructor](index.QuestionHelperService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L16)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[logger](index.QuestionHelperService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L27)

___

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](sequelize_index.OptionsRepository.md)

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[optionsRepository](index.QuestionHelperService.md#optionsrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L20)

___

### questionRepository

• **questionRepository**: [`QuestionRepository`](sequelize_index.QuestionRepository.md)

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[questionRepository](index.QuestionHelperService.md#questionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L18)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[surveyQuestionRepository](index.QuestionHelperService.md#surveyquestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L24)

___

### surveyService

• **surveyService**: [`SurveyService`](sequelize_index.SurveyService.md)

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[surveyService](index.QuestionHelperService.md#surveyservice)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L26)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md)

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[templateQuestionRepository](index.QuestionHelperService.md#templatequestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-helper.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-helper.service.ts#L22)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[_addLeadingZero](index.QuestionHelperService.md#_addleadingzero)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[_createDefaultOptions](index.QuestionHelperService.md#_createdefaultoptions)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[_createFollowupQuestion](index.QuestionHelperService.md#_createfollowupquestion)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[_deleteAllOptionsByQuestion](index.QuestionHelperService.md#_deletealloptionsbyquestion)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[_handleQuestionTypeChange](index.QuestionHelperService.md#_handlequestiontypechange)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[checkAndGetIfAllowedQuestionToUpdate](index.QuestionHelperService.md#checkandgetifallowedquestiontoupdate)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[checkIfAllowedToUpdate](index.QuestionHelperService.md#checkifallowedtoupdate)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[checkIfUsedInTemplateOrSurvey](index.QuestionHelperService.md#checkifusedintemplateorsurvey)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[createQuestion](index.QuestionHelperService.md#createquestion)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[deleteQuestion](index.QuestionHelperService.md#deletequestion)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[findQuestionWithOptions](index.QuestionHelperService.md#findquestionwithoptions)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[generateQuestionUuid](index.QuestionHelperService.md#generatequestionuuid)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[handleApprove](index.QuestionHelperService.md#handleapprove)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[handleOnStatusChange](index.QuestionHelperService.md#handleonstatuschange)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[updateAllChildStatus](index.QuestionHelperService.md#updateallchildstatus)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[updateQuestion](index.QuestionHelperService.md#updatequestion)

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

#### Inherited from

[QuestionHelperService](index.QuestionHelperService.md).[validateParentQuestion](index.QuestionHelperService.md#validateparentquestion)

#### Defined in

[services/survey-service/src/services/question-helper.service.ts:373](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-helper.service.ts#L373)
