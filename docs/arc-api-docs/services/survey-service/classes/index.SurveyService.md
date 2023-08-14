[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyService

# Class: SurveyService

[index](../modules/index.md).SurveyService

## Hierarchy

- **`SurveyService`**

  ↳ [`SurveyService`](sequelize_index.SurveyService.md)

## Table of contents

### Constructors

- [constructor](index.SurveyService.md#constructor)

### Properties

- [createSurveyHelperService](index.SurveyService.md#createsurveyhelperservice)
- [logger](index.SurveyService.md#logger)
- [questionRepository](index.SurveyService.md#questionrepository)
- [questionTemplateRepository](index.SurveyService.md#questiontemplaterepository)
- [surveyCycleRepository](index.SurveyService.md#surveycyclerepository)
- [surveyCycleService](index.SurveyService.md#surveycycleservice)
- [surveyQuestionRepository](index.SurveyService.md#surveyquestionrepository)
- [surveyRepository](index.SurveyService.md#surveyrepository)
- [surveyResponderRepository](index.SurveyService.md#surveyresponderrepository)
- [templateQuestionRepository](index.SurveyService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](index.SurveyService.md#_addleadingzero)
- [\_checkBasicSurveyValidations](index.SurveyService.md#_checkbasicsurveyvalidations)
- [\_checkDateValidationForPatchCase](index.SurveyService.md#_checkdatevalidationforpatchcase)
- [\_checkSurveyDateValidations](index.SurveyService.md#_checksurveydatevalidations)
- [approveSurveyQuestions](index.SurveyService.md#approvesurveyquestions)
- [checkDeleteValidation](index.SurveyService.md#checkdeletevalidation)
- [checkIfAllowedToUpdateSurvey](index.SurveyService.md#checkifallowedtoupdatesurvey)
- [checkPastDateValidation](index.SurveyService.md#checkpastdatevalidation)
- [createSurvey](index.SurveyService.md#createsurvey)
- [deleteRelatedObjects](index.SurveyService.md#deleterelatedobjects)
- [generateSurveyId](index.SurveyService.md#generatesurveyid)
- [getHtmlTextContent](index.SurveyService.md#gethtmltextcontent)
- [handleSurveyApprove](index.SurveyService.md#handlesurveyapprove)
- [handleSurveyStatus](index.SurveyService.md#handlesurveystatus)
- [handleSurveyStatusApprove](index.SurveyService.md#handlesurveystatusapprove)
- [updateModifiedByAndOn](index.SurveyService.md#updatemodifiedbyandon)
- [updateSurvey](index.SurveyService.md#updatesurvey)
- [validateAndGetSurvey](index.SurveyService.md#validateandgetsurvey)
- [validateTitleLength](index.SurveyService.md#validatetitlelength)

## Constructors

### constructor

• **new SurveyService**(`surveyRepository`, `questionTemplateRepository`, `templateQuestionRepository`, `surveyQuestionRepository`, `surveyCycleRepository`, `surveyResponderRepository`, `questionRepository`, `surveyCycleService`, `createSurveyHelperService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `questionTemplateRepository` | [`QuestionTemplateRepository`](index.QuestionTemplateRepository.md) \| [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](index.TemplateQuestionRepository.md) \| [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `surveyResponderRepository` | [`SurveyResponderRepository`](index.SurveyResponderRepository.md) \| [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md) |
| `questionRepository` | [`QuestionRepository`](index.QuestionRepository.md) \| [`QuestionRepository`](sequelize_index.QuestionRepository.md) |
| `surveyCycleService` | [`SurveyCycleService`](index.SurveyCycleService.md) |
| `createSurveyHelperService` | [`CreateSurveyHelperService`](index.CreateSurveyHelperService.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/survey.service.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L40)

## Properties

### createSurveyHelperService

• **createSurveyHelperService**: [`CreateSurveyHelperService`](index.CreateSurveyHelperService.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L69)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey.service.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L70)

___

### questionRepository

• `Protected` **questionRepository**: [`QuestionRepository`](index.QuestionRepository.md) \| [`QuestionRepository`](sequelize_index.QuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L64)

___

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](index.QuestionTemplateRepository.md) \| [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L44)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L56)

___

### surveyCycleService

• **surveyCycleService**: [`SurveyCycleService`](index.SurveyCycleService.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L67)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L52)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L42)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](index.SurveyResponderRepository.md) \| [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L60)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](index.TemplateQuestionRepository.md) \| [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey.service.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L48)

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

[services/survey-service/src/services/survey.service.ts:384](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L384)

___

### \_checkBasicSurveyValidations

▸ `Private` **_checkBasicSurveyValidations**(`surveyRequest`, `existingSurvey?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRequest` | [`SurveyDto`](index.SurveyDto.md) |
| `existingSurvey?` | [`SurveyDto`](index.SurveyDto.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:187](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L187)

___

### \_checkDateValidationForPatchCase

▸ `Private` **_checkDateValidationForPatchCase**(`survey`, `existingSurvey`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |
| `existingSurvey` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:165](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L165)

___

### \_checkSurveyDateValidations

▸ `Private` **_checkSurveyDateValidations**(`survey`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:219](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L219)

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

[services/survey-service/src/services/survey.service.ts:349](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L349)

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

[services/survey-service/src/services/survey.service.ts:393](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L393)

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

[services/survey-service/src/services/survey.service.ts:315](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L315)

___

### checkPastDateValidation

▸ **checkPastDateValidation**(`survey`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey.service.ts:270](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L270)

___

### createSurvey

▸ **createSurvey**(`survey`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/index.SurveyRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](index.SurveyDto.md), ``"id"``\> |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/index.SurveyRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L73)

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

[services/survey-service/src/services/survey.service.ts:399](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L399)

___

### generateSurveyId

▸ **generateSurveyId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:363](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L363)

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

[services/survey-service/src/services/survey.service.ts:276](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L276)

___

### handleSurveyApprove

▸ **handleSurveyApprove**(`id`, `updateSurvey`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `updateSurvey` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:334](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L334)

___

### handleSurveyStatus

▸ `Private` **handleSurveyStatus**(`id`, `survey`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `survey` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:324](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L324)

___

### handleSurveyStatusApprove

▸ **handleSurveyStatusApprove**(`id`, `status`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `status` | [`SurveyStatus`](../enums/index.SurveyStatus.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:342](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L342)

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

[services/survey-service/src/services/survey.service.ts:416](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L416)

___

### updateSurvey

▸ **updateSurvey**(`id`, `survey`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `survey` | [`SurveyDto`](index.SurveyDto.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:287](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L287)

___

### validateAndGetSurvey

▸ **validateAndGetSurvey**(`surveyId`, `filter?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/index.SurveyRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `filter` | `Filter`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> & [`SurveyRelations`](../interfaces/index.SurveyRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey.service.ts:422](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L422)

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

[services/survey-service/src/services/survey.service.ts:281](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L281)
