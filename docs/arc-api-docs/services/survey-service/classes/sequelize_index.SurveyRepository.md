[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyRepository

# Class: SurveyRepository

[sequelize.index](../modules/sequelize_index.md).SurveyRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`Survey`](index.Survey.md), typeof [`id`](index.SurveyDto.md#id), [`SurveyRelations`](../interfaces/index.SurveyRelations.md)\>

  ↳ **`SurveyRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.SurveyRepository.md#getcurrentuser)
- [questionRepositoryGetter](sequelize_index.SurveyRepository.md#questionrepositorygetter)
- [questions](sequelize_index.SurveyRepository.md#questions)
- [sectionRepositoryGetter](sequelize_index.SurveyRepository.md#sectionrepositorygetter)
- [sections](sequelize_index.SurveyRepository.md#sections)
- [surveyCycleRepositoryGetter](sequelize_index.SurveyRepository.md#surveycyclerepositorygetter)
- [surveyCycles](sequelize_index.SurveyRepository.md#surveycycles)
- [surveyQuestionRepositoryGetter](sequelize_index.SurveyRepository.md#surveyquestionrepositorygetter)
- [surveyResponderRepositoryGetter](sequelize_index.SurveyRepository.md#surveyresponderrepositorygetter)
- [surveyResponders](sequelize_index.SurveyRepository.md#surveyresponders)

### Methods

- [create](sequelize_index.SurveyRepository.md#create)
- [createAll](sequelize_index.SurveyRepository.md#createall)
- [replaceById](sequelize_index.SurveyRepository.md#replacebyid)
- [save](sequelize_index.SurveyRepository.md#save)
- [update](sequelize_index.SurveyRepository.md#update)
- [updateAll](sequelize_index.SurveyRepository.md#updateall)
- [updateById](sequelize_index.SurveyRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyRepository**(`dataSource`, `surveyCycleRepositoryGetter`, `surveyResponderRepositoryGetter`, `surveyQuestionRepositoryGetter`, `questionRepositoryGetter`, `sectionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)\> |
| `surveyResponderRepositoryGetter` | `Getter`<[`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)\> |
| `surveyQuestionRepositoryGetter` | `Getter`<[`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\> |
| `sectionRepositoryGetter` | `Getter`<[`SectionRepository`](sequelize_index.SectionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  Survey,
  typeof Survey.prototype.id,
  SurveyRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L53)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L68)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L64)

___

### questions

• `Readonly` **questions**: `HasManyThroughRepositoryFactory`<[`Question`](index.Question.md), `undefined` \| `string`, [`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L46)

___

### sectionRepositoryGetter

• `Protected` **sectionRepositoryGetter**: `Getter`<[`SectionRepository`](sequelize_index.SectionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L66)

___

### sections

• `Readonly` **sections**: `HasManyRepositoryFactory`<[`Section`](index.Section.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L42)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L57)

___

### surveyCycles

• `Readonly` **surveyCycles**: `HasManyRepositoryFactory`<[`SurveyCycle`](index.SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L32)

___

### surveyQuestionRepositoryGetter

• `Protected` **surveyQuestionRepositoryGetter**: `Getter`<[`SurveyQuestionRepository`](sequelize_index.SurveyQuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L62)

___

### surveyResponderRepositoryGetter

• `Protected` **surveyResponderRepositoryGetter**: `Getter`<[`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L59)

___

### surveyResponders

• `Readonly` **surveyResponders**: `HasManyRepositoryFactory`<[`SurveyResponder`](index.SurveyResponder.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey.repository.ts#L37)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>[]\>

#### Inherited from

SequelizeUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:13

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

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
| `entity` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |
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
| `data` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
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
| `data` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
