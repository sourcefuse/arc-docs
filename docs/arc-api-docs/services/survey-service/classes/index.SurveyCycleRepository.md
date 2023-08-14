[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyCycleRepository

# Class: SurveyCycleRepository

[index](../modules/index.md).SurveyCycleRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SurveyCycle`](index.SurveyCycle.md), typeof [`id`](index.SurveyCycle.md#id), [`SurveyCycleRelations`](../interfaces/index.SurveyCycleRelations.md)\>

  ↳ **`SurveyCycleRepository`**

## Table of contents

### Constructors

- [constructor](index.SurveyCycleRepository.md#constructor)

### Properties

- [getCurrentUser](index.SurveyCycleRepository.md#getcurrentuser)
- [survey](index.SurveyCycleRepository.md#survey)
- [surveyRepositoryGetter](index.SurveyCycleRepository.md#surveyrepositorygetter)

### Methods

- [create](index.SurveyCycleRepository.md#create)
- [createAll](index.SurveyCycleRepository.md#createall)
- [replaceById](index.SurveyCycleRepository.md#replacebyid)
- [save](index.SurveyCycleRepository.md#save)
- [update](index.SurveyCycleRepository.md#update)
- [updateAll](index.SurveyCycleRepository.md#updateall)
- [updateById](index.SurveyCycleRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyCycleRepository**(`dataSource`, `surveyRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SurveyCycle,
  typeof SurveyCycle.prototype.id,
  SurveyCycleRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-cycle.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-cycle.repository.ts#L23)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-cycle.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-cycle.repository.ts#L28)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-cycle.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-cycle.repository.ts#L18)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-cycle.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-cycle.repository.ts#L26)

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

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

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
| `data` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

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

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

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
| `data` | `DataObject`<[`SurveyCycle`](index.SurveyCycle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
