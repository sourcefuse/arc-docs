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
- [validateAndGetSurvey](SurveyService.md#validateandgetsurvey)
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

[services/survey-service/src/services/survey.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L31)

## Properties

### createSurveyHelperService

• **createSurveyHelperService**: [`CreateSurveyHelperService`](CreateSurveyHelperService.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L50)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey.service.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L51)

___

### questionRepository

• `Protected` **questionRepository**: [`QuestionRepository`](QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L45)

___

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](QuestionTemplateRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L35)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L41)

___

### surveyCycleService

• **surveyCycleService**: [`SurveyCycleService`](SurveyCycleService.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L48)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L39)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L33)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L43)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L37)

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

[services/survey-service/src/services/survey.service.ts:367](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L367)

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

[services/survey-service/src/services/survey.service.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L170)

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

[services/survey-service/src/services/survey.service.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L148)

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

[services/survey-service/src/services/survey.service.ts:202](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L202)

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

[services/survey-service/src/services/survey.service.ts:332](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L332)

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

[services/survey-service/src/services/survey.service.ts:376](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L376)

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

[services/survey-service/src/services/survey.service.ts:298](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L298)

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

[services/survey-service/src/services/survey.service.ts:253](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L253)

___

### createSurvey

▸ **createSurvey**(`survey`): `Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> |

#### Returns

`Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L54)

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

[services/survey-service/src/services/survey.service.ts:382](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L382)

___

### generateSurveyId

▸ **generateSurveyId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:346](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L346)

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

[services/survey-service/src/services/survey.service.ts:259](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L259)

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

[services/survey-service/src/services/survey.service.ts:317](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L317)

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

[services/survey-service/src/services/survey.service.ts:307](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L307)

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

[services/survey-service/src/services/survey.service.ts:325](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L325)

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

[services/survey-service/src/services/survey.service.ts:399](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L399)

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

[services/survey-service/src/services/survey.service.ts:270](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L270)

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

[services/survey-service/src/services/survey.service.ts:405](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L405)

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

[services/survey-service/src/services/survey.service.ts:264](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey.service.ts#L264)
