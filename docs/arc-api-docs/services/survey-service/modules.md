[@sourceloop/survey-service](README.md) / Exports

# @sourceloop/survey-service

## Table of contents

### Namespaces

- [SurveyServiceBindings](modules/SurveyServiceBindings.md)

### Enumerations

- [PermissionKey](enums/PermissionKey.md)
- [QuestionStatus](enums/QuestionStatus.md)
- [QuestionTemplateStatus](enums/QuestionTemplateStatus.md)
- [QuestionType](enums/QuestionType.md)
- [SurveyStatus](enums/SurveyStatus.md)

### Classes

- [BulkDeleteDto](classes/BulkDeleteDto.md)
- [CreateSurveyHelperService](classes/CreateSurveyHelperService.md)
- [Options](classes/Options.md)
- [OptionsRepository](classes/OptionsRepository.md)
- [Question](classes/Question.md)
- [QuestionDto](classes/QuestionDto.md)
- [QuestionDuplicateDto](classes/QuestionDuplicateDto.md)
- [QuestionDuplicateHelperService](classes/QuestionDuplicateHelperService.md)
- [QuestionHelperService](classes/QuestionHelperService.md)
- [QuestionOptionService](classes/QuestionOptionService.md)
- [QuestionRepository](classes/QuestionRepository.md)
- [QuestionTemplate](classes/QuestionTemplate.md)
- [QuestionTemplateRepository](classes/QuestionTemplateRepository.md)
- [QuestionTemplateResponse](classes/QuestionTemplateResponse.md)
- [QuestionTemplateService](classes/QuestionTemplateService.md)
- [QuestionTemplatesDto](classes/QuestionTemplatesDto.md)
- [Section](classes/Section.md)
- [SectionRepository](classes/SectionRepository.md)
- [SectionService](classes/SectionService.md)
- [Survey](classes/Survey.md)
- [SurveyCycle](classes/SurveyCycle.md)
- [SurveyCycleRepository](classes/SurveyCycleRepository.md)
- [SurveyCycleService](classes/SurveyCycleService.md)
- [SurveyDto](classes/SurveyDto.md)
- [SurveyQuestion](classes/SurveyQuestion.md)
- [SurveyQuestionDto](classes/SurveyQuestionDto.md)
- [SurveyQuestionRepository](classes/SurveyQuestionRepository.md)
- [SurveyQuestionService](classes/SurveyQuestionService.md)
- [SurveyRepository](classes/SurveyRepository.md)
- [SurveyResponder](classes/SurveyResponder.md)
- [SurveyResponderRepository](classes/SurveyResponderRepository.md)
- [SurveyResponderService](classes/SurveyResponderService.md)
- [SurveyResponse](classes/SurveyResponse.md)
- [SurveyResponseDetail](classes/SurveyResponseDetail.md)
- [SurveyResponseDetailDto](classes/SurveyResponseDetailDto.md)
- [SurveyResponseDetailRepository](classes/SurveyResponseDetailRepository.md)
- [SurveyResponseDto](classes/SurveyResponseDto.md)
- [SurveyResponseRepository](classes/SurveyResponseRepository.md)
- [SurveyResponseService](classes/SurveyResponseService.md)
- [SurveyService](classes/SurveyService.md)
- [SurveyServiceComponent](classes/SurveyServiceComponent.md)
- [TemplateQuestion](classes/TemplateQuestion.md)
- [TemplateQuestionRepository](classes/TemplateQuestionRepository.md)

### Interfaces

- [ISurveyServiceConfig](interfaces/ISurveyServiceConfig.md)
- [OptionsRelations](interfaces/OptionsRelations.md)
- [QuestionRelations](interfaces/QuestionRelations.md)
- [SurveyCycleRelations](interfaces/SurveyCycleRelations.md)
- [SurveyRelations](interfaces/SurveyRelations.md)
- [SurveyResponderRelations](interfaces/SurveyResponderRelations.md)
- [SurveyResponseRelations](interfaces/SurveyResponseRelations.md)
- [TemplateQuestionRelations](interfaces/TemplateQuestionRelations.md)

### Type Aliases

- [OptionsWithRelations](modules.md#optionswithrelations)
- [QuestionTemplateWithRelations](modules.md#questiontemplatewithrelations)
- [QuestionWithRelations](modules.md#questionwithrelations)
- [SurveyCycleWithRelations](modules.md#surveycyclewithrelations)
- [SurveyDtoWithRelations](modules.md#surveydtowithrelations)
- [SurveyQuestionWithRelations](modules.md#surveyquestionwithrelations)
- [SurveyResponderWithRelations](modules.md#surveyresponderwithrelations)
- [SurveyResponseWithRelations](modules.md#surveyresponsewithrelations)
- [SurveyWithRelations](modules.md#surveywithrelations)
- [TemplateQuestionWithRelations](modules.md#templatequestionwithrelations)

### Variables

- [AppErrorCodes](modules.md#apperrorcodes)
- [ErrorKeys](modules.md#errorkeys)
- [SurveyDbSourceName](modules.md#surveydbsourcename)

## Type Aliases

### OptionsWithRelations

Ƭ **OptionsWithRelations**: [`Options`](classes/Options.md) & [`OptionsRelations`](interfaces/OptionsRelations.md)

#### Defined in

[services/survey-service/src/models/options.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/options.model.ts#L82)

___

### QuestionTemplateWithRelations

Ƭ **QuestionTemplateWithRelations**: [`QuestionTemplate`](classes/QuestionTemplate.md)

#### Defined in

[services/survey-service/src/models/question-template.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/question-template.model.ts#L64)

___

### QuestionWithRelations

Ƭ **QuestionWithRelations**: [`Question`](classes/Question.md) & [`QuestionRelations`](interfaces/QuestionRelations.md)

#### Defined in

[services/survey-service/src/models/questions.model.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/questions.model.ts#L144)

___

### SurveyCycleWithRelations

Ƭ **SurveyCycleWithRelations**: [`SurveyCycle`](classes/SurveyCycle.md) & [`SurveyCycleRelations`](interfaces/SurveyCycleRelations.md)

#### Defined in

[services/survey-service/src/models/survey-cycle.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-cycle.model.ts#L67)

___

### SurveyDtoWithRelations

Ƭ **SurveyDtoWithRelations**: [`SurveyDto`](classes/SurveyDto.md)

#### Defined in

[services/survey-service/src/models/survey-dto.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-dto.model.ts#L17)

___

### SurveyQuestionWithRelations

Ƭ **SurveyQuestionWithRelations**: [`SurveyQuestion`](classes/SurveyQuestion.md)

#### Defined in

[services/survey-service/src/models/survey-question.model.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-question.model.ts#L122)

___

### SurveyResponderWithRelations

Ƭ **SurveyResponderWithRelations**: [`SurveyResponder`](classes/SurveyResponder.md) & [`SurveyResponderRelations`](interfaces/SurveyResponderRelations.md)

#### Defined in

[services/survey-service/src/models/survey-responder.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-responder.model.ts#L108)

___

### SurveyResponseWithRelations

Ƭ **SurveyResponseWithRelations**: [`SurveyResponse`](classes/SurveyResponse.md) & [`SurveyResponseRelations`](interfaces/SurveyResponseRelations.md)

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L78)

___

### SurveyWithRelations

Ƭ **SurveyWithRelations**: [`Survey`](classes/Survey.md) & [`SurveyRelations`](interfaces/SurveyRelations.md)

#### Defined in

[services/survey-service/src/models/survey.model.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L133)

___

### TemplateQuestionWithRelations

Ƭ **TemplateQuestionWithRelations**: [`TemplateQuestion`](classes/TemplateQuestion.md) & [`TemplateQuestionRelations`](interfaces/TemplateQuestionRelations.md)

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L90)

## Variables

### AppErrorCodes

• `Const` **AppErrorCodes**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `ER_DUP_ENTRY` | `string` |

#### Defined in

[services/survey-service/src/enum/error-codes.enum.ts:1](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/enum/error-codes.enum.ts#L1)

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

[services/survey-service/src/enum/error-keys.enum.ts:1](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/enum/error-keys.enum.ts#L1)

___

### SurveyDbSourceName

• `Const` **SurveyDbSourceName**: ``"SurveyDb"``

#### Defined in

[services/survey-service/src/types.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/types.ts#L12)
