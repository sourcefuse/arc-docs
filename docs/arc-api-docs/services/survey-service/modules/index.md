[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / index

# Module: index

## Table of contents

### Namespaces

- [SurveyServiceBindings](index.SurveyServiceBindings.md)

### Enumerations

- [PermissionKey](../enums/index.PermissionKey.md)
- [QuestionStatus](../enums/index.QuestionStatus.md)
- [QuestionTemplateStatus](../enums/index.QuestionTemplateStatus.md)
- [QuestionType](../enums/index.QuestionType.md)
- [SurveyStatus](../enums/index.SurveyStatus.md)

### Classes

- [BulkDeleteDto](../classes/index.BulkDeleteDto.md)
- [CreateSurveyHelperService](../classes/index.CreateSurveyHelperService.md)
- [Options](../classes/index.Options.md)
- [OptionsRepository](../classes/index.OptionsRepository.md)
- [Question](../classes/index.Question.md)
- [QuestionDto](../classes/index.QuestionDto.md)
- [QuestionDuplicateDto](../classes/index.QuestionDuplicateDto.md)
- [QuestionDuplicateHelperService](../classes/index.QuestionDuplicateHelperService.md)
- [QuestionHelperService](../classes/index.QuestionHelperService.md)
- [QuestionOptionService](../classes/index.QuestionOptionService.md)
- [QuestionRepository](../classes/index.QuestionRepository.md)
- [QuestionTemplate](../classes/index.QuestionTemplate.md)
- [QuestionTemplateRepository](../classes/index.QuestionTemplateRepository.md)
- [QuestionTemplateResponse](../classes/index.QuestionTemplateResponse.md)
- [QuestionTemplateService](../classes/index.QuestionTemplateService.md)
- [QuestionTemplatesDto](../classes/index.QuestionTemplatesDto.md)
- [Section](../classes/index.Section.md)
- [SectionRepository](../classes/index.SectionRepository.md)
- [SectionService](../classes/index.SectionService.md)
- [Survey](../classes/index.Survey.md)
- [SurveyCycle](../classes/index.SurveyCycle.md)
- [SurveyCycleRepository](../classes/index.SurveyCycleRepository.md)
- [SurveyCycleService](../classes/index.SurveyCycleService.md)
- [SurveyDto](../classes/index.SurveyDto.md)
- [SurveyQuestion](../classes/index.SurveyQuestion.md)
- [SurveyQuestionDto](../classes/index.SurveyQuestionDto.md)
- [SurveyQuestionRepository](../classes/index.SurveyQuestionRepository.md)
- [SurveyRepository](../classes/index.SurveyRepository.md)
- [SurveyResponder](../classes/index.SurveyResponder.md)
- [SurveyResponderRepository](../classes/index.SurveyResponderRepository.md)
- [SurveyResponderService](../classes/index.SurveyResponderService.md)
- [SurveyResponse](../classes/index.SurveyResponse.md)
- [SurveyResponseDetail](../classes/index.SurveyResponseDetail.md)
- [SurveyResponseDetailDto](../classes/index.SurveyResponseDetailDto.md)
- [SurveyResponseDetailRepository](../classes/index.SurveyResponseDetailRepository.md)
- [SurveyResponseDto](../classes/index.SurveyResponseDto.md)
- [SurveyResponseRepository](../classes/index.SurveyResponseRepository.md)
- [SurveyResponseService](../classes/index.SurveyResponseService.md)
- [SurveyService](../classes/index.SurveyService.md)
- [SurveyServiceComponent](../classes/index.SurveyServiceComponent.md)
- [TemplateQuestion](../classes/index.TemplateQuestion.md)
- [TemplateQuestionRepository](../classes/index.TemplateQuestionRepository.md)

### Interfaces

- [ISurveyServiceConfig](../interfaces/index.ISurveyServiceConfig.md)
- [OptionsRelations](../interfaces/index.OptionsRelations.md)
- [QuestionRelations](../interfaces/index.QuestionRelations.md)
- [SurveyCycleRelations](../interfaces/index.SurveyCycleRelations.md)
- [SurveyRelations](../interfaces/index.SurveyRelations.md)
- [SurveyResponderRelations](../interfaces/index.SurveyResponderRelations.md)
- [SurveyResponseRelations](../interfaces/index.SurveyResponseRelations.md)
- [TemplateQuestionRelations](../interfaces/index.TemplateQuestionRelations.md)

### Type Aliases

- [OptionsWithRelations](index.md#optionswithrelations)
- [QuestionTemplateWithRelations](index.md#questiontemplatewithrelations)
- [QuestionWithRelations](index.md#questionwithrelations)
- [SurveyCycleWithRelations](index.md#surveycyclewithrelations)
- [SurveyDtoWithRelations](index.md#surveydtowithrelations)
- [SurveyQuestionWithRelations](index.md#surveyquestionwithrelations)
- [SurveyResponderWithRelations](index.md#surveyresponderwithrelations)
- [SurveyResponseWithRelations](index.md#surveyresponsewithrelations)
- [SurveyWithRelations](index.md#surveywithrelations)
- [TemplateQuestionWithRelations](index.md#templatequestionwithrelations)

### Variables

- [AppErrorCodes](index.md#apperrorcodes)
- [ErrorKeys](index.md#errorkeys)
- [SurveyDbSourceName](index.md#surveydbsourcename)

## Type Aliases

### OptionsWithRelations

Ƭ **OptionsWithRelations**: [`Options`](../classes/index.Options.md) & [`OptionsRelations`](../interfaces/index.OptionsRelations.md)

#### Defined in

[services/survey-service/src/models/options.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/options.model.ts#L82)

___

### QuestionTemplateWithRelations

Ƭ **QuestionTemplateWithRelations**: [`QuestionTemplate`](../classes/index.QuestionTemplate.md)

#### Defined in

[services/survey-service/src/models/question-template.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/question-template.model.ts#L64)

___

### QuestionWithRelations

Ƭ **QuestionWithRelations**: [`Question`](../classes/index.Question.md) & [`QuestionRelations`](../interfaces/index.QuestionRelations.md)

#### Defined in

[services/survey-service/src/models/questions.model.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/questions.model.ts#L144)

___

### SurveyCycleWithRelations

Ƭ **SurveyCycleWithRelations**: [`SurveyCycle`](../classes/index.SurveyCycle.md) & [`SurveyCycleRelations`](../interfaces/index.SurveyCycleRelations.md)

#### Defined in

[services/survey-service/src/models/survey-cycle.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-cycle.model.ts#L67)

___

### SurveyDtoWithRelations

Ƭ **SurveyDtoWithRelations**: [`SurveyDto`](../classes/index.SurveyDto.md)

#### Defined in

[services/survey-service/src/models/survey-dto.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-dto.model.ts#L17)

___

### SurveyQuestionWithRelations

Ƭ **SurveyQuestionWithRelations**: [`SurveyQuestion`](../classes/index.SurveyQuestion.md)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-question.model.ts#L122)

___

### SurveyResponderWithRelations

Ƭ **SurveyResponderWithRelations**: [`SurveyResponder`](../classes/index.SurveyResponder.md) & [`SurveyResponderRelations`](../interfaces/index.SurveyResponderRelations.md)

#### Defined in

[services/survey-service/src/models/survey-responder.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-responder.model.ts#L108)

___

### SurveyResponseWithRelations

Ƭ **SurveyResponseWithRelations**: [`SurveyResponse`](../classes/index.SurveyResponse.md) & [`SurveyResponseRelations`](../interfaces/index.SurveyResponseRelations.md)

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L78)

___

### SurveyWithRelations

Ƭ **SurveyWithRelations**: [`Survey`](../classes/index.Survey.md) & [`SurveyRelations`](../interfaces/index.SurveyRelations.md)

#### Defined in

[services/survey-service/src/models/survey.model.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L133)

___

### TemplateQuestionWithRelations

Ƭ **TemplateQuestionWithRelations**: [`TemplateQuestion`](../classes/index.TemplateQuestion.md) & [`TemplateQuestionRelations`](../interfaces/index.TemplateQuestionRelations.md)

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L90)

## Variables

### AppErrorCodes

• `Const` **AppErrorCodes**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `ER_DUP_ENTRY` | `string` |

#### Defined in

[services/survey-service/src/enum/error-codes.enum.ts:1](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/enum/error-codes.enum.ts#L1)

___

### ErrorKeys

• `Const` **ErrorKeys**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `AddApprovedQuestionTemplateId` | `string` |
| `DecimalValueNotSupported` | `string` |
| `DeleteNotAllowedForSurveyOrTemplateUsedEntity` | `string` |
| `DisplayOrderMissing` | `string` |
| `DuplicateSurveyQuestionEntry` | `string` |
| `DuplicateTemplateQuestionEntry` | `string` |
| `EndDateCanNotBeLess` | `string` |
| `EndDateCannotBeInPast` | `string` |
| `InvalidName` | `string` |
| `InvalidStatus` | `string` |
| `MaxOptionsInQuestionReached` | `string` |
| `MaxSurveyTextLength` | `string` |
| `NotAuthorised` | `string` |
| `PastDateNotAllowed` | `string` |
| `QuestionTemplateStatusNotInDraftOrApproved` | `string` |
| `RemoveExtraParams` | `string` |
| `RequiredSurveyParamsMissing` | `string` |
| `SurveyCanNotBeDeleted` | `string` |
| `SurveyCannotBeActivated` | `string` |
| `SurveyCannotBeActivatedInDraftState` | `string` |
| `SurveyIdDoesNotMatch` | `string` |
| `SurveyResponseDetailNotFound` | `string` |
| `SurveyStartDateShouldBeCurrentDate` | `string` |

#### Defined in

[services/survey-service/src/enum/error-keys.enum.ts:1](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/enum/error-keys.enum.ts#L1)

___

### SurveyDbSourceName

• `Const` **SurveyDbSourceName**: ``"SurveyDb"``

#### Defined in

[services/survey-service/src/types.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/types.ts#L12)
