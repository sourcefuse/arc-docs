[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyResponderRepository

# Class: SurveyResponderRepository

[index](../modules/index.md).SurveyResponderRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SurveyResponder`](index.SurveyResponder.md), typeof [`id`](index.SurveyResponder.md#id), [`SurveyResponderRelations`](../interfaces/index.SurveyResponderRelations.md)\>

  ↳ **`SurveyResponderRepository`**

## Table of contents

### Constructors

- [constructor](index.SurveyResponderRepository.md#constructor)

### Properties

- [getCurrentUser](index.SurveyResponderRepository.md#getcurrentuser)
- [survey](index.SurveyResponderRepository.md#survey)
- [surveyCycle](index.SurveyResponderRepository.md#surveycycle)
- [surveyCycleRepositoryGetter](index.SurveyResponderRepository.md#surveycyclerepositorygetter)
- [surveyRepositoryGetter](index.SurveyResponderRepository.md#surveyrepositorygetter)

### Methods

- [create](index.SurveyResponderRepository.md#create)
- [createAll](index.SurveyResponderRepository.md#createall)
- [replaceById](index.SurveyResponderRepository.md#replacebyid)
- [save](index.SurveyResponderRepository.md#save)
- [update](index.SurveyResponderRepository.md#update)
- [updateAll](index.SurveyResponderRepository.md#updateall)
- [updateById](index.SurveyResponderRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponderRepository**(`dataSource`, `surveyRepositoryGetter`, `surveyCycleRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\> |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](index.SurveyCycleRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SurveyResponder,
  typeof SurveyResponder.prototype.id,
  SurveyResponderRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L40)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L47)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L30)

___

### surveyCycle

• `Readonly` **surveyCycle**: `BelongsToAccessor`<[`SurveyCycle`](index.SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L35)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](index.SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L45)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L43)

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

DefaultUserModifyCrudRepository.create

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey-responder.repository.ts#L65)

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
| `data` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

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

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

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
| `data` | `DataObject`<[`SurveyResponder`](index.SurveyResponder.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
