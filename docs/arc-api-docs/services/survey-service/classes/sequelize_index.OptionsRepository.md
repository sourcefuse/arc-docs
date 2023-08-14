[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / OptionsRepository

# Class: OptionsRepository

[sequelize.index](../modules/sequelize_index.md).OptionsRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`Options`](index.Options.md), typeof [`id`](index.Options.md#id), [`OptionsRelations`](../interfaces/index.OptionsRelations.md)\>

  ↳ **`OptionsRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.OptionsRepository.md#constructor)

### Properties

- [followupQuestion](sequelize_index.OptionsRepository.md#followupquestion)
- [getCurrentUser](sequelize_index.OptionsRepository.md#getcurrentuser)
- [question](sequelize_index.OptionsRepository.md#question)
- [questionRepositoryGetter](sequelize_index.OptionsRepository.md#questionrepositorygetter)

### Methods

- [create](sequelize_index.OptionsRepository.md#create)
- [createAll](sequelize_index.OptionsRepository.md#createall)
- [replaceById](sequelize_index.OptionsRepository.md#replacebyid)
- [save](sequelize_index.OptionsRepository.md#save)
- [update](sequelize_index.OptionsRepository.md#update)
- [updateAll](sequelize_index.OptionsRepository.md#updateall)
- [updateById](sequelize_index.OptionsRepository.md#updatebyid)

## Constructors

### constructor

• **new OptionsRepository**(`dataSource`, `questionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  Options,
  typeof Options.prototype.id,
  OptionsRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/options.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/options.repository.ts#L26)

## Properties

### followupQuestion

• `Readonly` **followupQuestion**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/options.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/options.repository.ts#L21)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/options.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/options.repository.ts#L32)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/options.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/options.repository.ts#L16)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/options.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/options.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Options`](index.Options.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Options`](index.Options.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Options`](index.Options.md)\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Options`](index.Options.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Options`](index.Options.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Options`](index.Options.md)[]\>

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
| `data` | `DataObject`<[`Options`](index.Options.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Options`](index.Options.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Options`](index.Options.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Options`](index.Options.md)\>

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
| `entity` | [`Options`](index.Options.md) |
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
| `data` | `DataObject`<[`Options`](index.Options.md)\> |
| `where?` | `Where`<[`Options`](index.Options.md)\> |
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
| `data` | `DataObject`<[`Options`](index.Options.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
