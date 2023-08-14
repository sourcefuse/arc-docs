[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyResponseRepository

# Class: SurveyResponseRepository

[sequelize.index](../modules/sequelize_index.md).SurveyResponseRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`SurveyResponse`](index.SurveyResponse.md), typeof [`id`](index.SurveyResponse.md#id), [`SurveyResponseRelations`](../interfaces/index.SurveyResponseRelations.md)\>

  ↳ **`SurveyResponseRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyResponseRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.SurveyResponseRepository.md#getcurrentuser)
- [surveyCycle](sequelize_index.SurveyResponseRepository.md#surveycycle)
- [surveyCycleRepositoryGetter](sequelize_index.SurveyResponseRepository.md#surveycyclerepositorygetter)
- [surveyResponder](sequelize_index.SurveyResponseRepository.md#surveyresponder)
- [surveyResponderRepositoryGetter](sequelize_index.SurveyResponseRepository.md#surveyresponderrepositorygetter)
- [surveyResponseDetailRepositoryGetter](sequelize_index.SurveyResponseRepository.md#surveyresponsedetailrepositorygetter)
- [surveyResponseDetails](sequelize_index.SurveyResponseRepository.md#surveyresponsedetails)

### Methods

- [create](sequelize_index.SurveyResponseRepository.md#create)
- [createAll](sequelize_index.SurveyResponseRepository.md#createall)
- [replaceById](sequelize_index.SurveyResponseRepository.md#replacebyid)
- [save](sequelize_index.SurveyResponseRepository.md#save)
- [update](sequelize_index.SurveyResponseRepository.md#update)
- [updateAll](sequelize_index.SurveyResponseRepository.md#updateall)
- [updateById](sequelize_index.SurveyResponseRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponseRepository**(`dataSource`, `surveyCycleRepositoryGetter`, `surveyResponseDetailRepositoryGetter`, `surveyResponderRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)\> |
| `surveyResponseDetailRepositoryGetter` | `Getter`<[`SurveyResponseDetailRepository`](sequelize_index.SurveyResponseDetailRepository.md)\> |
| `surveyResponderRepositoryGetter` | `Getter`<[`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  SurveyResponse,
  typeof SurveyResponse.prototype.id,
  SurveyResponseRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L43)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L54)

___

### surveyCycle

• `Readonly` **surveyCycle**: `BelongsToAccessor`<[`SurveyCycle`](index.SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L28)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](sequelize_index.SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L48)

___

### surveyResponder

• `Readonly` **surveyResponder**: `BelongsToAccessor`<[`SurveyResponder`](index.SurveyResponder.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L38)

___

### surveyResponderRepositoryGetter

• `Protected` **surveyResponderRepositoryGetter**: `Getter`<[`SurveyResponderRepository`](sequelize_index.SurveyResponderRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L52)

___

### surveyResponseDetailRepositoryGetter

• `Protected` **surveyResponseDetailRepositoryGetter**: `Getter`<[`SurveyResponseDetailRepository`](sequelize_index.SurveyResponseDetailRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L50)

___

### surveyResponseDetails

• `Readonly` **surveyResponseDetails**: `HasManyRepositoryFactory`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response.repository.ts#L33)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyResponse`](index.SurveyResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponse`](index.SurveyResponse.md)\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyResponse`](index.SurveyResponse.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponse`](index.SurveyResponse.md)[]\>

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
| `data` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyResponse`](index.SurveyResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyResponse`](index.SurveyResponse.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponse`](index.SurveyResponse.md)\>

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
| `entity` | [`SurveyResponse`](index.SurveyResponse.md) |
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
| `data` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\> |
| `where?` | `Where`<[`SurveyResponse`](index.SurveyResponse.md)\> |
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
| `data` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
