[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyQuestionRepository

# Class: SurveyQuestionRepository

[index](../modules/index.md).SurveyQuestionRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`SurveyQuestion`](index.SurveyQuestion.md), typeof [`id`](index.SurveyQuestionDto.md#id)\>

  ↳ **`SurveyQuestionRepository`**

## Table of contents

### Constructors

- [constructor](index.SurveyQuestionRepository.md#constructor)

### Properties

- [dependentOnQuestion](index.SurveyQuestionRepository.md#dependentonquestion)
- [getCurrentUser](index.SurveyQuestionRepository.md#getcurrentuser)
- [logger](index.SurveyQuestionRepository.md#logger)
- [question](index.SurveyQuestionRepository.md#question)
- [questionRepositoryGetter](index.SurveyQuestionRepository.md#questionrepositorygetter)
- [section](index.SurveyQuestionRepository.md#section)
- [sectionRepositoryGetter](index.SurveyQuestionRepository.md#sectionrepositorygetter)
- [survey](index.SurveyQuestionRepository.md#survey)
- [surveyRepositoryGetter](index.SurveyQuestionRepository.md#surveyrepositorygetter)

### Methods

- [\_updateSurveyModifiedByAndOn](index.SurveyQuestionRepository.md#_updatesurveymodifiedbyandon)
- [reorder](index.SurveyQuestionRepository.md#reorder)

## Constructors

### constructor

• **new SurveyQuestionRepository**(`dataSource`, `surveyRepositoryGetter`, `questionRepositoryGetter`, `sectionRepositoryGetter`, `logger`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](index.QuestionRepository.md)\> |
| `sectionRepositoryGetter` | `Getter`<[`SectionRepository`](index.SectionRepository.md)\> |
| `logger` | `ILogger` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  SurveyQuestion,
  typeof SurveyQuestion.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L43)

## Properties

### dependentOnQuestion

• `Readonly` **dependentOnQuestion**: `BelongsToAccessor`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L24)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultSoftCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L53)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L51)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L34)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L48)

___

### section

• `Readonly` **section**: `BelongsToAccessor`<[`Section`](index.Section.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L38)

___

### sectionRepositoryGetter

• `Protected` **sectionRepositoryGetter**: `Getter`<[`SectionRepository`](index.SectionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L50)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L29)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-question.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L46)

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

[services/survey-service/src/repositories/survey-question.repository.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L98)

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

[services/survey-service/src/repositories/survey-question.repository.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-question.repository.ts#L84)
