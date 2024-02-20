[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyQuestionRepository

# Class: SurveyQuestionRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`SurveyQuestion`](SurveyQuestion.md), typeof [`id`](SurveyQuestionDto.md#id)\>

  ↳ **`SurveyQuestionRepository`**

## Table of contents

### Constructors

- [constructor](SurveyQuestionRepository.md#constructor)

### Properties

- [dependentOnQuestion](SurveyQuestionRepository.md#dependentonquestion)
- [getCurrentUser](SurveyQuestionRepository.md#getcurrentuser)
- [logger](SurveyQuestionRepository.md#logger)
- [question](SurveyQuestionRepository.md#question)
- [questionRepositoryGetter](SurveyQuestionRepository.md#questionrepositorygetter)
- [section](SurveyQuestionRepository.md#section)
- [sectionRepositoryGetter](SurveyQuestionRepository.md#sectionrepositorygetter)
- [survey](SurveyQuestionRepository.md#survey)
- [surveyRepositoryGetter](SurveyQuestionRepository.md#surveyrepositorygetter)

### Methods

- [\_updateSurveyModifiedByAndOn](SurveyQuestionRepository.md#_updatesurveymodifiedbyandon)
- [reorder](SurveyQuestionRepository.md#reorder)

## Constructors

### constructor

• **new SurveyQuestionRepository**(`dataSource`, `surveyRepositoryGetter`, `questionRepositoryGetter`, `sectionRepositoryGetter`, `logger`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](SurveyRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](QuestionRepository.md)\> |
| `sectionRepositoryGetter` | `Getter`<[`SectionRepository`](SectionRepository.md)\> |
| `logger` | `ILogger` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  SurveyQuestion,
  typeof SurveyQuestion.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L43)

## Properties

### dependentOnQuestion

• `Readonly` **dependentOnQuestion**: `BelongsToAccessor`<[`SurveyQuestion`](SurveyQuestion.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L24)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultSoftCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L53)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L51)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L34)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L48)

___

### section

• `Readonly` **section**: `BelongsToAccessor`<[`Section`](Section.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L38)

___

### sectionRepositoryGetter

• `Protected` **sectionRepositoryGetter**: `Getter`<[`SectionRepository`](SectionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L50)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L29)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L46)

## Methods

### \_updateSurveyModifiedByAndOn

▸ **_updateSurveyModifiedByAndOn**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L98)

___

### reorder

▸ **reorder**(`surveyId`, `displayOrder`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `displayOrder` | `number` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-question.repository.ts#L84)
