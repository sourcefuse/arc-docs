[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyResponderService

# Class: SurveyResponderService

[sequelize.index](../modules/sequelize_index.md).SurveyResponderService

## Hierarchy

- [`SurveyResponderService`](index.SurveyResponderService.md)

  ↳ **`SurveyResponderService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyResponderService.md#constructor)

### Properties

- [logger](sequelize_index.SurveyResponderService.md#logger)
- [surveyCycleRepository](sequelize_index.SurveyResponderService.md#surveycyclerepository)
- [surveyRepository](sequelize_index.SurveyResponderService.md#surveyrepository)

### Methods

- [getAccessToken](sequelize_index.SurveyResponderService.md#getaccesstoken)

## Constructors

### constructor

• **new SurveyResponderService**(`logger`, `surveyCycleRepository`, `surveyRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `surveyCycleRepository` | [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `surveyRepository` | [`SurveyRepository`](sequelize_index.SurveyRepository.md) |

#### Overrides

[SurveyResponderService](index.SurveyResponderService.md).[constructor](index.SurveyResponderService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/survey-responder.service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-responder.service.ts#L12)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[SurveyResponderService](index.SurveyResponderService.md).[logger](index.SurveyResponderService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/survey-responder.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-responder.service.ts#L13)

___

### surveyCycleRepository

• `Protected` **surveyCycleRepository**: [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Inherited from

[SurveyResponderService](index.SurveyResponderService.md).[surveyCycleRepository](index.SurveyResponderService.md#surveycyclerepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-responder.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-responder.service.ts#L15)

___

### surveyRepository

• `Protected` **surveyRepository**: [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Inherited from

[SurveyResponderService](index.SurveyResponderService.md).[surveyRepository](index.SurveyResponderService.md#surveyrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-responder.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-responder.service.ts#L17)

## Methods

### getAccessToken

▸ **getAccessToken**(`surveyResponders`, `surveyId`): `Promise`<`undefined` \| { `tokens`: `string`[]  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponders` | [`SurveyResponder`](index.SurveyResponder.md)[] |
| `surveyId` | `string` |

#### Returns

`Promise`<`undefined` \| { `tokens`: `string`[]  }\>

#### Inherited from

[SurveyResponderService](index.SurveyResponderService.md).[getAccessToken](index.SurveyResponderService.md#getaccesstoken)

#### Defined in

[services/survey-service/src/services/survey-responder.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-responder.service.ts#L26)
