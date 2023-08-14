[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / QuestionTemplateService

# Class: QuestionTemplateService

[index](../modules/index.md).QuestionTemplateService

## Hierarchy

- **`QuestionTemplateService`**

  ↳ [`QuestionTemplateService`](sequelize_index.QuestionTemplateService.md)

## Table of contents

### Constructors

- [constructor](index.QuestionTemplateService.md#constructor)

### Properties

- [questionTemplateRepository](index.QuestionTemplateService.md#questiontemplaterepository)
- [templateQuestionRepository](index.QuestionTemplateService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](index.QuestionTemplateService.md#_addleadingzero)
- [addDependentOnQuestionId](index.QuestionTemplateService.md#adddependentonquestionid)
- [addTemplateQuestions](index.QuestionTemplateService.md#addtemplatequestions)
- [checkDeleteValidation](index.QuestionTemplateService.md#checkdeletevalidation)
- [checkIfAllowedTemplateQuestionToUpdate](index.QuestionTemplateService.md#checkifallowedtemplatequestiontoupdate)
- [checkIfAllowedToUpdate](index.QuestionTemplateService.md#checkifallowedtoupdate)
- [createTemplate](index.QuestionTemplateService.md#createtemplate)
- [deleteRelatedObjects](index.QuestionTemplateService.md#deleterelatedobjects)
- [generateQuestionnaireId](index.QuestionTemplateService.md#generatequestionnaireid)
- [separateIdsToAddAndRemove](index.QuestionTemplateService.md#separateidstoaddandremove)
- [updateModifiedByAndOn](index.QuestionTemplateService.md#updatemodifiedbyandon)
- [updateTemplate](index.QuestionTemplateService.md#updatetemplate)

## Constructors

### constructor

• **new QuestionTemplateService**(`questionTemplateRepository`, `templateQuestionRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionTemplateRepository` | [`QuestionTemplateRepository`](index.QuestionTemplateRepository.md) \| [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](index.TemplateQuestionRepository.md) \| [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md) |

#### Defined in

[services/survey-service/src/services/question-template.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L21)

## Properties

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](index.QuestionTemplateRepository.md) \| [`QuestionTemplateRepository`](sequelize_index.QuestionTemplateRepository.md)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L23)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](index.TemplateQuestionRepository.md) \| [`TemplateQuestionRepository`](sequelize_index.TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L27)

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

[services/survey-service/src/services/question-template.service.ts:162](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L162)

___

### addDependentOnQuestionId

▸ **addDependentOnQuestionId**(`templateId`, `existingTemplateQuestions`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |
| `existingTemplateQuestions` | [`TemplateQuestion`](index.TemplateQuestion.md)[] |

#### Returns

`Promise`<`void`\>

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

#### Defined in

[services/survey-service/src/services/question-template.service.ts:282](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L282)

___

### checkIfAllowedToUpdate

▸ `Private` **checkIfAllowedToUpdate**(`existingQuestionnaire`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `existingQuestionnaire` | [`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/question-template.service.ts:275](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L275)

___

### createTemplate

▸ **createTemplate**(`questionTemplate`): `Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionTemplate` | `Omit`<[`QuestionTemplatesDto`](index.QuestionTemplatesDto.md), ``"id"``\> |

#### Returns

`Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

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

#### Defined in

[services/survey-service/src/services/question-template.service.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L120)

___

### generateQuestionnaireId

▸ **generateQuestionnaireId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

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

#### Defined in

[services/survey-service/src/services/question-template.service.ts:236](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-template.service.ts#L236)
