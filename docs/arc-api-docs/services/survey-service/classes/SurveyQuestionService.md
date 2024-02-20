[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyQuestionService

# Class: SurveyQuestionService

## Table of contents

### Constructors

- [constructor](SurveyQuestionService.md#constructor)

### Properties

- [surveyQuestionRepository](SurveyQuestionService.md#surveyquestionrepository)

### Methods

- [createSurveyQuestion](SurveyQuestionService.md#createsurveyquestion)

## Constructors

### constructor

• **new SurveyQuestionService**(`surveyQuestionRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyQuestionRepository` | [`SurveyQuestionRepository`](SurveyQuestionRepository.md) |

#### Defined in

[services/survey-service/src/services/survey-question.service.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-question.service.ts#L9)

## Properties

### surveyQuestionRepository

• **surveyQuestionRepository**: [`SurveyQuestionRepository`](SurveyQuestionRepository.md)

#### Defined in

[services/survey-service/src/services/survey-question.service.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-question.service.ts#L11)

## Methods

### createSurveyQuestion

▸ **createSurveyQuestion**(`surveyId`, `surveyQuestionDto`): `Promise`<[`SurveyQuestion`](SurveyQuestion.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `surveyQuestionDto` | `Omit`<[`SurveyQuestionDto`](SurveyQuestionDto.md), ``"id"``\> |

#### Returns

`Promise`<[`SurveyQuestion`](SurveyQuestion.md)<`DataObject`<`Model`\>\>\>

#### Defined in

[services/survey-service/src/services/survey-question.service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/services/survey-question.service.ts#L14)
