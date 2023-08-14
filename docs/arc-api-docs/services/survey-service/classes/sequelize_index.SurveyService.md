[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyService

# Class: SurveyService

[sequelize.index](../modules/sequelize_index.md).SurveyService

## Hierarchy

- [`SurveyService`](index.SurveyService.md)

  ↳ **`SurveyService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyService.md#constructor)

### Properties

- [createSurveyHelperService](sequelize_index.SurveyService.md#createsurveyhelperservice)
- [logger](sequelize_index.SurveyService.md#logger)
- [questionRepository](sequelize_index.SurveyService.md#questionrepository)
- [questionTemplateRepository](sequelize_index.SurveyService.md#questiontemplaterepository)
- [surveyCycleRepository](sequelize_index.SurveyService.md#surveycyclerepository)
- [surveyCycleService](sequelize_index.SurveyService.md#surveycycleservice)
- [surveyQuestionRepository](sequelize_index.SurveyService.md#surveyquestionrepository)
- [surveyRepository](sequelize_index.SurveyService.md#surveyrepository)
- [surveyResponderRepository](sequelize_index.SurveyService.md#surveyresponderrepository)
- [templateQuestionRepository](sequelize_index.SurveyService.md#templatequestionrepository)

### Methods

- [approveSurveyQuestions](sequelize_index.SurveyService.md#approvesurveyquestions)
- [checkDeleteValidation](sequelize_index.SurveyService.md#checkdeletevalidation)
- [checkIfAllowedToUpdateSurvey](sequelize_index.SurveyService.md#checkifallowedtoupdatesurvey)
- [checkPastDateValidation](sequelize_index.SurveyService.md#checkpastdatevalidation)
- [createSurvey](sequelize_index.SurveyService.md#createsurvey)
- [deleteRelatedObjects](sequelize_index.SurveyService.md#deleterelatedobjects)
- [generateSurveyId](sequelize_index.SurveyService.md#generatesurveyid)
- [handleSurveyApprove](sequelize_index.SurveyService.md#handlesurveyapprove)
- [handleSurveyStatusApprove](sequelize_index.SurveyService.md#handlesurveystatusapprove)
- [updateModifiedByAndOn](sequelize_index.SurveyService.md#updatemodifiedbyandon)
- [updateSurvey](sequelize_index.SurveyService.md#updatesurvey)
- [validateAndGetSurvey](sequelize_index.SurveyService.md#validateandgetsurvey)
- [validateTitleLength](sequelize_index.SurveyService.md#validatetitlelength)

## Constructors

### constructor

• **new SurveyService**(`surveyRepository`, `questionTemplateRepository`, `templateQuestionRepository`, `surveyQuestionRepository`, `surveyCycleRepository`, `surveyResponderRepository`, `questionRepository`, `surveyCycleService`, `createSurveyHelperService`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `questionTemplateRepository` | [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `surveyResponderRepository` | [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md) |
| `questionRepository` | [`QuestionRepository`](sequelize_index.QuestionRepository.md) |
| `surveyCycleService` | [`SurveyCycleService`](sequelize_index.SurveyCycleService.md) |
| `createSurveyHelperService` | [`CreateSurveyHelperService`](sequelize_index.CreateSurveyHelperService.md) |
| `logger` | `ILogger` |

#### Overrides

[SurveyService](index.SurveyService.md).[constructor](index.SurveyService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L20)

## Properties

### createSurveyHelperService

• **createSurveyHelperService**: [`CreateSurveyHelperService`](sequelize_index.CreateSurveyHelperService.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[createSurveyHelperService](index.SurveyService.md#createsurveyhelperservice)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L39)

___

### logger

• **logger**: `ILogger`

#### Inherited from

[SurveyService](index.SurveyService.md).[logger](index.SurveyService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L40)

___

### questionRepository

• `Protected` **questionRepository**: [`QuestionRepository`](sequelize_index.QuestionRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[questionRepository](index.SurveyService.md#questionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L34)

___

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[questionTemplateRepository](index.SurveyService.md#questiontemplaterepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L24)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[surveyCycleRepository](index.SurveyService.md#surveycyclerepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L30)

___

### surveyCycleService

• **surveyCycleService**: [`SurveyCycleService`](sequelize_index.SurveyCycleService.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[surveyCycleService](index.SurveyService.md#surveycycleservice)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L37)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[surveyQuestionRepository](index.SurveyService.md#surveyquestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L28)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[surveyRepository](index.SurveyService.md#surveyrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L22)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[surveyResponderRepository](index.SurveyService.md#surveyresponderrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L32)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md)

#### Inherited from

[SurveyService](index.SurveyService.md).[templateQuestionRepository](index.SurveyService.md#templatequestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey.service.ts#L26)

## Methods

### approveSurveyQuestions

▸ **approveSurveyQuestions**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[SurveyService](index.SurveyService.md).[approveSurveyQuestions](index.SurveyService.md#approvesurveyquestions)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[checkDeleteValidation](index.SurveyService.md#checkdeletevalidation)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[checkIfAllowedToUpdateSurvey](index.SurveyService.md#checkifallowedtoupdatesurvey)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[checkPastDateValidation](index.SurveyService.md#checkpastdatevalidation)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[createSurvey](index.SurveyService.md#createsurvey)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[deleteRelatedObjects](index.SurveyService.md#deleterelatedobjects)

#### Defined in

[services/survey-service/src/services/survey.service.ts:399](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L399)

___

### generateSurveyId

▸ **generateSurveyId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Inherited from

[SurveyService](index.SurveyService.md).[generateSurveyId](index.SurveyService.md#generatesurveyid)

#### Defined in

[services/survey-service/src/services/survey.service.ts:363](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L363)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[handleSurveyApprove](index.SurveyService.md#handlesurveyapprove)

#### Defined in

[services/survey-service/src/services/survey.service.ts:334](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L334)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[handleSurveyStatusApprove](index.SurveyService.md#handlesurveystatusapprove)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[updateModifiedByAndOn](index.SurveyService.md#updatemodifiedbyandon)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[updateSurvey](index.SurveyService.md#updatesurvey)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[validateAndGetSurvey](index.SurveyService.md#validateandgetsurvey)

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

#### Inherited from

[SurveyService](index.SurveyService.md).[validateTitleLength](index.SurveyService.md#validatetitlelength)

#### Defined in

[services/survey-service/src/services/survey.service.ts:281](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey.service.ts#L281)
