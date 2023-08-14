[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyCycleService

# Class: SurveyCycleService

[index](../modules/index.md).SurveyCycleService

## Hierarchy

- **`SurveyCycleService`**

  ↳ [`SurveyCycleService`](sequelize_index.SurveyCycleService.md)

## Table of contents

### Constructors

- [constructor](index.SurveyCycleService.md#constructor)

### Properties

- [logger](index.SurveyCycleService.md#logger)
- [surveyCycleRepository](index.SurveyCycleService.md#surveycyclerepository)
- [surveyRepository](index.SurveyCycleService.md#surveyrepository)

### Methods

- [createFirstSurveyCycle](index.SurveyCycleService.md#createfirstsurveycycle)

## Constructors

### constructor

• **new SurveyCycleService**(`surveyRepository`, `surveyCycleRepository`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-cycle.service.ts#L14)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-cycle.service.ts#L21)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-cycle.service.ts#L18)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-cycle.service.ts#L16)

## Methods

### createFirstSurveyCycle

▸ **createFirstSurveyCycle**(`surveyId`): `Promise`<[`Count`]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<[`Count`]\>

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-cycle.service.ts#L24)
