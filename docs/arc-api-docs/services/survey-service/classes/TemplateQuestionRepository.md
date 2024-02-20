[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / TemplateQuestionRepository

# Class: TemplateQuestionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`TemplateQuestion`](TemplateQuestion.md), typeof [`id`](TemplateQuestion.md#id), [`TemplateQuestionRelations`](../interfaces/TemplateQuestionRelations.md)\>

  ↳ **`TemplateQuestionRepository`**

## Table of contents

### Constructors

- [constructor](TemplateQuestionRepository.md#constructor)

### Properties

- [dependentOnQuestion](TemplateQuestionRepository.md#dependentonquestion)
- [getCurrentUser](TemplateQuestionRepository.md#getcurrentuser)
- [question](TemplateQuestionRepository.md#question)
- [questionRepositoryGetter](TemplateQuestionRepository.md#questionrepositorygetter)
- [questionTemplate](TemplateQuestionRepository.md#questiontemplate)

### Methods

- [create](TemplateQuestionRepository.md#create)
- [createAll](TemplateQuestionRepository.md#createall)
- [replaceById](TemplateQuestionRepository.md#replacebyid)
- [save](TemplateQuestionRepository.md#save)
- [update](TemplateQuestionRepository.md#update)
- [updateAll](TemplateQuestionRepository.md#updateall)
- [updateById](TemplateQuestionRepository.md#updatebyid)

## Constructors

### constructor

• **new TemplateQuestionRepository**(`dataSource`, `questionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](QuestionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  TemplateQuestion,
  typeof TemplateQuestion.prototype.id,
  TemplateQuestionRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/template-questions.repository.ts#L37)

## Properties

### dependentOnQuestion

• `Readonly` **dependentOnQuestion**: `BelongsToAccessor`<[`TemplateQuestion`](TemplateQuestion.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/template-questions.repository.ts#L32)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/template-questions.repository.ts#L42)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/template-questions.repository.ts#L22)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/template-questions.repository.ts#L40)

___

### questionTemplate

• `Readonly` **questionTemplate**: `BelongsToAccessor`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/template-questions.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/template-questions.repository.ts#L27)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`TemplateQuestion`](TemplateQuestion.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`TemplateQuestion`](TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`TemplateQuestion`](TemplateQuestion.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`TemplateQuestion`](TemplateQuestion.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`TemplateQuestion`](TemplateQuestion.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`TemplateQuestion`](TemplateQuestion.md)[]\>

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
| `data` | `DataObject`<[`TemplateQuestion`](TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`TemplateQuestion`](TemplateQuestion.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`TemplateQuestion`](TemplateQuestion.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`TemplateQuestion`](TemplateQuestion.md)\>

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
| `entity` | [`TemplateQuestion`](TemplateQuestion.md) |
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
| `data` | `DataObject`<[`TemplateQuestion`](TemplateQuestion.md)\> |
| `where?` | `Where`<[`TemplateQuestion`](TemplateQuestion.md)\> |
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
| `data` | `DataObject`<[`TemplateQuestion`](TemplateQuestion.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
