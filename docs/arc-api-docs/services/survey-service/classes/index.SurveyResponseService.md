[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyResponseService

# Class: SurveyResponseService

[index](../modules/index.md).SurveyResponseService

## Hierarchy

- **`SurveyResponseService`**

  ↳ [`SurveyResponseService`](sequelize_index.SurveyResponseService.md)

## Table of contents

### Constructors

- [constructor](index.SurveyResponseService.md#constructor)

### Properties

- [logger](index.SurveyResponseService.md#logger)
- [surveyCycleRepository](index.SurveyResponseService.md#surveycyclerepository)
- [surveyRepository](index.SurveyResponseService.md#surveyrepository)
- [surveyResponderRepository](index.SurveyResponseService.md#surveyresponderrepository)
- [surveyResponseDetailRepository](index.SurveyResponseService.md#surveyresponsedetailrepository)
- [surveyResponseRepository](index.SurveyResponseService.md#surveyresponserepository)

### Methods

- [createResponse](index.SurveyResponseService.md#createresponse)
- [getQuestionMapId](index.SurveyResponseService.md#getquestionmapid)
- [handleAnswer](index.SurveyResponseService.md#handleanswer)
- [handleResponseWithType](index.SurveyResponseService.md#handleresponsewithtype)
- [handleSurveyResponseDetail](index.SurveyResponseService.md#handlesurveyresponsedetail)
- [validateAndGetResponder](index.SurveyResponseService.md#validateandgetresponder)
- [validateSurveyCycleAndGetCycleId](index.SurveyResponseService.md#validatesurveycycleandgetcycleid)

## Constructors

### constructor

• **new SurveyResponseService**(`surveyResponseRepository`, `surveyResponseDetailRepository`, `surveyRepository`, `surveyCycleRepository`, `logger`, `surveyResponderRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseRepository` | [`SurveyResponseRepository`](index.SurveyResponseRepository.md) \| [`SurveyResponseRepository`](sequelize_index.SurveyResponseRepository.md) |
| `surveyResponseDetailRepository` | [`SurveyResponseDetailRepository`](index.SurveyResponseDetailRepository.md) \| [`SurveyResponseDetailRepository`](sequelize_index.SurveyResponseDetailRepository.md) |
| `surveyRepository` | [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `logger` | `ILogger` |
| `surveyResponderRepository` | [`SurveyResponderRepository`](index.SurveyResponderRepository.md) \| [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md) |

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L41)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L56)

___

### surveyCycleRepository

• `Protected` **surveyCycleRepository**: [`SurveyCycleRepository`](index.SurveyCycleRepository.md) \| [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L53)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](index.SurveyRepository.md) \| [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L51)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](index.SurveyResponderRepository.md) \| [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L58)

___

### surveyResponseDetailRepository

• **surveyResponseDetailRepository**: [`SurveyResponseDetailRepository`](index.SurveyResponseDetailRepository.md) \| [`SurveyResponseDetailRepository`](sequelize_index.SurveyResponseDetailRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L47)

___

### surveyResponseRepository

• **surveyResponseRepository**: [`SurveyResponseRepository`](index.SurveyResponseRepository.md) \| [`SurveyResponseRepository`](sequelize_index.SurveyResponseRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L43)

## Methods

### createResponse

▸ **createResponse**(`surveyId`, `surveyResponseDto`): `Promise`<[`SurveyResponse`](index.SurveyResponse.md) & [`SurveyResponseRelations`](../interfaces/index.SurveyResponseRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `surveyResponseDto` | [`SurveyResponseDto`](index.SurveyResponseDto.md) |

#### Returns

`Promise`<[`SurveyResponse`](index.SurveyResponse.md) & [`SurveyResponseRelations`](../interfaces/index.SurveyResponseRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L63)

___

### getQuestionMapId

▸ **getQuestionMapId**(`questions`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `questions` | [`Question`](index.Question.md)[] |

#### Returns

`Object`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:256](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L256)

___

### handleAnswer

▸ **handleAnswer**(`surveyResponseDetailDto`, `surveyResponseId`, `questionType`, `textAnswer?`, `optionId?`): [`SurveyResponseDetail`](index.SurveyResponseDetail.md)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseDetailDto` | [`SurveyResponseDetailDto`](index.SurveyResponseDetailDto.md) |
| `surveyResponseId` | `string` |
| `questionType` | [`QuestionType`](../enums/index.QuestionType.md) |
| `textAnswer?` | `string` |
| `optionId?` | `string` |

#### Returns

[`SurveyResponseDetail`](index.SurveyResponseDetail.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:239](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L239)

___

### handleResponseWithType

▸ **handleResponseWithType**(`surveyResponseDetailDto`, `surveyResponseDetails`, `question`, `surveyResponseId`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseDetailDto` | [`SurveyResponseDetailDto`](index.SurveyResponseDetailDto.md) |
| `surveyResponseDetails` | [`SurveyResponseDetail`](index.SurveyResponseDetail.md)[] |
| `question` | [`Question`](index.Question.md) |
| `surveyResponseId` | `string` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L184)

___

### handleSurveyResponseDetail

▸ **handleSurveyResponseDetail**(`surveyResponseDetailsDto`, `questions`, `surveyResponseId`): [`SurveyResponseDetail`](index.SurveyResponseDetail.md)[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseDetailsDto` | [`SurveyResponseDetailDto`](index.SurveyResponseDetailDto.md)[] |
| `questions` | `Object` |
| `surveyResponseId` | `string` |

#### Returns

[`SurveyResponseDetail`](index.SurveyResponseDetail.md)[]

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:167](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L167)

___

### validateAndGetResponder

▸ **validateAndGetResponder**(`responderId`, `surveyId`, `surveyCycleId`): `Promise`<[`SurveyResponder`](index.SurveyResponder.md) & [`SurveyResponderRelations`](../interfaces/index.SurveyResponderRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `responderId` | `string` |
| `surveyId` | `string` |
| `surveyCycleId` | `string` |

#### Returns

`Promise`<[`SurveyResponder`](index.SurveyResponder.md) & [`SurveyResponderRelations`](../interfaces/index.SurveyResponderRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:282](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L282)

___

### validateSurveyCycleAndGetCycleId

▸ **validateSurveyCycleAndGetCycleId**(`surveyCycles`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyCycles` | [`SurveyCycle`](index.SurveyCycle.md)[] |

#### Returns

`string`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L160)
