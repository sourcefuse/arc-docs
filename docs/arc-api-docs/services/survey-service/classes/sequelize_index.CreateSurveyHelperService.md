[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / CreateSurveyHelperService

# Class: CreateSurveyHelperService

[sequelize.index](../modules/sequelize_index.md).CreateSurveyHelperService

## Hierarchy

- [`CreateSurveyHelperService`](index.CreateSurveyHelperService.md)

  ↳ **`CreateSurveyHelperService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.CreateSurveyHelperService.md#constructor)

### Properties

- [sectionRepository](sequelize_index.CreateSurveyHelperService.md#sectionrepository)
- [surveyCycleRepository](sequelize_index.CreateSurveyHelperService.md#surveycyclerepository)
- [surveyQuestionRepository](sequelize_index.CreateSurveyHelperService.md#surveyquestionrepository)
- [surveyRepository](sequelize_index.CreateSurveyHelperService.md#surveyrepository)
- [surveyResponderRepository](sequelize_index.CreateSurveyHelperService.md#surveyresponderrepository)

### Methods

- [addDependentOnQuestionId](sequelize_index.CreateSurveyHelperService.md#adddependentonquestionid)
- [copyFromBaseSurvey](sequelize_index.CreateSurveyHelperService.md#copyfrombasesurvey)
- [createSection](sequelize_index.CreateSurveyHelperService.md#createsection)
- [duplicateRespondersAndWorkgroups](sequelize_index.CreateSurveyHelperService.md#duplicaterespondersandworkgroups)
- [duplicateSections](sequelize_index.CreateSurveyHelperService.md#duplicatesections)
- [duplicateSurveyQuestionEntry](sequelize_index.CreateSurveyHelperService.md#duplicatesurveyquestionentry)

## Constructors

### constructor

• **new CreateSurveyHelperService**(`surveyRepository`, `surveyQuestionRepository`, `sectionRepository`, `surveyCycleRepository`, `surveyResponderRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `sectionRepository` | [`SectionRepository`](sequelize_index.SectionRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `surveyResponderRepository` | [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md) |

#### Overrides

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[constructor](index.CreateSurveyHelperService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/create-survey-helper.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/create-survey-helper.service.ts#L14)

## Properties

### sectionRepository

• **sectionRepository**: [`SectionRepository`](sequelize_index.SectionRepository.md)

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[sectionRepository](index.CreateSurveyHelperService.md#sectionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/create-survey-helper.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/create-survey-helper.service.ts#L20)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[surveyCycleRepository](index.CreateSurveyHelperService.md#surveycyclerepository)

#### Defined in

[services/survey-service/src/services/sequelize/create-survey-helper.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/create-survey-helper.service.ts#L22)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[surveyQuestionRepository](index.CreateSurveyHelperService.md#surveyquestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/create-survey-helper.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/create-survey-helper.service.ts#L18)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[surveyRepository](index.CreateSurveyHelperService.md#surveyrepository)

#### Defined in

[services/survey-service/src/services/sequelize/create-survey-helper.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/create-survey-helper.service.ts#L16)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[surveyResponderRepository](index.CreateSurveyHelperService.md#surveyresponderrepository)

#### Defined in

[services/survey-service/src/services/sequelize/create-survey-helper.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/create-survey-helper.service.ts#L24)

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

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[addDependentOnQuestionId](index.CreateSurveyHelperService.md#adddependentonquestionid)

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

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[copyFromBaseSurvey](index.CreateSurveyHelperService.md#copyfrombasesurvey)

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

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[createSection](index.CreateSurveyHelperService.md#createsection)

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

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[duplicateRespondersAndWorkgroups](index.CreateSurveyHelperService.md#duplicaterespondersandworkgroups)

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

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[duplicateSections](index.CreateSurveyHelperService.md#duplicatesections)

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

#### Inherited from

[CreateSurveyHelperService](index.CreateSurveyHelperService.md).[duplicateSurveyQuestionEntry](index.CreateSurveyHelperService.md#duplicatesurveyquestionentry)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:197](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/create-survey-helper.service.ts#L197)
