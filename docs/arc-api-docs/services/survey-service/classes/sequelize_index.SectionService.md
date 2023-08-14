[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SectionService

# Class: SectionService

[sequelize.index](../modules/sequelize_index.md).SectionService

## Hierarchy

- [`SectionService`](index.SectionService.md)

  ↳ **`SectionService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SectionService.md#constructor)

### Properties

- [logger](sequelize_index.SectionService.md#logger)
- [sectionRepository](sequelize_index.SectionService.md#sectionrepository)
- [surveyQuestionRepository](sequelize_index.SectionService.md#surveyquestionrepository)
- [surveyRepository](sequelize_index.SectionService.md#surveyrepository)

### Methods

- [checkBasicSectionValidation](sequelize_index.SectionService.md#checkbasicsectionvalidation)
- [handleDeleteSection](sequelize_index.SectionService.md#handledeletesection)

## Constructors

### constructor

• **new SectionService**(`sectionRepository`, `surveyQuestionRepository`, `surveyRepository`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `sectionRepository` | [`SectionRepository`](sequelize_index.SectionRepository.md) |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md) |
| `surveyRepository` | [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `logger` | `ILogger` |

#### Overrides

[SectionService](index.SectionService.md).[constructor](index.SectionService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/section.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/section.service.ts#L18)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[SectionService](index.SectionService.md).[logger](index.SectionService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/section.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/section.service.ts#L25)

___

### sectionRepository

• **sectionRepository**: [`SectionRepository`](sequelize_index.SectionRepository.md)

#### Inherited from

[SectionService](index.SectionService.md).[sectionRepository](index.SectionService.md#sectionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/section.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/section.service.ts#L20)

___

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)

#### Inherited from

[SectionService](index.SectionService.md).[surveyQuestionRepository](index.SectionService.md#surveyquestionrepository)

#### Defined in

[services/survey-service/src/services/sequelize/section.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/section.service.ts#L22)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Inherited from

[SectionService](index.SectionService.md).[surveyRepository](index.SectionService.md#surveyrepository)

#### Defined in

[services/survey-service/src/services/sequelize/section.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/section.service.ts#L24)

## Methods

### checkBasicSectionValidation

▸ **checkBasicSectionValidation**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[SectionService](index.SectionService.md).[checkBasicSectionValidation](index.SectionService.md#checkbasicsectionvalidation)

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

#### Inherited from

[SectionService](index.SectionService.md).[handleDeleteSection](index.SectionService.md#handledeletesection)

#### Defined in

[services/survey-service/src/services/section.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/section.service.ts#L34)
