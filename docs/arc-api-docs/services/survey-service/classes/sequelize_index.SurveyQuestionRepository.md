[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyQuestionRepository

# Class: SurveyQuestionRepository

[sequelize.index](../modules/sequelize_index.md).SurveyQuestionRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`SurveyQuestion`](index.SurveyQuestion.md), typeof [`id`](index.SurveyQuestionDto.md#id)\>

  ↳ **`SurveyQuestionRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyQuestionRepository.md#constructor)

### Properties

- [dependentOnQuestion](sequelize_index.SurveyQuestionRepository.md#dependentonquestion)
- [getCurrentUser](sequelize_index.SurveyQuestionRepository.md#getcurrentuser)
- [logger](sequelize_index.SurveyQuestionRepository.md#logger)
- [question](sequelize_index.SurveyQuestionRepository.md#question)
- [questionRepositoryGetter](sequelize_index.SurveyQuestionRepository.md#questionrepositorygetter)
- [section](sequelize_index.SurveyQuestionRepository.md#section)
- [sectionRepositoryGetter](sequelize_index.SurveyQuestionRepository.md#sectionrepositorygetter)
- [survey](sequelize_index.SurveyQuestionRepository.md#survey)
- [surveyRepositoryGetter](sequelize_index.SurveyQuestionRepository.md#surveyrepositorygetter)

### Methods

- [\_updateSurveyModifiedByAndOn](sequelize_index.SurveyQuestionRepository.md#_updatesurveymodifiedbyandon)
- [create](sequelize_index.SurveyQuestionRepository.md#create)
- [createAll](sequelize_index.SurveyQuestionRepository.md#createall)
- [reorder](sequelize_index.SurveyQuestionRepository.md#reorder)
- [replaceById](sequelize_index.SurveyQuestionRepository.md#replacebyid)
- [save](sequelize_index.SurveyQuestionRepository.md#save)
- [update](sequelize_index.SurveyQuestionRepository.md#update)
- [updateAll](sequelize_index.SurveyQuestionRepository.md#updateall)
- [updateById](sequelize_index.SurveyQuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyQuestionRepository**(`dataSource`, `surveyRepositoryGetter`, `questionRepositoryGetter`, `sectionRepositoryGetter`, `logger`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\> |
| `sectionRepositoryGetter` | `Getter`<[`SectionRepository`](sequelize_index.SectionRepository.md)\> |
| `logger` | `ILogger` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  SurveyQuestion,
  typeof SurveyQuestion.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L37)

## Properties

### dependentOnQuestion

• `Readonly` **dependentOnQuestion**: `BelongsToAccessor`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L18)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L48)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L46)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L28)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L43)

___

### section

• `Readonly` **section**: `BelongsToAccessor`<[`Section`](index.Section.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L32)

___

### sectionRepositoryGetter

• `Protected` **sectionRepositoryGetter**: `Getter`<[`SectionRepository`](sequelize_index.SectionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L45)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L23)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L41)

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

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L93)

___

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>[]\>

#### Inherited from

SequelizeUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:13

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

[services/survey-service/src/repositories/sequelize/survey-question.repository.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-question.repository.ts#L79)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:14

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:15

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:16

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
