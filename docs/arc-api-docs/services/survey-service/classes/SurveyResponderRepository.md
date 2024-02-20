[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponderRepository

# Class: SurveyResponderRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SurveyResponder`](SurveyResponder.md), typeof [`id`](SurveyResponder.md#id), [`SurveyResponderRelations`](../interfaces/SurveyResponderRelations.md)\>

  ↳ **`SurveyResponderRepository`**

## Table of contents

### Constructors

- [constructor](SurveyResponderRepository.md#constructor)

### Properties

- [getCurrentUser](SurveyResponderRepository.md#getcurrentuser)
- [survey](SurveyResponderRepository.md#survey)
- [surveyCycle](SurveyResponderRepository.md#surveycycle)
- [surveyCycleRepositoryGetter](SurveyResponderRepository.md#surveycyclerepositorygetter)
- [surveyRepositoryGetter](SurveyResponderRepository.md#surveyrepositorygetter)

### Methods

- [create](SurveyResponderRepository.md#create)
- [createAll](SurveyResponderRepository.md#createall)
- [replaceById](SurveyResponderRepository.md#replacebyid)
- [save](SurveyResponderRepository.md#save)
- [update](SurveyResponderRepository.md#update)
- [updateAll](SurveyResponderRepository.md#updateall)
- [updateById](SurveyResponderRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponderRepository**(`dataSource`, `surveyRepositoryGetter`, `surveyCycleRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](SurveyRepository.md)\> |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](SurveyCycleRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SurveyResponder,
  typeof SurveyResponder.prototype.id,
  SurveyResponderRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L40)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L47)

___

### survey

• `Readonly` **survey**: `BelongsToAccessor`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L30)

___

### surveyCycle

• `Readonly` **surveyCycle**: `BelongsToAccessor`<[`SurveyCycle`](SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L35)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L45)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L43)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyResponder`](SurveyResponder.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyResponder`](SurveyResponder.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`SurveyResponder`](SurveyResponder.md)\>

#### Overrides

DefaultUserModifyCrudRepository.create

#### Defined in

[services/survey-service/src/repositories/survey-responder.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-responder.repository.ts#L65)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyResponder`](SurveyResponder.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyResponder`](SurveyResponder.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponder`](SurveyResponder.md)[]\>

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
| `data` | `DataObject`<[`SurveyResponder`](SurveyResponder.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyResponder`](SurveyResponder.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyResponder`](SurveyResponder.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponder`](SurveyResponder.md)\>

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
| `entity` | [`SurveyResponder`](SurveyResponder.md) |
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
| `data` | `DataObject`<[`SurveyResponder`](SurveyResponder.md)\> |
| `where?` | `Where`<[`SurveyResponder`](SurveyResponder.md)\> |
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
| `data` | `DataObject`<[`SurveyResponder`](SurveyResponder.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
