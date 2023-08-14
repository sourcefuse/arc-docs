[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyCycleService

# Class: SurveyCycleService

[sequelize.index](../modules/sequelize_index.md).SurveyCycleService

## Hierarchy

- [`SurveyCycleService`](index.SurveyCycleService.md)

  ↳ **`SurveyCycleService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyCycleService.md#constructor)

### Properties

- [logger](sequelize_index.SurveyCycleService.md#logger)
- [surveyCycleRepository](sequelize_index.SurveyCycleService.md#surveycyclerepository)
- [surveyRepository](sequelize_index.SurveyCycleService.md#surveyrepository)

### Methods

- [createFirstSurveyCycle](sequelize_index.SurveyCycleService.md#createfirstsurveycycle)

## Constructors

### constructor

• **new SurveyCycleService**(`surveyRepository`, `surveyCycleRepository`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `logger` | `ILogger` |

#### Overrides

[SurveyCycleService](index.SurveyCycleService.md).[constructor](index.SurveyCycleService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/survey-cycle.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-cycle.service.ts#L12)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[SurveyCycleService](index.SurveyCycleService.md).[logger](index.SurveyCycleService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/survey-cycle.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-cycle.service.ts#L17)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Inherited from

[SurveyCycleService](index.SurveyCycleService.md).[surveyCycleRepository](index.SurveyCycleService.md#surveycyclerepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-cycle.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-cycle.service.ts#L16)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Inherited from

[SurveyCycleService](index.SurveyCycleService.md).[surveyRepository](index.SurveyCycleService.md#surveyrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-cycle.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-cycle.service.ts#L14)

## Methods

### createFirstSurveyCycle

▸ **createFirstSurveyCycle**(`surveyId`): `Promise`<[`Count`]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<[`Count`]\>

#### Inherited from

[SurveyCycleService](index.SurveyCycleService.md).[createFirstSurveyCycle](index.SurveyCycleService.md#createfirstsurveycycle)

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-cycle.service.ts#L24)
