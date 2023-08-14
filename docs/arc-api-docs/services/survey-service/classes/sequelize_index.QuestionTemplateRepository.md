[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / QuestionTemplateRepository

# Class: QuestionTemplateRepository

[sequelize.index](../modules/sequelize_index.md).QuestionTemplateRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`QuestionTemplate`](index.QuestionTemplate.md), typeof [`id`](index.QuestionTemplatesDto.md#id)\>

  ↳ **`QuestionTemplateRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.QuestionTemplateRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.QuestionTemplateRepository.md#getcurrentuser)

### Methods

- [create](sequelize_index.QuestionTemplateRepository.md#create)
- [createAll](sequelize_index.QuestionTemplateRepository.md#createall)
- [replaceById](sequelize_index.QuestionTemplateRepository.md#replacebyid)
- [save](sequelize_index.QuestionTemplateRepository.md#save)
- [update](sequelize_index.QuestionTemplateRepository.md#update)
- [updateAll](sequelize_index.QuestionTemplateRepository.md#updateall)
- [updateById](sequelize_index.QuestionTemplateRepository.md#updatebyid)

## Constructors

### constructor

• **new QuestionTemplateRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  QuestionTemplate,
  typeof QuestionTemplate.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/question-template.repository.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/question-template.repository.ts#L13)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/question-template.repository.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/question-template.repository.ts#L17)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>[]\>

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
| `data` | `DataObject`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

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
| `entity` | [`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\> |
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
| `data` | `DataObject`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
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
| `data` | `DataObject`<[`QuestionTemplate`](index.QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
