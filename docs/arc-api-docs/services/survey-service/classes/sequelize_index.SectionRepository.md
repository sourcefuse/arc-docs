[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SectionRepository

# Class: SectionRepository

[sequelize.index](../modules/sequelize_index.md).SectionRepository

## Hierarchy

- `SequelizeUserModifyCrudRepository`<[`Section`](index.Section.md), typeof [`id`](index.Section.md#id)\>

  ↳ **`SectionRepository`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SectionRepository.md#constructor)

### Properties

- [getCurrentUser](sequelize_index.SectionRepository.md#getcurrentuser)
- [logger](sequelize_index.SectionRepository.md#logger)
- [surveyRepositoryGetter](sequelize_index.SectionRepository.md#surveyrepositorygetter)

### Methods

- [\_updateSurveyModifiedByAndOn](sequelize_index.SectionRepository.md#_updatesurveymodifiedbyandon)
- [create](sequelize_index.SectionRepository.md#create)
- [createAll](sequelize_index.SectionRepository.md#createall)
- [reorder](sequelize_index.SectionRepository.md#reorder)
- [replaceById](sequelize_index.SectionRepository.md#replacebyid)
- [save](sequelize_index.SectionRepository.md#save)
- [update](sequelize_index.SectionRepository.md#update)
- [updateAll](sequelize_index.SectionRepository.md#updateall)
- [updateById](sequelize_index.SectionRepository.md#updatebyid)

## Constructors

### constructor

• **new SectionRepository**(`dataSource`, `surveyRepositoryGetter`, `logger`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `SequelizeDataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\> |
| `logger` | `ILogger` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

SequelizeUserModifyCrudRepository&lt;
  Section,
  typeof Section.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L23)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

SequelizeUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L30)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L28)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](sequelize_index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L27)

## Methods

### \_updateSurveyModifiedByAndOn

▸ **_updateSurveyModifiedByAndOn**(`surveyId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L73)

___

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Section`](index.Section.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Section`](index.Section.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`Section`](index.Section.md)\>

#### Overrides

SequelizeUserModifyCrudRepository.create

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L35)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Section`](index.Section.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Section`](index.Section.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Section`](index.Section.md)[]\>

#### Inherited from

SequelizeUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:13

___

### reorder

▸ **reorder**(`surveyId`, `displayOrder`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `surveyId` | `string` |
| `displayOrder` | `number` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L59)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Section`](index.Section.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:18

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Section`](index.Section.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Section`](index.Section.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Section`](index.Section.md)\>

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
| `entity` | [`Section`](index.Section.md) |
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
| `data` | `DataObject`<[`Section`](index.Section.md)\> |
| `where?` | `Where`<[`Section`](index.Section.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Overrides

SequelizeUserModifyCrudRepository.updateAll

#### Defined in

[services/survey-service/src/repositories/sequelize/section.repository.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/sequelize/section.repository.ts#L45)

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Section`](index.Section.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

SequelizeUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/sequelize/sequelize-user-modify-crud.repository.base.d.ts:17
