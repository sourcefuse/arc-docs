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

[services/survey-service/src/services/create-survey-helper.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L13)

## Properties

### sectionRepository

• **sectionRepository**: [`SectionRepository`](SectionRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L19)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L21)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L17)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L15)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L23)

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

[services/survey-service/src/services/create-survey-helper.service.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L53)

___

### copyFromBaseSurvey

▸ **copyFromBaseSurvey**(`survey`): `Promise`<`Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\>\>

The function `copyFromBaseSurvey` copies properties from a base survey to a new survey object in
TypeScript.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `survey` | `Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\> | The `copyFromBaseSurvey` function takes a parameter `survey` of type `Omit<SurveyDto, 'id'>`. This means that the `survey` parameter should be an object that has all the properties of `SurveyDto` except for the `id` property. |

#### Returns

`Promise`<`Omit`<[`SurveyDto`](SurveyDto.md), ``"id"``\>\>

The `copyFromBaseSurvey` function returns the `survey` object with the `isEnableWeights`
property set based on the corresponding property value from the base survey identified by
`baseSurveyId`. If `baseSurveyId` is not provided or the base survey is not found, an error will
be thrown.

#### Defined in

[services/survey-service/src/services/create-survey-helper.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L37)

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

[services/survey-service/src/services/create-survey-helper.service.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L141)

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

[services/survey-service/src/services/create-survey-helper.service.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L152)

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

[services/survey-service/src/services/create-survey-helper.service.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L118)

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

[services/survey-service/src/services/create-survey-helper.service.ts:191](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/services/create-survey-helper.service.ts#L191)
