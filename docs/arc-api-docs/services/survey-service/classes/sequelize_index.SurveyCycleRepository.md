[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyCycleRepository

# Class: SurveyCycleRepository

[sequelize.index](../modules/sequelize_index.md).SurveyCycleRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`SurveyCycle`](index.SurveyCycle.md), typeof [`id`](index.SurveyCycle.md#id), [`SurveyCycleRelations`](../interfaces/index.SurveyCycleRelations.md)\>

  ↳ **`SurveyCycleRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyCycleRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.SurveyCycleRepository.md#getcurrentuser)
- [survey](sequelize_index.SurveyCycleRepository.md#survey)
- [surveyRepositoryGetter](sequelize_index.SurveyCycleRepository.md#surveyrepositorygetter)

### Methods

- [create](sequelize_index.SurveyCycleRepository.md#create)
- [createAll](sequelize_index.SurveyCycleRepository.md#createall)
- [replaceById](sequelize_index.SurveyCycleRepository.md#replacebyid)
- [save](sequelize_index.SurveyCycleRepository.md#save)
- [update](sequelize_index.SurveyCycleRepository.md#update)
- [updateAll](sequelize_index.SurveyCycleRepository.md#updateall)
- [updateById](sequelize_index.SurveyCycleRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyCycleRepository**(`dataSource`, `surveyRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  SurveyCycle,
  typeof SurveyCycle.prototype.id,
  SurveyCycleRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts#L21)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts#L27)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts#L16)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-cycle.repository.ts#L25)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyCycle`](index.SurveyCycle.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyCycle`](index.SurveyCycle.md)\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyCycle`](index.SurveyCycle.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyCycle`](index.SurveyCycle.md)[]\>

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
| `data` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyCycle`](index.SurveyCycle.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyCycle`](index.SurveyCycle.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyCycle`](index.SurveyCycle.md)\>

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
| `entity` | [`SurveyCycle`](index.SurveyCycle.md) |
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
| `data` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\> |
| `where?` | `Where`<[`SurveyCycle`](index.SurveyCycle.md)\> |
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
| `data` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
