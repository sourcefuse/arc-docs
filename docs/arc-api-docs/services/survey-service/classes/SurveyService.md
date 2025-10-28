[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyService

# Class: SurveyService

## Table of contents

### Constructors

- [constructor](SurveyService.md#constructor)

### Properties

- [createSurveyHelperService](SurveyService.md#createsurveyhelperservice)
- [logger](SurveyService.md#logger)
- [questionRepository](SurveyService.md#questionrepository)
- [questionTemplateRepository](SurveyService.md#questiontemplaterepository)
- [surveyCycleRepository](SurveyService.md#surveycyclerepository)
- [surveyCycleService](SurveyService.md#surveycycleservice)
- [surveyQuestionRepository](SurveyService.md#surveyquestionrepository)
- [surveyRepository](SurveyService.md#surveyrepository)
- [surveyResponderRepository](SurveyService.md#surveyresponderrepository)
- [templateQuestionRepository](SurveyService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](SurveyService.md#_addleadingzero)
- [\_checkBasicSurveyValidations](SurveyService.md#_checkbasicsurveyvalidations)
- [\_checkDateValidationForPatchCase](SurveyService.md#_checkdatevalidationforpatchcase)
- [\_checkSurveyDateValidations](SurveyService.md#_checksurveydatevalidations)
- [\_createQuestionsFromTemplate](SurveyService.md#_createquestionsfromtemplate)
- [\_duplicateSurveyDetails](SurveyService.md#_duplicatesurveydetails)
- [\_processSurveyText](SurveyService.md#_processsurveytext)
- [\_setWeightFlagIfRequired](SurveyService.md#_setweightflagifrequired)
- [approveSurveyQuestions](SurveyService.md#approvesurveyquestions)
- [checkDeleteValidation](SurveyService.md#checkdeletevalidation)
- [checkIfAllowedToUpdateSurvey](SurveyService.md#checkifallowedtoupdatesurvey)
- [checkPastDateValidation](SurveyService.md#checkpastdatevalidation)
- [createSurvey](SurveyService.md#createsurvey)
- [deleteRelatedObjects](SurveyService.md#deleterelatedobjects)
- [generateSurveyId](SurveyService.md#generatesurveyid)
- [getHtmlTextContent](SurveyService.md#gethtmltextcontent)
- [handleSurveyApprove](SurveyService.md#handlesurveyapprove)
- [handleSurveyStatus](SurveyService.md#handlesurveystatus)
- [handleSurveyStatusApprove](SurveyService.md#handlesurveystatusapprove)
- [updateModifiedByAndOn](SurveyService.md#updatemodifiedbyandon)
- [updateSurvey](SurveyService.md#updatesurvey)
- [validateActivationWithoutDates](SurveyService.md#validateactivationwithoutdates)
- [validateAndGetSurvey](SurveyService.md#validateandgetsurvey)
- [validateDraftWithStartDate](SurveyService.md#validatedraftwithstartdate)
- [validateEndDateAfterStartDate](SurveyService.md#validateenddateafterstartdate)
- [validateStartDateWithActiveStatus](SurveyService.md#validatestartdatewithactivestatus)
- [validateTitleLength](SurveyService.md#validatetitlelength)

## Constructors

### constructor

• **new SurveyService**(`surveyRepository`, `questionTemplateRepository`, `templateQuestionRepository`, `surveyQuestionRepository`, `surveyCycleRepository`, `surveyResponderRepository`, `questionRepository`, `surveyCycleService`, `createSurveyHelperService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](SurveyRepository.md) |
| `questionTemplateRepository` | [`QuestionTemplateRepository`](QuestionTemplateRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](TemplateQuestionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](SurveyQuestionRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](SurveyCycleRepository.md) |
| `surveyResponderRepository` | [`SurveyResponderRepository`](SurveyResponderRepository.md) |
| `questionRepository` | [`QuestionRepository`](QuestionRepository.md) |
| `surveyCycleService` | [`SurveyCycleService`](SurveyCycleService.md) |
| `createSurveyHelperService` | [`CreateSurveyHelperService`](CreateSurveyHelperService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/survey.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L31)

## Properties

### createSurveyHelperService

• **createSurveyHelperService**: [`CreateSurveyHelperService`](CreateSurveyHelperService.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L50)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey.service.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L51)

___

### questionRepository

• `Protected` **questionRepository**: [`QuestionRepository`](QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L45)

___

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](QuestionTemplateRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L35)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L41)

___

### surveyCycleService

• **surveyCycleService**: [`SurveyCycleService`](SurveyCycleService.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L48)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L39)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L33)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L43)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L37)

## Methods

### \_addLeadingZero

▸ `Private` **_addLeadingZero**(`number`, `size`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `number` | `number` |
| `size` | `number` |

#### Returns

`string`

#### Defined in

[services/survey-service/src/services/survey.service.ts:433](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L433)

___

### \_checkBasicSurveyValidations

▸ `Private` **_checkBasicSurveyValidations**(`surveyRequest`, `existingSurvey?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRequest` | [`SurveyDto`](SurveyDto.md) |
| `existingSurvey?` | [`SurveyDto`](SurveyDto.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:234](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L234)

___

### \_checkDateValidationForPatchCase

▸ `Private` **_checkDateValidationForPatchCase**(`survey`, `existingSurvey`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |
| `existingSurvey` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:212](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L212)

___

### \_checkSurveyDateValidations

▸ `Private` **_checkSurveyDateValidations**(`survey`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:266](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L266)

___

### \_createQuestionsFromTemplate

▸ `Private` **_createQuestionsFromTemplate**(`templateId`, `surveyId`): `Promise`<`void`\>

The function `_createQuestionsFromTemplate` creates survey questions based on a template and adds
them to a survey.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `templateId` | `string` | The `templateId` parameter is a string that represents the unique identifier of a template from which questions will be created for a survey. |
| `surveyId` | `string` | The `surveyId` parameter is a string that represents the unique identifier of a survey. It is used to associate the questions created from a template with a specific survey. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:151](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L151)

___

### \_duplicateSurveyDetails

▸ `Private` **_duplicateSurveyDetails**(`survey`, `createdSurvey`): `Promise`<`void`\>

The _duplicateSurveyDetails function duplicates survey details, sections, responders, workgroups,
and survey questions.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> | The `survey` parameter is an object of type `SurveyDto` with the `id` property omitted. It contains details of a survey that needs to be duplicated. |
| `createdSurvey` | [`SurveyDto`](SurveyDto.md) | The `_duplicateSurveyDetails` function takes in two parameters: `survey` and `createdSurvey`. The `createdSurvey` parameter is of type `SurveyDto`, which represents a survey object. It contains details about a survey that has been created, including an `id` property. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L184)

___

### \_processSurveyText

▸ `Private` **_processSurveyText**(`survey`): `void`

The _processSurveyText function processes survey text by unescaping HTML characters, extracting
the title, and validating its length.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> | The `survey` parameter is an object of type `SurveyDto` with the `id` property omitted. It likely contains information related to a survey, such as the survey text. |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:111](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L111)

___

### \_setWeightFlagIfRequired

▸ `Private` **_setWeightFlagIfRequired**(`survey`, `templateId?`): `Promise`<`void`\>

This function sets a weight flag on a survey if a specific condition is met.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> | The `survey` parameter is an object of type `SurveyDto` with the `id` property omitted. It likely contains information related to a survey, such as its title, questions, options, etc. |
| `templateId?` | `string` | The `templateId` parameter is an optional string that represents the ID of a question template. It is used in the `_setWeightFlagIfRequired` method to check if a survey has a base survey ID and if a template ID is provided. If a template ID is provided and the corresponding template |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L127)

___

### approveSurveyQuestions

▸ **approveSurveyQuestions**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:398](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L398)

___

### checkDeleteValidation

▸ **checkDeleteValidation**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:442](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L442)

___

### checkIfAllowedToUpdateSurvey

▸ **checkIfAllowedToUpdateSurvey**(`id`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:364](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L364)

___

### checkPastDateValidation

▸ **checkPastDateValidation**(`survey`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:319](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L319)

___

### createSurvey

▸ **createSurvey**(`survey`): `Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

This function creates a survey, performs various validations and operations, and returns the
created survey.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> | The `createSurvey` function takes a parameter `survey` of type `SurveyDto`, but with the `id` property omitted. The function performs several tasks such as copying survey data from a base survey, performing validations, setting weight flags, generating a unique survey ID, creating a new survey in |

#### Returns

`Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

The `createSurvey` function returns the created survey object after performing various
operations such as copying from a base survey, setting weight flag, generating a survey ID,
creating the survey in the repository, handling survey status, creating questions from a template
(if applicable), and duplicating survey details (if applicable).

#### Defined in

[services/survey-service/src/services/survey.service.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L66)

___

### deleteRelatedObjects

▸ **deleteRelatedObjects**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:448](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L448)

___

### generateSurveyId

▸ **generateSurveyId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:412](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L412)

___

### getHtmlTextContent

▸ `Private` **getHtmlTextContent**(`html?`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `html?` | `string` |

#### Returns

`string`

#### Defined in

[services/survey-service/src/services/survey.service.ts:325](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L325)

___

### handleSurveyApprove

▸ **handleSurveyApprove**(`id`, `updateSurvey`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `updateSurvey` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:383](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L383)

___

### handleSurveyStatus

▸ `Private` **handleSurveyStatus**(`id`, `survey`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `survey` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:373](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L373)

___

### handleSurveyStatusApprove

▸ **handleSurveyStatusApprove**(`id`, `status`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `status` | [`SurveyStatus`](../enums/SurveyStatus.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:391](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L391)

___

### updateModifiedByAndOn

▸ **updateModifiedByAndOn**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:465](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L465)

___

### updateSurvey

▸ **updateSurvey**(`id`, `survey`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `survey` | [`SurveyDto`](SurveyDto.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:336](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L336)

___

### validateActivationWithoutDates

▸ `Private` **validateActivationWithoutDates**(`startDate?`, `endDate?`, `isActive?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `startDate?` | `string` |
| `endDate?` | `string` |
| `isActive?` | `boolean` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:301](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L301)

___

### validateAndGetSurvey

▸ **validateAndGetSurvey**(`surveyId`, `filter?`): `Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `filter` | `Filter`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |

#### Returns

`Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:471](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L471)

___

### validateDraftWithStartDate

▸ `Private` **validateDraftWithStartDate**(`startDate?`, `isDraft?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `startDate?` | `string` |
| `isDraft?` | `boolean` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:311](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L311)

___

### validateEndDateAfterStartDate

▸ `Private` **validateEndDateAfterStartDate**(`startDate?`, `endDate?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `startDate?` | `string` |
| `endDate?` | `string` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:295](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L295)

___

### validateStartDateWithActiveStatus

▸ `Private` **validateStartDateWithActiveStatus**(`startDate?`, `isActive?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `startDate?` | `string` |
| `isActive?` | `boolean` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:279](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L279)

___

### validateTitleLength

▸ **validateTitleLength**(`title`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `title` | `string` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:330](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/survey.service.ts#L330)
