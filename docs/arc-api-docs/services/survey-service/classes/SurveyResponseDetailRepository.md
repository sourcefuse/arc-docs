[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponseDetailRepository

# Class: SurveyResponseDetailRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SurveyResponseDetail`](SurveyResponseDetail.md), typeof [`id`](SurveyResponseDetail.md#id)\>

  ↳ **`SurveyResponseDetailRepository`**

## Table of contents

### Constructors

- [constructor](SurveyResponseDetailRepository.md#constructor)

### Properties

- [getCurrentUser](SurveyResponseDetailRepository.md#getcurrentuser)
- [option](SurveyResponseDetailRepository.md#option)
- [optionsRepositoryGetter](SurveyResponseDetailRepository.md#optionsrepositorygetter)
- [question](SurveyResponseDetailRepository.md#question)
- [questionRepositoryGetter](SurveyResponseDetailRepository.md#questionrepositorygetter)
- [surveyResponse](SurveyResponseDetailRepository.md#surveyresponse)
- [surveyResponseRepositoryGetter](SurveyResponseDetailRepository.md#surveyresponserepositorygetter)

### Methods

- [create](SurveyResponseDetailRepository.md#create)
- [createAll](SurveyResponseDetailRepository.md#createall)
- [replaceById](SurveyResponseDetailRepository.md#replacebyid)
- [save](SurveyResponseDetailRepository.md#save)
- [update](SurveyResponseDetailRepository.md#update)
- [updateAll](SurveyResponseDetailRepository.md#updateall)
- [updateById](SurveyResponseDetailRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponseDetailRepository**(`dataSource`, `surveyResponseRepositoryGetter`, `questionRepositoryGetter`, `optionsRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyResponseRepositoryGetter` | `Getter`<[`SurveyResponseRepository`](SurveyResponseRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](QuestionRepository.md)\> |
| `optionsRepositoryGetter` | `Getter`<[`OptionsRepository`](OptionsRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SurveyResponseDetail,
  typeof SurveyResponseDetail.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L33)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L43)

___

### option

• `Readonly` **option**: `BelongsToAccessor`<[`Options`](Options.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L28)

___

### optionsRepositoryGetter

• `Protected` **optionsRepositoryGetter**: `Getter`<[`OptionsRepository`](OptionsRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L41)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L23)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L39)

___

### surveyResponse

• `Readonly` **surveyResponse**: `BelongsToAccessor`<[`SurveyResponse`](SurveyResponse.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L18)

___

### surveyResponseRepositoryGetter

• `Protected` **surveyResponseRepositoryGetter**: `Getter`<[`SurveyResponseRepository`](SurveyResponseRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey-response-detail.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey-response-detail.repository.ts#L37)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyResponseDetail`](SurveyResponseDetail.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponseDetail`](SurveyResponseDetail.md)[]\>

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
| `data` | `DataObject`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyResponseDetail`](SurveyResponseDetail.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\>

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
| `entity` | [`SurveyResponseDetail`](SurveyResponseDetail.md) |
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
| `data` | `DataObject`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\> |
| `where?` | `Where`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\> |
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
| `data` | `DataObject`<[`SurveyResponseDetail`](SurveyResponseDetail.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
