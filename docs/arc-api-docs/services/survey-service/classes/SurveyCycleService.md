[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyCycleService

# Class: SurveyCycleService

## Table of contents

### Constructors

- [constructor](SurveyCycleService.md#constructor)

### Properties

- [logger](SurveyCycleService.md#logger)
- [surveyCycleRepository](SurveyCycleService.md#surveycyclerepository)
- [surveyRepository](SurveyCycleService.md#surveyrepository)

### Methods

- [checkIfResponderAddedInActiveCycle](SurveyCycleService.md#checkifresponderaddedinactivecycle)
- [createFirstSurveyCycle](SurveyCycleService.md#createfirstsurveycycle)
- [createSurveyCycle](SurveyCycleService.md#createsurveycycle)
- [validateSurveyCycle](SurveyCycleService.md#validatesurveycycle)

## Constructors

### constructor

• **new SurveyCycleService**(`surveyRepository`, `surveyCycleRepository`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyRepository` | [`SurveyRepository`](SurveyRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](SurveyCycleRepository.md) |
| `logger` | `ILogger` |

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L13)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L18)

___

### surveyCycleRepository

• **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L17)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L15)

## Methods

### checkIfResponderAddedInActiveCycle

▸ **checkIfResponderAddedInActiveCycle**(`surveyResponder`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponder` | [`SurveyResponder`](SurveyResponder.md) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L54)

___

### createFirstSurveyCycle

▸ **createFirstSurveyCycle**(`surveyId`): `Promise`<[`Count`]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<[`Count`]\>

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L76)

___

### createSurveyCycle

▸ **createSurveyCycle**(`surveyId`, `surveyCycle`): `Promise`<[`SurveyCycle`](SurveyCycle.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `surveyCycle` | `Omit`<[`SurveyCycle`](SurveyCycle.md), ``"id"``\> |

#### Returns

`Promise`<[`SurveyCycle`](SurveyCycle.md)\>

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L21)

___

### validateSurveyCycle

▸ **validateSurveyCycle**(`surveyCycleId`, `surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyCycleId` | `string` |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/services/survey-cycle.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-cycle.service.ts#L43)
