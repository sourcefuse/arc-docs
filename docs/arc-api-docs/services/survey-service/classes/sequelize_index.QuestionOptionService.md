[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / QuestionOptionService

# Class: QuestionOptionService

[sequelize.index](../modules/sequelize_index.md).QuestionOptionService

## Hierarchy

- [`QuestionOptionService`](index.QuestionOptionService.md)

  ↳ **`QuestionOptionService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.QuestionOptionService.md#constructor)

### Properties

- [optionsRepository](sequelize_index.QuestionOptionService.md#optionsrepository)

### Methods

- [validateOptionCount](sequelize_index.QuestionOptionService.md#validateoptioncount)

## Constructors

### constructor

• **new QuestionOptionService**(`optionsRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `optionsRepository` | [`OptionsRepository`](sequelize_index.OptionsRepository.md) |

#### Overrides

[QuestionOptionService](index.QuestionOptionService.md).[constructor](index.QuestionOptionService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/question-option.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-option.service.ts#L12)

## Properties

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](sequelize_index.OptionsRepository.md)

#### Inherited from

[QuestionOptionService](index.QuestionOptionService.md).[optionsRepository](index.QuestionOptionService.md#optionsrepository)

#### Defined in

[services/survey-service/src/services/sequelize/question-option.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/question-option.service.ts#L14)

## Methods

### validateOptionCount

▸ **validateOptionCount**(`questionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |

#### Returns

`Promise`<`void`\>

#### Inherited from

[QuestionOptionService](index.QuestionOptionService.md).[validateOptionCount](index.QuestionOptionService.md#validateoptioncount)

#### Defined in

[services/survey-service/src/services/question-option.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-option.service.ts#L20)
