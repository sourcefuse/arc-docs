[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionOptionService

# Class: QuestionOptionService

## Table of contents

### Constructors

- [constructor](QuestionOptionService.md#constructor)

### Properties

- [optionsRepository](QuestionOptionService.md#optionsrepository)

### Methods

- [validateOptionCount](QuestionOptionService.md#validateoptioncount)

## Constructors

### constructor

• **new QuestionOptionService**(`optionsRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `optionsRepository` | [`OptionsRepository`](OptionsRepository.md) |

#### Defined in

[services/survey-service/src/services/question-option.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-option.service.ts#L14)

## Properties

### optionsRepository

• **optionsRepository**: [`OptionsRepository`](OptionsRepository.md)

#### Defined in

[services/survey-service/src/services/question-option.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-option.service.ts#L16)

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

[services/survey-service/src/services/question-option.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/question-option.service.ts#L19)
