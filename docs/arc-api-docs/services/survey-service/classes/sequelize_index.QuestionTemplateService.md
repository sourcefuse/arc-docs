[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / QuestionTemplateService

# Class: QuestionTemplateService

[sequelize.index](../modules/sequelize_index.md).QuestionTemplateService

## Hierarchy

- [`QuestionTemplateService`](index.QuestionTemplateService.md)

  ↳ **`QuestionTemplateService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.QuestionTemplateService.md#constructor)

### Properties

- [questionTemplateRepository](sequelize_index.QuestionTemplateService.md#questiontemplaterepository)
- [templateQuestionRepository](sequelize_index.QuestionTemplateService.md#templatequestionrepository)

### Methods

- [addDependentOnQuestionId](sequelize_index.QuestionTemplateService.md#adddependentonquestionid)
- [addTemplateQuestions](sequelize_index.QuestionTemplateService.md#addtemplatequestions)
- [checkDeleteValidation](sequelize_index.QuestionTemplateService.md#checkdeletevalidation)
- [checkIfAllowedTemplateQuestionToUpdate](sequelize_index.QuestionTemplateService.md#checkifallowedtemplatequestiontoupdate)
- [createTemplate](sequelize_index.QuestionTemplateService.md#createtemplate)
- [deleteRelatedObjects](sequelize_index.QuestionTemplateService.md#deleterelatedobjects)
- [generateQuestionnaireId](sequelize_index.QuestionTemplateService.md#generatequestionnaireid)
- [separateIdsToAddAndRemove](sequelize_index.QuestionTemplateService.md#separateidstoaddandremove)
- [updateModifiedByAndOn](sequelize_index.QuestionTemplateService.md#updatemodifiedbyandon)
- [updateTemplate](sequelize_index.QuestionTemplateService.md#updatetemplate)

## Constructors

### constructor

• **new QuestionTemplateService**(`questionTemplateRepository`, `templateQuestionRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionTemplateRepository` | [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md) |

#### Overrides

[QuestionTemplateService](index.QuestionTemplateService.md).[constructor](index.QuestionTemplateService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/question-template.service.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-template.service.ts#L11)

## Properties

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md)

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[questionTemplateRepository](index.QuestionTemplateService.md#questiontemplaterepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-template.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-template.service.ts#L13)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md)

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[templateQuestionRepository](index.QuestionTemplateService.md#templatequestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-template.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-template.service.ts#L15)

## Methods

### addDependentOnQuestionId

▸ **addDependentOnQuestionId**(`templateId`, `existingTemplateQuestions`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |
| `existingTemplateQuestions` | [`TemplateQuestion`](index.TemplateQuestion.md)[] |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[addDependentOnQuestionId](index.QuestionTemplateService.md#adddependentonquestionid)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:197](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L197)

___

### addTemplateQuestions

▸ **addTemplateQuestions**(`existingTemplateId`, `templateId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `existingTemplateId` | `string` |
| `templateId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[addTemplateQuestions](index.QuestionTemplateService.md#addtemplatequestions)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L176)

___

### checkDeleteValidation

▸ **checkDeleteValidation**(`templateId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[checkDeleteValidation](index.QuestionTemplateService.md#checkdeletevalidation)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L108)

___

### checkIfAllowedTemplateQuestionToUpdate

▸ **checkIfAllowedTemplateQuestionToUpdate**(`templateId`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |

#### Returns

`Promise`<`boolean`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[checkIfAllowedTemplateQuestionToUpdate](index.QuestionTemplateService.md#checkifallowedtemplatequestiontoupdate)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:282](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L282)

___

### createTemplate

▸ **createTemplate**(`questionTemplate`): `Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionTemplate` | `Omit`<[`QuestionTemplatesDto`](index.QuestionTemplatesDto.md), ``"id"``\> |

#### Returns

`Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[createTemplate](index.QuestionTemplateService.md#createtemplate)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L32)

___

### deleteRelatedObjects

▸ **deleteRelatedObjects**(`templateId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[deleteRelatedObjects](index.QuestionTemplateService.md#deleterelatedobjects)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L120)

___

### generateQuestionnaireId

▸ **generateQuestionnaireId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[generateQuestionnaireId](index.QuestionTemplateService.md#generatequestionnaireid)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L140)

___

### separateIdsToAddAndRemove

▸ **separateIdsToAddAndRemove**(`dataArray`, `dataKey`, `requestedIds`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataArray` | `AnyObject`[] |
| `dataKey` | `string` |
| `requestedIds` | `string`[] |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `toAddIds` | `string`[] |
| `toDeleteIds` | `any`[] |

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[separateIdsToAddAndRemove](index.QuestionTemplateService.md#separateidstoaddandremove)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L94)

___

### updateModifiedByAndOn

▸ **updateModifiedByAndOn**(`templateId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[updateModifiedByAndOn](index.QuestionTemplateService.md#updatemodifiedbyandon)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L88)

___

### updateTemplate

▸ **updateTemplate**(`templateId`, `questionTemplate`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |
| `questionTemplate` | [`QuestionTemplatesDto`](index.QuestionTemplatesDto.md) |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionTemplateService](index.QuestionTemplateService.md).[updateTemplate](index.QuestionTemplateService.md#updatetemplate)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:236](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L236)
