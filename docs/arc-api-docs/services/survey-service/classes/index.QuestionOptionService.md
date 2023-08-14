[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / QuestionOptionService

# Class: QuestionOptionService

[index](../modules/index.md).QuestionOptionService

## Hierarchy

- **`QuestionOptionService`**

  ↳ [`QuestionOptionService`](sequelize_index.QuestionOptionService.md)

## Table of contents

### Constructors

- [constructor](index.QuestionOptionService.md#constructor)

### Properties

- [optionsRepository](index.QuestionOptionService.md#optionsrepository)

### Methods

- [validateOptionCount](index.QuestionOptionService.md#validateoptioncount)

## Constructors

### constructor

• **new QuestionOptionService**(`optionsRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `optionsRepository` | [`OptionsRepository`](index.OptionsRepository.md) \| [`OptionsRepository`](sequelize_index.OptionsRepository.md) |

#### Defined in

[services/survey-service/src/services/question-option.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-option.service.ts#L15)

## Properties

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](index.OptionsRepository.md) \| [`OptionsRepository`](sequelize_index.OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-option.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-option.service.ts#L17)

## Methods

### validateOptionCount

▸ **validateOptionCount**(`questionId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `questionId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/question-option.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/question-option.service.ts#L20)
