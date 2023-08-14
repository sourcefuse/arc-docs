[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyResponseDetailRepository

# Class: SurveyResponseDetailRepository

[sequelize.index](../modules/sequelize_index.md).SurveyResponseDetailRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md), typeof [`id`](index.SurveyResponseDetail.md#id)\>

  ↳ **`SurveyResponseDetailRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyResponseDetailRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.SurveyResponseDetailRepository.md#getcurrentuser)
- [option](sequelize_index.SurveyResponseDetailRepository.md#option)
- [optionsRepositoryGetter](sequelize_index.SurveyResponseDetailRepository.md#optionsrepositorygetter)
- [question](sequelize_index.SurveyResponseDetailRepository.md#question)
- [questionRepositoryGetter](sequelize_index.SurveyResponseDetailRepository.md#questionrepositorygetter)
- [surveyResponse](sequelize_index.SurveyResponseDetailRepository.md#surveyresponse)
- [surveyResponseRepositoryGetter](sequelize_index.SurveyResponseDetailRepository.md#surveyresponserepositorygetter)

### Methods

- [create](sequelize_index.SurveyResponseDetailRepository.md#create)
- [createAll](sequelize_index.SurveyResponseDetailRepository.md#createall)
- [replaceById](sequelize_index.SurveyResponseDetailRepository.md#replacebyid)
- [save](sequelize_index.SurveyResponseDetailRepository.md#save)
- [update](sequelize_index.SurveyResponseDetailRepository.md#update)
- [updateAll](sequelize_index.SurveyResponseDetailRepository.md#updateall)
- [updateById](sequelize_index.SurveyResponseDetailRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyResponseDetailRepository**(`dataSource`, `surveyResponseRepositoryGetter`, `questionRepositoryGetter`, `optionsRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyResponseRepositoryGetter` | `Getter`<[`SurveyResponseRepository`](sequelize_index.SurveyResponseRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\> |
| `optionsRepositoryGetter` | `Getter`<[`OptionsRepository`](sequelize_index.OptionsRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  SurveyResponseDetail,
  typeof SurveyResponseDetail.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L36)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L47)

___

### option

• `Readonly` **option**: `BelongsToAccessor`<[`Options`](index.Options.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L31)

___

### optionsRepositoryGetter

• `Protected` **optionsRepositoryGetter**: `Getter`<[`OptionsRepository`](sequelize_index.OptionsRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L45)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](index.Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L26)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](sequelize_index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L43)

___

### surveyResponse

• `Readonly` **surveyResponse**: `BelongsToAccessor`<[`SurveyResponse`](index.SurveyResponse.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L21)

___

### surveyResponseRepositoryGetter

• `Protected` **surveyResponseRepositoryGetter**: `Getter`<[`SurveyResponseRepository`](sequelize_index.SurveyResponseRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/survey-response-detail.repository.ts#L41)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\>

#### Inherited from

SequelizeUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:12

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)[]\>

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
| `data` | `DataObject`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SurveyResponseDetail`](index.SurveyResponseDetail.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\>

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
| `entity` | [`SurveyResponseDetail`](index.SurveyResponseDetail.md) |
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
| `data` | `DataObject`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\> |
| `where?` | `Where`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\> |
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
| `data` | `DataObject`<[`SurveyResponseDetail`](index.SurveyResponseDetail.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
