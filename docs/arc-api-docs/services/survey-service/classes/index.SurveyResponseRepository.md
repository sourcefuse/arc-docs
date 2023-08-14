[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyResponseRepository

# Class: SurveyResponseRepository

[index](../modules/index.md).SurveyResponseRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SurveyResponse`](index.SurveyResponse.md), typeof [`id`](index.SurveyResponse.md#id), [`SurveyResponseRelations`](../interfaces/index.SurveyResponseRelations.md)\>

  ↳ **`SurveyResponseRepository`**

## Table of contents

### Constructors

- [constructor](index.SurveyResponseRepository.md#constructor)

### Properties

- [getCurrentUser](index.SurveyResponseRepository.md#getcurrentuser)
- [surveyCycle](index.SurveyResponseRepository.md#surveycycle)
- [surveyCycleRepositoryGetter](index.SurveyResponseRepository.md#surveycyclerepositorygetter)
- [surveyResponder](index.SurveyResponseRepository.md#surveyresponder)
- [surveyResponderRepositoryGetter](index.SurveyResponseRepository.md#surveyresponderrepositorygetter)
- [surveyResponseDetailRepositoryGetter](index.SurveyResponseRepository.md#surveyresponsedetailrepositorygetter)
- [surveyResponseDetails](index.SurveyResponseRepository.md#surveyresponsedetails)

### Methods

- [create](index.SurveyResponseRepository.md#create)
- [createAll](index.SurveyResponseRepository.md#createall)
- [replaceById](index.SurveyResponseRepository.md#replacebyid)
- [save](index.SurveyResponseRepository.md#save)
- [update](index.SurveyResponseRepository.md#update)
- [updateAll](index.SurveyResponseRepository.md#updateall)
- [updateById](index.SurveyResponseRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponseRepository**(`dataSource`, `surveyCycleRepositoryGetter`, `surveyResponseDetailRepositoryGetter`, `surveyResponderRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](index.SurveyCycleRepository.md)\> |
| `surveyResponseDetailRepositoryGetter` | `Getter`<[`SurveyResponseDetailRepository`](index.SurveyResponseDetailRepository.md)\> |
| `surveyResponderRepositoryGetter` | `Getter`<[`SurveyResponderRepository`](index.SurveyResponderRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SurveyResponse,
  typeof SurveyResponse.prototype.id,
  SurveyResponseRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L45)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L55)

___

### surveyCycle

• `Readonly` **surveyCycle**: `BelongsToAccessor`<[`SurveyCycle`](index.SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L30)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](index.SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L49)

___

### surveyResponder

• `Readonly` **surveyResponder**: `BelongsToAccessor`<[`SurveyResponder`](index.SurveyResponder.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L40)

___

### surveyResponderRepositoryGetter

• `Protected` **surveyResponderRepositoryGetter**: `Getter`<[`SurveyResponderRepository`](index.SurveyResponderRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L53)

___

### surveyResponseDetailRepositoryGetter

• `Protected` **surveyResponseDetailRepositoryGetter**: `Getter`<[`SurveyResponseDetailRepository`](index.SurveyResponseDetailRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L51)

___

### surveyResponseDetails

• `Readonly` **surveyResponseDetails**: `HasManyRepositoryFactory`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-response.repository.ts#L35)

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

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

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
| `data` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

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

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

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
| `data` | `DataObject`<[`SurveyResponse`](index.SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
