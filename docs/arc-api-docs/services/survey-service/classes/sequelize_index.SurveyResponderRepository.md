[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyResponderRepository

# Class: SurveyResponderRepository

[sequelize.index](../modules/sequelize_index.md).SurveyResponderRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`SurveyResponder`](index.SurveyResponder.md), typeof [`id`](index.SurveyResponder.md#id), [`SurveyResponderRelations`](../interfaces/index.SurveyResponderRelations.md)\>

  ↳ **`SurveyResponderRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyResponderRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.SurveyResponderRepository.md#getcurrentuser)
- [survey](sequelize_index.SurveyResponderRepository.md#survey)
- [surveyCycle](sequelize_index.SurveyResponderRepository.md#surveycycle)
- [surveyCycleRepositoryGetter](sequelize_index.SurveyResponderRepository.md#surveycyclerepositorygetter)
- [surveyRepositoryGetter](sequelize_index.SurveyResponderRepository.md#surveyrepositorygetter)

### Methods

- [create](sequelize_index.SurveyResponderRepository.md#create)
- [createAll](sequelize_index.SurveyResponderRepository.md#createall)
- [replaceById](sequelize_index.SurveyResponderRepository.md#replacebyid)
- [save](sequelize_index.SurveyResponderRepository.md#save)
- [update](sequelize_index.SurveyResponderRepository.md#update)
- [updateAll](sequelize_index.SurveyResponderRepository.md#updateall)
- [updateById](sequelize_index.SurveyResponderRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponderRepository**(`dataSource`, `surveyRepositoryGetter`, `surveyCycleRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\> |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  SurveyResponder,
  typeof SurveyResponder.prototype.id,
  SurveyResponderRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L38)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L46)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L28)

___

### surveyCycle

• `Readonly` **surveyCycle**: `BelongsToAccessor`<[`SurveyCycle`](index.SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L33)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L44)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L42)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyResponder`](index.SurveyResponder.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`SurveyResponder`](index.SurveyResponder.md)\>

#### Overrides

SequelizeUserModifyCrudRepository.create

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-responder.repository.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-responder.repository.ts#L64)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyResponder`](index.SurveyResponder.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponder`](index.SurveyResponder.md)[]\>

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
| `data` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyResponder`](index.SurveyResponder.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyResponder`](index.SurveyResponder.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponder`](index.SurveyResponder.md)\>

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
| `entity` | [`SurveyResponder`](index.SurveyResponder.md) |
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
| `data` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\> |
| `where?` | `Where`<[`SurveyResponder`](index.SurveyResponder.md)\> |
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
| `data` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
