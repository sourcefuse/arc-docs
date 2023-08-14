[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / TemplateQuestionRepository

# Class: TemplateQuestionRepository

[index](../modules/index.md).TemplateQuestionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`TemplateQuestion`](index.TemplateQuestion.md), typeof [`id`](index.TemplateQuestion.md#id), [`TemplateQuestionRelations`](../interfaces/index.TemplateQuestionRelations.md)\>

  ↳ **`TemplateQuestionRepository`**

## Table of contents

### Constructors

- [constructor](index.TemplateQuestionRepository.md#constructor)

### Properties

- [dependentOnQuestion](index.TemplateQuestionRepository.md#dependentonquestion)
- [getCurrentUser](index.TemplateQuestionRepository.md#getcurrentuser)
- [question](index.TemplateQuestionRepository.md#question)
- [questionRepositoryGetter](index.TemplateQuestionRepository.md#questionrepositorygetter)
- [questionTemplate](index.TemplateQuestionRepository.md#questiontemplate)

### Methods

- [create](index.TemplateQuestionRepository.md#create)
- [createAll](index.TemplateQuestionRepository.md#createall)
- [replaceById](index.TemplateQuestionRepository.md#replacebyid)
- [save](index.TemplateQuestionRepository.md#save)
- [update](index.TemplateQuestionRepository.md#update)
- [updateAll](index.TemplateQuestionRepository.md#updateall)
- [updateById](index.TemplateQuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new TemplateQuestionRepository**(`dataSource`, `questionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](index.QuestionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  TemplateQuestion,
  typeof TemplateQuestion.prototype.id,
  TemplateQuestionRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/template-questions.repository.ts#L37)

## Properties

### dependentOnQuestion

• `Readonly` **dependentOnQuestion**: `BelongsToAccessor`<[`TemplateQuestion`](index.TemplateQuestion.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/template-questions.repository.ts#L32)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/template-questions.repository.ts#L42)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/template-questions.repository.ts#L22)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/template-questions.repository.ts#L40)

___

### questionTemplate

• `Readonly` **questionTemplate**: `BelongsToAccessor`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/template-questions.repository.ts#L27)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`TemplateQuestion`](index.TemplateQuestion.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`TemplateQuestion`](index.TemplateQuestion.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`TemplateQuestion`](index.TemplateQuestion.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`TemplateQuestion`](index.TemplateQuestion.md)[]\>

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
| `data` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`TemplateQuestion`](index.TemplateQuestion.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`TemplateQuestion`](index.TemplateQuestion.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`TemplateQuestion`](index.TemplateQuestion.md)\>

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
| `entity` | [`TemplateQuestion`](index.TemplateQuestion.md) |
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
| `data` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
| `where?` | `Where`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
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
| `data` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
