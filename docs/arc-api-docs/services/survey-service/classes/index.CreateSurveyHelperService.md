[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / CreateSurveyHelperService

# Class: CreateSurveyHelperService

[index](../modules/index.md).CreateSurveyHelperService

## Hierarchy

- **`CreateSurveyHelperService`**

  ↳ [`CreateSurveyHelperService`](sequelize_index.CreateSurveyHelperService.md)

## Table of contents

### Constructors

- [constructor](index.CreateSurveyHelperService.md#constructor)

### Properties

- [sectionRepository](index.CreateSurveyHelperService.md#sectionrepository)
- [surveyCycleRepository](index.CreateSurveyHelperService.md#surveycyclerepository)
- [surveyQuestionRepository](index.CreateSurveyHelperService.md#surveyquestionrepository)
- [surveyRepository](index.CreateSurveyHelperService.md#surveyrepository)
- [surveyResponderRepository](index.CreateSurveyHelperService.md#surveyresponderrepository)

### Methods

- [addDependentOnQuestionId](index.CreateSurveyHelperService.md#adddependentonquestionid)
- [copyFromBaseSurvey](index.CreateSurveyHelperService.md#copyfrombasesurvey)
- [createSection](index.CreateSurveyHelperService.md#createsection)
- [duplicateRespondersAndWorkgroups](index.CreateSurveyHelperService.md#duplicaterespondersandworkgroups)
- [duplicateSections](index.CreateSurveyHelperService.md#duplicatesections)
- [duplicateSurveyQuestionEntry](index.CreateSurveyHelperService.md#duplicatesurveyquestionentry)

## Constructors

### constructor

• **new CreateSurveyHelperService**(`surveyRepository`, `surveyQuestionRepository`, `sectionRepository`, `surveyCycleRepository`, `surveyResponderRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `sectionRepository` | [`SectionRepository`](index.SectionRepository.md) \| [`SectionRepository`](sequelize_index.SectionRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `surveyResponderRepository` | [`SurveyResponderRepository`](index.SurveyResponderRepository.md) \| [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md) |

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L24)

## Properties

### sectionRepository

• **sectionRepository**: [`SectionRepository`](index.SectionRepository.md) \| [`SectionRepository`](sequelize_index.SectionRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L32)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L34)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L28)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L26)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](index.SurveyResponderRepository.md) \| [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L38)

## Methods

### addDependentOnQuestionId

▸ **addDependentOnQuestionId**(`surveyId`, `existingTemplateQuestions`, `questionIdMap?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `existingTemplateQuestions` | `AnyObject`[] |
| `questionIdMap?` | `Map`<`string`, `string`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L59)

___

### copyFromBaseSurvey

▸ **copyFromBaseSurvey**(`survey`): `Promise`<`Omit`<[`SurveyDto`](index.SurveyDto.md), ``"id"``\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](index.SurveyDto.md), ``"id"``\> |

#### Returns

`Promise`<`Omit`<[`SurveyDto`](index.SurveyDto.md), ``"id"``\>\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L43)

___

### createSection

▸ **createSection**(`section`): `Promise`<``null`` \| [`Section`](index.Section.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `section` | [`Section`](index.Section.md) |

#### Returns

`Promise`<``null`` \| [`Section`](index.Section.md)\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L147)

___

### duplicateRespondersAndWorkgroups

▸ **duplicateRespondersAndWorkgroups**(`baseSurveyId`, `surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `baseSurveyId` | `string` |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L158)

___

### duplicateSections

▸ **duplicateSections**(`surveyId`, `baseSurveyId`, `sectionIdMap`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `baseSurveyId` | `string` |
| `sectionIdMap` | `Map`<`string`, `string`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L124)

___

### duplicateSurveyQuestionEntry

▸ **duplicateSurveyQuestionEntry**(`survey`, `createdSurvey`, `questionIdMap`, `sectionIdMap`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](index.SurveyDto.md), ``"id"``\> |
| `createdSurvey` | ``null`` \| [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |
| `questionIdMap` | `Map`<`string`, `string`\> |
| `sectionIdMap` | `Map`<`string`, `string`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:197](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L197)
