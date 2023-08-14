[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyResponderService

# Class: SurveyResponderService

[index](../modules/index.md).SurveyResponderService

## Hierarchy

- **`SurveyResponderService`**

  ↳ [`SurveyResponderService`](sequelize_index.SurveyResponderService.md)

## Table of contents

### Constructors

- [constructor](index.SurveyResponderService.md#constructor)

### Properties

- [logger](index.SurveyResponderService.md#logger)
- [surveyCycleRepository](index.SurveyResponderService.md#surveycyclerepository)
- [surveyRepository](index.SurveyResponderService.md#surveyrepository)

### Methods

- [\_getExpiresInSeconds](index.SurveyResponderService.md#_getexpiresinseconds)
- [getAccessToken](index.SurveyResponderService.md#getaccesstoken)

## Constructors

### constructor

• **new SurveyResponderService**(`logger`, `surveyCycleRepository`, `surveyRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `surveyCycleRepository` | [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `surveyRepository` | [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md) |

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L16)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L17)

___

### surveyCycleRepository

• `Protected` **surveyCycleRepository**: [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L19)

___

### surveyRepository

• `Protected` **surveyRepository**: [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L23)

## Methods

### \_getExpiresInSeconds

▸ `Private` **_getExpiresInSeconds**(`endDate`): `number`

#### Parameters

| Name | Type |
| :------ | :------ |
| `endDate` | `string` |

#### Returns

`number`

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L70)

___

### getAccessToken

▸ **getAccessToken**(`surveyResponders`, `surveyId`): `Promise`<`undefined` \| { `tokens`: `string`[]  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponders` | [`SurveyResponder`](index.SurveyResponder.md)[] |
| `surveyId` | `string` |

#### Returns

`Promise`<`undefined` \| { `tokens`: `string`[]  }\>

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L26)
