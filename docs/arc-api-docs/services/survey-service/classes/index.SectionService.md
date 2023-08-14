[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SectionService

# Class: SectionService

[index](../modules/index.md).SectionService

## Hierarchy

- **`SectionService`**

  ↳ [`SectionService`](sequelize_index.SectionService.md)

## Table of contents

### Constructors

- [constructor](index.SectionService.md#constructor)

### Properties

- [logger](index.SectionService.md#logger)
- [sectionRepository](index.SectionService.md#sectionrepository)
- [surveyQuestionRepository](index.SectionService.md#surveyquestionrepository)
- [surveyRepository](index.SectionService.md#surveyrepository)

### Methods

- [checkBasicSectionValidation](index.SectionService.md#checkbasicsectionvalidation)
- [handleDeleteSection](index.SectionService.md#handledeletesection)

## Constructors

### constructor

• **new SectionService**(`sectionRepository`, `surveyQuestionRepository`, `surveyRepository`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `sectionRepository` | [`SectionRepository`](index.SectionRepository.md) \| [`SectionRepository`](sequelize_index.SectionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `surveyRepository` | [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/section.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L22)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/section.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L31)

___

### sectionRepository

• **sectionRepository**: [`SectionRepository`](index.SectionRepository.md) \| [`SectionRepository`](sequelize_index.SectionRepository.md)

#### Defined in

[services/survey-service/src/services/section.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L24)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](index.SurveyQuestionRepository.md) \| [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/section.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L26)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/section.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L30)

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

[services/survey-service/src/services/section.service.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L95)

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

[services/survey-service/src/services/section.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L34)
