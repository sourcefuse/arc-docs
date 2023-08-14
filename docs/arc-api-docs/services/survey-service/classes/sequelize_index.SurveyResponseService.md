[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyResponseService

# Class: SurveyResponseService

[sequelize.index](../modules/sequelize_index.md).SurveyResponseService

## Hierarchy

- [`SurveyResponseService`](index.SurveyResponseService.md)

  ↳ **`SurveyResponseService`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyResponseService.md#constructor)

### Properties

- [logger](sequelize_index.SurveyResponseService.md#logger)
- [surveyCycleRepository](sequelize_index.SurveyResponseService.md#surveycyclerepository)
- [surveyRepository](sequelize_index.SurveyResponseService.md#surveyrepository)
- [surveyResponderRepository](sequelize_index.SurveyResponseService.md#surveyresponderrepository)
- [surveyResponseDetailRepository](sequelize_index.SurveyResponseService.md#surveyresponsedetailrepository)
- [surveyResponseRepository](sequelize_index.SurveyResponseService.md#surveyresponserepository)

### Methods

- [createResponse](sequelize_index.SurveyResponseService.md#createresponse)
- [getQuestionMapId](sequelize_index.SurveyResponseService.md#getquestionmapid)
- [handleAnswer](sequelize_index.SurveyResponseService.md#handleanswer)
- [handleResponseWithType](sequelize_index.SurveyResponseService.md#handleresponsewithtype)
- [handleSurveyResponseDetail](sequelize_index.SurveyResponseService.md#handlesurveyresponsedetail)
- [validateAndGetResponder](sequelize_index.SurveyResponseService.md#validateandgetresponder)
- [validateSurveyCycleAndGetCycleId](sequelize_index.SurveyResponseService.md#validatesurveycycleandgetcycleid)

## Constructors

### constructor

• **new SurveyResponseService**(`surveyResponseRepository`, `surveyResponseDetailRepository`, `surveyRepository`, `surveyCycleRepository`, `logger`, `surveyResponderRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyResponseRepository` | [`SurveyResponseRepository`](sequelize_index.SurveyResponseRepository.md) |
| `surveyResponseDetailRepository` | [`SurveyResponseDetailRepository`](sequelize_index.SurveyResponseDetailRepository.md) |
| `surveyRepository` | [`SurveyRepository`](sequelize_index.SurveyRepository.md) |
| `surveyCycleRepository` | [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md) |
| `logger` | `ILogger` |
| `surveyResponderRepository` | [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md) |

#### Overrides

[SurveyResponseService](index.SurveyResponseService.md).[constructor](index.SurveyResponseService.md#constructor)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L15)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[logger](index.SurveyResponseService.md#logger)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L24)

___

### surveyCycleRepository

• `Protected` **surveyCycleRepository**: [`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[surveyCycleRepository](index.SurveyResponseService.md#surveycyclerepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L23)

___

### surveyRepository

• **surveyRepository**: [`SurveyRepository`](sequelize_index.SurveyRepository.md)

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[surveyRepository](index.SurveyResponseService.md#surveyrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L21)

___

### surveyResponderRepository

• `Protected` **surveyResponderRepository**: [`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[surveyResponderRepository](index.SurveyResponseService.md#surveyresponderrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L26)

___

### surveyResponseDetailRepository

• **surveyResponseDetailRepository**: [`SurveyResponseDetailRepository`](sequelize_index.SurveyResponseDetailRepository.md)

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[surveyResponseDetailRepository](index.SurveyResponseService.md#surveyresponsedetailrepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L19)

___

### surveyResponseRepository

• **surveyResponseRepository**: [`SurveyResponseRepository`](sequelize_index.SurveyResponseRepository.md)

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[surveyResponseRepository](index.SurveyResponseService.md#surveyresponserepository)

#### Defined in

[services/survey-service/src/services/sequelize/survey-response.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/sequelize/survey-response.service.ts#L17)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[createResponse](index.SurveyResponseService.md#createresponse)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[getQuestionMapId](index.SurveyResponseService.md#getquestionmapid)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[handleAnswer](index.SurveyResponseService.md#handleanswer)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[handleResponseWithType](index.SurveyResponseService.md#handleresponsewithtype)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[handleSurveyResponseDetail](index.SurveyResponseService.md#handlesurveyresponsedetail)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[validateAndGetResponder](index.SurveyResponseService.md#validateandgetresponder)

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

#### Inherited from

[SurveyResponseService](index.SurveyResponseService.md).[validateSurveyCycleAndGetCycleId](index.SurveyResponseService.md#validatesurveycycleandgetcycleid)

#### Defined in

[services/survey-service/src/services/survey-response.service.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/services/survey-response.service.ts#L160)
