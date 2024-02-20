[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / CreateSurveyHelperService

# Class: CreateSurveyHelperService

## Table of contents

### Constructors

- [constructor](CreateSurveyHelperService.md#constructor)

### Properties

- [sectionRepository](CreateSurveyHelperService.md#sectionrepository)
- [surveyCycleRepository](CreateSurveyHelperService.md#surveycyclerepository)
- [surveyQuestionRepository](CreateSurveyHelperService.md#surveyquestionrepository)
- [surveyRepository](CreateSurveyHelperService.md#surveyrepository)
- [surveyResponderRepository](CreateSurveyHelperService.md#surveyresponderrepository)

### Methods

- [addDependentOnQuestionId](CreateSurveyHelperService.md#adddependentonquestionid)
- [copyFromBaseSurvey](CreateSurveyHelperService.md#copyfrombasesurvey)
- [createSection](CreateSurveyHelperService.md#createsection)
- [duplicateRespondersAndWorkgroups](CreateSurveyHelperService.md#duplicaterespondersandworkgroups)
- [duplicateSections](CreateSurveyHelperService.md#duplicatesections)
- [duplicateSurveyQuestionEntry](CreateSurveyHelperService.md#duplicatesurveyquestionentry)

## Constructors

### constructor

• **new CreateSurveyHelperService**(`surveyRepository`, `surveyQuestionRepository`, `sectionRepository`, `surveyCycleRepository`, `surveyResponderRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](SurveyRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](SurveyQuestionRepository.md) |
| `sectionRepository` | [`SectionRepository`](SectionRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](SurveyCycleRepository.md) |
| `surveyResponderRepository` | [`SurveyResponderRepository`](SurveyResponderRepository.md) |

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L13)

## Properties

### sectionRepository

• **sectionRepository**: [`SectionRepository`](SectionRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L19)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L21)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L17)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L15)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L23)

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

[services/survey-service/src/services/create-survey-helper.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L42)

___

### copyFromBaseSurvey

▸ **copyFromBaseSurvey**(`survey`): `Promise`<`Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> |

#### Returns

`Promise`<`Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\>\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L26)

___

### createSection

▸ **createSection**(`section`): `Promise`<``null`` \| [`Section`](Section.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `section` | [`Section`](Section.md) |

#### Returns

`Promise`<``null`` \| [`Section`](Section.md)\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L130)

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

[services/survey-service/src/services/create-survey-helper.service.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L141)

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

[services/survey-service/src/services/create-survey-helper.service.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L107)

___

### duplicateSurveyQuestionEntry

▸ **duplicateSurveyQuestionEntry**(`survey`, `createdSurvey`, `questionIdMap`, `sectionIdMap`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> |
| `createdSurvey` | ``null`` \| [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |
| `questionIdMap` | `Map`<`string`, `string`\> |
| `sectionIdMap` | `Map`<`string`, `string`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:180](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/create-survey-helper.service.ts#L180)
