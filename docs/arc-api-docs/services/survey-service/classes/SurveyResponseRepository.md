[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponseRepository

# Class: SurveyResponseRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SurveyResponse`](SurveyResponse.md), typeof [`id`](SurveyResponse.md#id), [`SurveyResponseRelations`](../interfaces/SurveyResponseRelations.md)\>

  ↳ **`SurveyResponseRepository`**

## Table of contents

### Constructors

- [constructor](SurveyResponseRepository.md#constructor)

### Properties

- [getCurrentUser](SurveyResponseRepository.md#getcurrentuser)
- [surveyCycle](SurveyResponseRepository.md#surveycycle)
- [surveyCycleRepositoryGetter](SurveyResponseRepository.md#surveycyclerepositorygetter)
- [surveyResponder](SurveyResponseRepository.md#surveyresponder)
- [surveyResponderRepositoryGetter](SurveyResponseRepository.md#surveyresponderrepositorygetter)
- [surveyResponseDetailRepositoryGetter](SurveyResponseRepository.md#surveyresponsedetailrepositorygetter)
- [surveyResponseDetails](SurveyResponseRepository.md#surveyresponsedetails)

### Methods

- [create](SurveyResponseRepository.md#create)
- [createAll](SurveyResponseRepository.md#createall)
- [replaceById](SurveyResponseRepository.md#replacebyid)
- [save](SurveyResponseRepository.md#save)
- [update](SurveyResponseRepository.md#update)
- [updateAll](SurveyResponseRepository.md#updateall)
- [updateById](SurveyResponseRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponseRepository**(`dataSource`, `surveyCycleRepositoryGetter`, `surveyResponseDetailRepositoryGetter`, `surveyResponderRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](SurveyCycleRepository.md)\> |
| `surveyResponseDetailRepositoryGetter` | `Getter`<[`SurveyResponseDetailRepository`](SurveyResponseDetailRepository.md)\> |
| `surveyResponderRepositoryGetter` | `Getter`<[`SurveyResponderRepository`](SurveyResponderRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SurveyResponse,
  typeof SurveyResponse.prototype.id,
  SurveyResponseRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L45)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L55)

___

### surveyCycle

• `Readonly` **surveyCycle**: `BelongsToAccessor`<[`SurveyCycle`](SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L30)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L49)

___

### surveyResponder

• `Readonly` **surveyResponder**: `BelongsToAccessor`<[`SurveyResponder`](SurveyResponder.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L40)

___

### surveyResponderRepositoryGetter

• `Protected` **surveyResponderRepositoryGetter**: `Getter`<[`SurveyResponderRepository`](SurveyResponderRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L53)

___

### surveyResponseDetailRepositoryGetter

• `Protected` **surveyResponseDetailRepositoryGetter**: `Getter`<[`SurveyResponseDetailRepository`](SurveyResponseDetailRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L51)

___

### surveyResponseDetails

• `Readonly` **surveyResponseDetails**: `HasManyRepositoryFactory`<[`SurveyResponseDetail`](SurveyResponseDetail.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response.repository.ts#L35)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyResponse`](SurveyResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyResponse`](SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponse`](SurveyResponse.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyResponse`](SurveyResponse.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyResponse`](SurveyResponse.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponse`](SurveyResponse.md)[]\>

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
| `data` | `DataObject`<[`SurveyResponse`](SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyResponse`](SurveyResponse.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyResponse`](SurveyResponse.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponse`](SurveyResponse.md)\>

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
| `entity` | [`SurveyResponse`](SurveyResponse.md) |
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
| `data` | `DataObject`<[`SurveyResponse`](SurveyResponse.md)\> |
| `where?` | `Where`<[`SurveyResponse`](SurveyResponse.md)\> |
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
| `data` | `DataObject`<[`SurveyResponse`](SurveyResponse.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
