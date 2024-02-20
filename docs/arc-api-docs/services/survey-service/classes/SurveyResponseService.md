[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponseService

# Class: SurveyResponseService

## Table of contents

### Constructors

- [constructor](SurveyResponseService.md#constructor)

### Properties

- [logger](SurveyResponseService.md#logger)
- [surveyCycleRepository](SurveyResponseService.md#surveycyclerepository)
- [surveyRepository](SurveyResponseService.md#surveyrepository)
- [surveyResponderRepository](SurveyResponseService.md#surveyresponderrepository)
- [surveyResponseDetailRepository](SurveyResponseService.md#surveyresponsedetailrepository)
- [surveyResponseRepository](SurveyResponseService.md#surveyresponserepository)

### Methods

- [createResponse](SurveyResponseService.md#createresponse)
- [getQuestionMapId](SurveyResponseService.md#getquestionmapid)
- [handleAnswer](SurveyResponseService.md#handleanswer)
- [handleResponseWithType](SurveyResponseService.md#handleresponsewithtype)
- [handleSurveyResponseDetail](SurveyResponseService.md#handlesurveyresponsedetail)
- [validateAndGetResponder](SurveyResponseService.md#validateandgetresponder)
- [validateSurveyCycleAndGetCycleId](SurveyResponseService.md#validatesurveycycleandgetcycleid)

## Constructors

### constructor

• **new SurveyResponseService**(`surveyResponseRepository`, `surveyResponseDetailRepository`, `surveyRepository`, `surveyCycleRepository`, `logger`, `surveyResponderRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseRepository` | [`SurveyResponseRepository`](SurveyResponseRepository.md) |
| `surveyResponseDetailRepository` | [`SurveyResponseDetailRepository`](SurveyResponseDetailRepository.md) |
| `surveyRepository` | [`SurveyRepository`](SurveyRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](SurveyCycleRepository.md) |
| `logger` | `ILogger` |
| `surveyResponderRepository` | [`SurveyResponderRepository`](SurveyResponderRepository.md) |

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L30)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L39)

___

### surveyCycleRepository

• `Protected` **surveyCycleRepository**: [`SurveyCycleRepository`](SurveyCycleRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L38)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](SurveyRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L36)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](SurveyResponderRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L41)

___

### surveyResponseDetailRepository

• **surveyResponseDetailRepository**: [`SurveyResponseDetailRepository`](SurveyResponseDetailRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L34)

___

### surveyResponseRepository

• **surveyResponseRepository**: [`SurveyResponseRepository`](SurveyResponseRepository.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L32)

## Methods

### createResponse

▸ **createResponse**(`token`, `surveyId`, `surveyResponseDto`): `Promise`<[`SurveyResponse`](SurveyResponse.md) & [`SurveyResponseRelations`](../interfaces/SurveyResponseRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `token` | `string` |
| `surveyId` | `string` |
| `surveyResponseDto` | [`SurveyResponseDto`](SurveyResponseDto.md) |

#### Returns

`Promise`<[`SurveyResponse`](SurveyResponse.md) & [`SurveyResponseRelations`](../interfaces/SurveyResponseRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L44)

___

### getQuestionMapId

▸ **getQuestionMapId**(`questions`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `questions` | [`Question`](Question.md)[] |

#### Returns

`Object`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:264](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L264)

___

### handleAnswer

▸ **handleAnswer**(`surveyResponseDetailDto`, `surveyResponseId`, `questionType`, `textAnswer?`, `optionId?`): [`SurveyResponseDetail`](SurveyResponseDetail.md)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseDetailDto` | [`SurveyResponseDetailDto`](SurveyResponseDetailDto.md) |
| `surveyResponseId` | `string` |
| `questionType` | [`QuestionType`](../enums/QuestionType.md) |
| `textAnswer?` | `string` |
| `optionId?` | `string` |

#### Returns

[`SurveyResponseDetail`](SurveyResponseDetail.md)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:247](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L247)

___

### handleResponseWithType

▸ **handleResponseWithType**(`surveyResponseDetailDto`, `surveyResponseDetails`, `question`, `surveyResponseId`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseDetailDto` | [`SurveyResponseDetailDto`](SurveyResponseDetailDto.md) |
| `surveyResponseDetails` | [`SurveyResponseDetail`](SurveyResponseDetail.md)[] |
| `question` | [`Question`](Question.md) |
| `surveyResponseId` | `string` |

#### Returns

`void`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:192](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L192)

___

### handleSurveyResponseDetail

▸ **handleSurveyResponseDetail**(`surveyResponseDetailsDto`, `questions`, `surveyResponseId`): [`SurveyResponseDetail`](SurveyResponseDetail.md)[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseDetailsDto` | [`SurveyResponseDetailDto`](SurveyResponseDetailDto.md)[] |
| `questions` | `Object` |
| `surveyResponseId` | `string` |

#### Returns

[`SurveyResponseDetail`](SurveyResponseDetail.md)[]

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:175](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L175)

___

### validateAndGetResponder

▸ **validateAndGetResponder**(`responderId`, `surveyId`, `surveyCycleId`): `Promise`<[`SurveyResponder`](SurveyResponder.md) & [`SurveyResponderRelations`](../interfaces/SurveyResponderRelations.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `responderId` | `string` |
| `surveyId` | `string` |
| `surveyCycleId` | `string` |

#### Returns

`Promise`<[`SurveyResponder`](SurveyResponder.md) & [`SurveyResponderRelations`](../interfaces/SurveyResponderRelations.md)\>

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:290](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L290)

___

### validateSurveyCycleAndGetCycleId

▸ **validateSurveyCycleAndGetCycleId**(`surveyCycles`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyCycles` | [`SurveyCycle`](SurveyCycle.md)[] |

#### Returns

`string`

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-response.service.ts#L168)
