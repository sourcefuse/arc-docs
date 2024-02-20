[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionRepository

# Class: QuestionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Question`](Question.md), typeof [`id`](Question.md#id), [`QuestionRelations`](../interfaces/QuestionRelations.md)\>

  ↳ **`QuestionRepository`**

## Table of contents

### Constructors

- [constructor](QuestionRepository.md#constructor)

### Properties

- [followUpQuestions](QuestionRepository.md#followupquestions)
- [getCurrentUser](QuestionRepository.md#getcurrentuser)
- [options](QuestionRepository.md#options)
- [optionsRepositoryGetter](QuestionRepository.md#optionsrepositorygetter)
- [parentQuestion](QuestionRepository.md#parentquestion)
- [rootQuestion](QuestionRepository.md#rootquestion)
- [survey](QuestionRepository.md#survey)
- [surveyRepositoryGetter](QuestionRepository.md#surveyrepositorygetter)
- [surveyResponseDetail](QuestionRepository.md#surveyresponsedetail)

### Methods

- [create](QuestionRepository.md#create)
- [createAll](QuestionRepository.md#createall)
- [replaceById](QuestionRepository.md#replacebyid)
- [save](QuestionRepository.md#save)
- [update](QuestionRepository.md#update)
- [updateAll](QuestionRepository.md#updateall)
- [updateById](QuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new QuestionRepository**(`dataSource`, `optionsRepositoryGetter`, `surveyRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `optionsRepositoryGetter` | `Getter`<[`OptionsRepository`](OptionsRepository.md)\> |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](SurveyRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Question,
  typeof Question.prototype.id,
  QuestionRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L56)

## Properties

### followUpQuestions

• `Readonly` **followUpQuestions**: `HasManyRepositoryFactory`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L42)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L63)

___

### options

• `Readonly` **options**: `HasManyRepositoryFactory`<[`Options`](Options.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L37)

___

### optionsRepositoryGetter

• `Protected` **optionsRepositoryGetter**: `Getter`<[`OptionsRepository`](OptionsRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L59)

___

### parentQuestion

• `Readonly` **parentQuestion**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L32)

___

### rootQuestion

• `Readonly` **rootQuestion**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L27)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L51)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L61)

___

### surveyResponseDetail

• `Readonly` **surveyResponseDetail**: `HasOneRepositoryFactory`<[`SurveyResponseDetail`](SurveyResponseDetail.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/questions.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/questions.repository.ts#L46)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Question`](Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Question`](Question.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Question`](Question.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Question`](Question.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Question`](Question.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Question`](Question.md)[]\>

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
| `data` | `DataObject`<[`Question`](Question.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Question`](Question.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Question`](Question.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Question`](Question.md)\>

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
| `entity` | [`Question`](Question.md) |
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
| `data` | `DataObject`<[`Question`](Question.md)\> |
| `where?` | `Where`<[`Question`](Question.md)\> |
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
| `data` | `DataObject`<[`Question`](Question.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
