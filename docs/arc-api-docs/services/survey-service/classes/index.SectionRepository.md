[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SectionRepository

# Class: SectionRepository

[index](../modules/index.md).SectionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Section`](index.Section.md), typeof [`id`](index.Section.md#id)\>

  ↳ **`SectionRepository`**

## Table of contents

### Constructors

- [constructor](index.SectionRepository.md#constructor)

### Properties

- [getCurrentUser](index.SectionRepository.md#getcurrentuser)
- [logger](index.SectionRepository.md#logger)
- [surveyRepositoryGetter](index.SectionRepository.md#surveyrepositorygetter)

### Methods

- [\_updateSurveyModifiedByAndOn](index.SectionRepository.md#_updatesurveymodifiedbyandon)
- [create](index.SectionRepository.md#create)
- [createAll](index.SectionRepository.md#createall)
- [reorder](index.SectionRepository.md#reorder)
- [replaceById](index.SectionRepository.md#replacebyid)
- [save](index.SectionRepository.md#save)
- [update](index.SectionRepository.md#update)
- [updateAll](index.SectionRepository.md#updateall)
- [updateById](index.SectionRepository.md#updatebyid)

## Constructors

### constructor

• **new SectionRepository**(`dataSource`, `surveyRepositoryGetter`, `logger`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyRepositoryGetter` | `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\> |
| `logger` | `ILogger` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Section,
  typeof Section.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/section.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L27)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/section.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L33)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/survey-service/src/repositories/section.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L31)

___

### surveyRepositoryGetter

• `Protected` **surveyRepositoryGetter**: `Getter`<[`SurveyRepository`](index.SurveyRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/section.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L30)

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

[services/survey-service/src/repositories/section.repository.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L76)

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

DefaultUserModifyCrudRepository.create

#### Defined in

[services/survey-service/src/repositories/section.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L38)

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

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

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

[services/survey-service/src/repositories/section.repository.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L62)

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

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

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

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

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

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

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

DefaultUserModifyCrudRepository.updateAll

#### Defined in

[services/survey-service/src/repositories/section.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/section.repository.ts#L48)

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

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
