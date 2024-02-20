[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / FeatureRepository

# Class: FeatureRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Feature`](Feature.md), typeof [`name`](Feature.md#name)\>

  ↳ **`FeatureRepository`**

## Table of contents

### Constructors

- [constructor](FeatureRepository.md#constructor)

### Properties

- [getCurrentUser](FeatureRepository.md#getcurrentuser)

### Methods

- [create](FeatureRepository.md#create)
- [createAll](FeatureRepository.md#createall)
- [replaceById](FeatureRepository.md#replacebyid)
- [save](FeatureRepository.md#save)
- [update](FeatureRepository.md#update)
- [updateAll](FeatureRepository.md#updateall)
- [updateById](FeatureRepository.md#updatebyid)

## Constructors

### constructor

• **new FeatureRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Feature,
  typeof Feature.prototype.name
\&gt;.constructor

#### Defined in

[services/feature-toggle-service/src/repositories/feature.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/repositories/feature.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/feature-toggle-service/src/repositories/feature.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/repositories/feature.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Feature`](Feature.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Feature`](Feature.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Feature`](Feature.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Feature`](Feature.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Feature`](Feature.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Feature`](Feature.md)[]\>

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
| `id` | `string` |
| `data` | `DataObject`<[`Feature`](Feature.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Feature`](Feature.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Feature`](Feature.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Feature`](Feature.md)\>

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
| `entity` | [`Feature`](Feature.md) |
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
| `data` | `DataObject`<[`Feature`](Feature.md)\> |
| `where?` | `Where`<[`Feature`](Feature.md)\> |
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
| `id` | `string` |
| `data` | `DataObject`<[`Feature`](Feature.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
