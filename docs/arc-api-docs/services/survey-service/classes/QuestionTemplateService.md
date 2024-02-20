[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionTemplateService

# Class: QuestionTemplateService

## Table of contents

### Constructors

- [constructor](QuestionTemplateService.md#constructor)

### Properties

- [questionTemplateRepository](QuestionTemplateService.md#questiontemplaterepository)
- [templateQuestionRepository](QuestionTemplateService.md#templatequestionrepository)

### Methods

- [\_addLeadingZero](QuestionTemplateService.md#_addleadingzero)
- [addDependentOnQuestionId](QuestionTemplateService.md#adddependentonquestionid)
- [addTemplateQuestions](QuestionTemplateService.md#addtemplatequestions)
- [checkDeleteValidation](QuestionTemplateService.md#checkdeletevalidation)
- [checkIfAllowedTemplateQuestionToUpdate](QuestionTemplateService.md#checkifallowedtemplatequestiontoupdate)
- [checkIfAllowedToUpdate](QuestionTemplateService.md#checkifallowedtoupdate)
- [createTemplate](QuestionTemplateService.md#createtemplate)
- [deleteRelatedObjects](QuestionTemplateService.md#deleterelatedobjects)
- [generateQuestionnaireId](QuestionTemplateService.md#generatequestionnaireid)
- [separateIdsToAddAndRemove](QuestionTemplateService.md#separateidstoaddandremove)
- [updateModifiedByAndOn](QuestionTemplateService.md#updatemodifiedbyandon)
- [updateTemplate](QuestionTemplateService.md#updatetemplate)

## Constructors

### constructor

• **new QuestionTemplateService**(`questionTemplateRepository`, `templateQuestionRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionTemplateRepository` | [`QuestionTemplateRepository`](QuestionTemplateRepository.md) |
| `templateQuestionRepository` | [`TemplateQuestionRepository`](TemplateQuestionRepository.md) |

#### Defined in

[services/survey-service/src/services/question-template.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L17)

## Properties

### questionTemplateRepository

• **questionTemplateRepository**: [`QuestionTemplateRepository`](QuestionTemplateRepository.md)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L19)

___

### templateQuestionRepository

• **templateQuestionRepository**: [`TemplateQuestionRepository`](TemplateQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/question-template.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L21)

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

[services/survey-service/src/services/question-template.service.ts:154](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L154)

___

### addDependentOnQuestionId

▸ **addDependentOnQuestionId**(`templateId`, `existingTemplateQuestions`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |
| `existingTemplateQuestions` | [`TemplateQuestion`](TemplateQuestion.md)[] |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-template.service.ts:189](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L189)

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

[services/survey-service/src/services/question-template.service.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L168)

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

[services/survey-service/src/services/question-template.service.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L100)

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

[services/survey-service/src/services/question-template.service.ts:274](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L274)

___

### checkIfAllowedToUpdate

▸ `Private` **checkIfAllowedToUpdate**(`existingQuestionnaire`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `existingQuestionnaire` | [`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\> |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/question-template.service.ts:267](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L267)

___

### createTemplate

▸ **createTemplate**(`questionTemplate`): `Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionTemplate` | `Omit`<[`QuestionTemplatesDto`](QuestionTemplatesDto.md), ``"id"``\> |

#### Returns

`Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/survey-service/src/services/question-template.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L24)

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

[services/survey-service/src/services/question-template.service.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L112)

___

### generateQuestionnaireId

▸ **generateQuestionnaireId**(): `Promise`<`string`\>

#### Returns

`Promise`<`string`\>

#### Defined in

[services/survey-service/src/services/question-template.service.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L132)

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

[services/survey-service/src/services/question-template.service.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L86)

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

[services/survey-service/src/services/question-template.service.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L80)

___

### updateTemplate

▸ **updateTemplate**(`templateId`, `questionTemplate`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `templateId` | `string` |
| `questionTemplate` | [`QuestionTemplatesDto`](QuestionTemplatesDto.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-template.service.ts:228](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-template.service.ts#L228)
