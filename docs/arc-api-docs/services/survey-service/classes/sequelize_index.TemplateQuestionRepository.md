[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / TemplateQuestionRepository

# Class: TemplateQuestionRepository

[sequelize.index](../modules/sequelize_index.md).TemplateQuestionRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`TemplateQuestion`](index.TemplateQuestion.md), typeof [`id`](index.TemplateQuestion.md#id), [`TemplateQuestionRelations`](../interfaces/index.TemplateQuestionRelations.md)\>

  ↳ **`TemplateQuestionRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.TemplateQuestionRepository.md#constructor)

### Properties

- [dependentOnQuestion](sequelize_index.TemplateQuestionRepository.md#dependentonquestion)
- [getCurrentUser](sequelize_index.TemplateQuestionRepository.md#getcurrentuser)
- [question](sequelize_index.TemplateQuestionRepository.md#question)
- [questionRepositoryGetter](sequelize_index.TemplateQuestionRepository.md#questionrepositorygetter)
- [questionTemplate](sequelize_index.TemplateQuestionRepository.md#questiontemplate)

### Methods

- [create](sequelize_index.TemplateQuestionRepository.md#create)
- [createAll](sequelize_index.TemplateQuestionRepository.md#createall)
- [replaceById](sequelize_index.TemplateQuestionRepository.md#replacebyid)
- [save](sequelize_index.TemplateQuestionRepository.md#save)
- [update](sequelize_index.TemplateQuestionRepository.md#update)
- [updateAll](sequelize_index.TemplateQuestionRepository.md#updateall)
- [updateById](sequelize_index.TemplateQuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new TemplateQuestionRepository**(`dataSource`, `questionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  TemplateQuestion,
  typeof TemplateQuestion.prototype.id,
  TemplateQuestionRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/template-questions.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/template-questions.repository.ts#L37)

## Properties

### dependentOnQuestion

• `Readonly` **dependentOnQuestion**: `BelongsToAccessor`<[`TemplateQuestion`](index.TemplateQuestion.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/template-questions.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/template-questions.repository.ts#L32)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/template-questions.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/template-questions.repository.ts#L43)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/template-questions.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/template-questions.repository.ts#L22)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/template-questions.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/template-questions.repository.ts#L41)

___

### questionTemplate

• `Readonly` **questionTemplate**: `BelongsToAccessor`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/template-questions.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/template-questions.repository.ts#L27)

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

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

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
| `data` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

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

SequelizeUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:14

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

SequelizeUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:15

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
| `data` | `DataObject`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
