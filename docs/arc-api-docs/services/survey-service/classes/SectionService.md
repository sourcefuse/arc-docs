[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SectionService

# Class: SectionService

## Table of contents

### Constructors

- [constructor](SectionService.md#constructor)

### Properties

- [logger](SectionService.md#logger)
- [sectionRepository](SectionService.md#sectionrepository)
- [surveyQuestionRepository](SectionService.md#surveyquestionrepository)
- [surveyRepository](SectionService.md#surveyrepository)

### Methods

- [checkBasicSectionValidation](SectionService.md#checkbasicsectionvalidation)
- [createSection](SectionService.md#createsection)
- [handleDeleteSection](SectionService.md#handledeletesection)

## Constructors

### constructor

• **new SectionService**(`sectionRepository`, `surveyQuestionRepository`, `surveyRepository`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `sectionRepository` | [`SectionRepository`](SectionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](SurveyQuestionRepository.md) |
| `surveyRepository` | [`SurveyRepository`](SurveyRepository.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/section.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L14)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/section.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L21)

___

### sectionRepository

• **sectionRepository**: [`SectionRepository`](SectionRepository.md)

#### Defined in

[services/survey-service/src/services/section.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L16)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/section.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L18)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/section.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L20)

## Methods

### checkBasicSectionValidation

▸ **checkBasicSectionValidation**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/section.service.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L119)

___

### createSection

▸ **createSection**(`surveyId`, `section`): `Promise`<[`Section`](Section.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `section` | `Omit`<[`Section`](Section.md), ``"id"``\> |

#### Returns

`Promise`<[`Section`](Section.md)\>

#### Defined in

[services/survey-service/src/services/section.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L24)

___

### handleDeleteSection

▸ **handleDeleteSection**(`surveyId`, `sectionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `sectionId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/section.service.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/section.service.ts#L58)
