[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponderService

# Class: SurveyResponderService

## Table of contents

### Constructors

- [constructor](SurveyResponderService.md#constructor)

### Properties

- [logger](SurveyResponderService.md#logger)
- [surveyCycleRepository](SurveyResponderService.md#surveycyclerepository)
- [surveyCycleService](SurveyResponderService.md#surveycycleservice)
- [surveyRepository](SurveyResponderService.md#surveyrepository)
- [surveyResponderRepository](SurveyResponderService.md#surveyresponderrepository)
- [surveyService](SurveyResponderService.md#surveyservice)

### Methods

- [\_getExpiresInSeconds](SurveyResponderService.md#_getexpiresinseconds)
- [createSurveyResponder](SurveyResponderService.md#createsurveyresponder)
- [getAccessToken](SurveyResponderService.md#getaccesstoken)

## Constructors

### constructor

• **new SurveyResponderService**(`logger`, `surveyResponderRepository`, `surveyCycleRepository`, `surveyRepository`, `surveyService`, `surveyCycleService`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `surveyResponderRepository` | [`SurveyResponderRepository`](SurveyResponderRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](SurveyCycleRepository.md) |
| `surveyRepository` | [`SurveyRepository`](SurveyRepository.md) |
| `surveyService` | [`SurveyService`](SurveyService.md) |
| `surveyCycleService` | [`SurveyCycleService`](SurveyCycleService.md) |

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L19)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L20)

___

### surveyCycleRepository

• `Protected` **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L24)

___

### surveyCycleService

• **surveyCycleService**: [`SurveyCycleService`](SurveyCycleService.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L30)

___

### surveyRepository

• `Protected` **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L26)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L22)

___

### surveyService

• **surveyService**: [`SurveyService`](SurveyService.md)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L28)

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

[services/survey-service/src/services/survey-responder.service.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L118)

___

### createSurveyResponder

▸ **createSurveyResponder**(`surveyId`, `surveyResponder`): `Promise`<[`SurveyResponder`](SurveyResponder.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `surveyResponder` | `Omit`<[`SurveyResponder`](SurveyResponder.md), ``"id"``\> |

#### Returns

`Promise`<[`SurveyResponder`](SurveyResponder.md)\>

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L33)

___

### getAccessToken

▸ **getAccessToken**(`surveyResponders`, `surveyId`): `Promise`<`undefined` \| { `tokens`: `string`[]  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponders` | [`SurveyResponder`](SurveyResponder.md)[] |
| `surveyId` | `string` |

#### Returns

`Promise`<`undefined` \| { `tokens`: `string`[]  }\>

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-responder.service.ts#L74)
