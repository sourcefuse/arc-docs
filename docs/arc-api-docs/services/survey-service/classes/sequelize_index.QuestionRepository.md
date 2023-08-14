[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / QuestionRepository

# Class: QuestionRepository

[sequelize.index](../modules/sequelize_index.md).QuestionRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`Question`](index.Question.md), typeof [`id`](index.Question.md#id), [`QuestionRelations`](../interfaces/index.QuestionRelations.md)\>

  ↳ **`QuestionRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.QuestionRepository.md#constructor)

### Properties

- [followUpQuestions](sequelize_index.QuestionRepository.md#followupquestions)
- [getCurrentUser](sequelize_index.QuestionRepository.md#getcurrentuser)
- [options](sequelize_index.QuestionRepository.md#options)
- [optionsRepositoryGetter](sequelize_index.QuestionRepository.md#optionsrepositorygetter)
- [parentQuestion](sequelize_index.QuestionRepository.md#parentquestion)
- [rootQuestion](sequelize_index.QuestionRepository.md#rootquestion)
- [survey](sequelize_index.QuestionRepository.md#survey)
- [surveyRepositoryGetter](sequelize_index.QuestionRepository.md#surveyrepositorygetter)
- [surveyResponseDetail](sequelize_index.QuestionRepository.md#surveyresponsedetail)

### Methods

- [create](sequelize_index.QuestionRepository.md#create)
- [createAll](sequelize_index.QuestionRepository.md#createall)
- [replaceById](sequelize_index.QuestionRepository.md#replacebyid)
- [save](sequelize_index.QuestionRepository.md#save)
- [update](sequelize_index.QuestionRepository.md#update)
- [updateAll](sequelize_index.QuestionRepository.md#updateall)
- [updateById](sequelize_index.QuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new QuestionRepository**(`dataSource`, `optionsRepositoryGetter`, `surveyRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `optionsRepositoryGetter` | `Getter`<[`OptionsRepository`](sequelize_index.OptionsRepository.md)\> |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  Question,
  typeof Question.prototype.id,
  QuestionRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L56)

## Properties

### followUpQuestions

• `Readonly` **followUpQuestions**: `HasManyRepositoryFactory`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L42)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L64)

___

### options

• `Readonly` **options**: `HasManyRepositoryFactory`<[`Options`](index.Options.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L37)

___

### optionsRepositoryGetter

• `Protected` **optionsRepositoryGetter**: `Getter`<[`OptionsRepository`](sequelize_index.OptionsRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L60)

___

### parentQuestion

• `Readonly` **parentQuestion**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L32)

___

### rootQuestion

• `Readonly` **rootQuestion**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L27)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L51)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L62)

___

### surveyResponseDetail

• `Readonly` **surveyResponseDetail**: `HasOneRepositoryFactory`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/questions.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/questions.repository.ts#L46)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Question`](index.Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Question`](index.Question.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Question`](index.Question.md)\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Question`](index.Question.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Question`](index.Question.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Question`](index.Question.md)[]\>

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
| `data` | `DataObject`<[`Question`](index.Question.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Question`](index.Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Question`](index.Question.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Question`](index.Question.md)\>

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
| `entity` | [`Question`](index.Question.md) |
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
| `data` | `DataObject`<[`Question`](index.Question.md)\> |
| `where?` | `Where`<[`Question`](index.Question.md)\> |
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
| `data` | `DataObject`<[`Question`](index.Question.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
