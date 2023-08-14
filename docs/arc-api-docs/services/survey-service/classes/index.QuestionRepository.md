[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / QuestionRepository

# Class: QuestionRepository

[index](../modules/index.md).QuestionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Question`](index.Question.md), typeof [`id`](index.Question.md#id), [`QuestionRelations`](../interfaces/index.QuestionRelations.md)\>

  ↳ **`QuestionRepository`**

## Table of contents

### Constructors

- [constructor](index.QuestionRepository.md#constructor)

### Properties

- [followUpQuestions](index.QuestionRepository.md#followupquestions)
- [getCurrentUser](index.QuestionRepository.md#getcurrentuser)
- [options](index.QuestionRepository.md#options)
- [optionsRepositoryGetter](index.QuestionRepository.md#optionsrepositorygetter)
- [parentQuestion](index.QuestionRepository.md#parentquestion)
- [rootQuestion](index.QuestionRepository.md#rootquestion)
- [survey](index.QuestionRepository.md#survey)
- [surveyRepositoryGetter](index.QuestionRepository.md#surveyrepositorygetter)
- [surveyResponseDetail](index.QuestionRepository.md#surveyresponsedetail)

### Methods

- [create](index.QuestionRepository.md#create)
- [createAll](index.QuestionRepository.md#createall)
- [replaceById](index.QuestionRepository.md#replacebyid)
- [save](index.QuestionRepository.md#save)
- [update](index.QuestionRepository.md#update)
- [updateAll](index.QuestionRepository.md#updateall)
- [updateById](index.QuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new QuestionRepository**(`dataSource`, `optionsRepositoryGetter`, `surveyRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `optionsRepositoryGetter` | `Getter`<[`OptionsRepository`](index.OptionsRepository.md)\> |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Question,
  typeof Question.prototype.id,
  QuestionRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L56)

## Properties

### followUpQuestions

• `Readonly` **followUpQuestions**: `HasManyRepositoryFactory`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L42)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L63)

___

### options

• `Readonly` **options**: `HasManyRepositoryFactory`<[`Options`](index.Options.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L37)

___

### optionsRepositoryGetter

• `Protected` **optionsRepositoryGetter**: `Getter`<[`OptionsRepository`](index.OptionsRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L59)

___

### parentQuestion

• `Readonly` **parentQuestion**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L32)

___

### rootQuestion

• `Readonly` **rootQuestion**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L27)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L51)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L61)

___

### surveyResponseDetail

• `Readonly` **surveyResponseDetail**: `HasOneRepositoryFactory`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/questions.repository.ts#L46)

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

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

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

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

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

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

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

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

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

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

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

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
