[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / FeatureValuesRepository

# Class: FeatureValuesRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`FeatureValues`](FeatureValues.md), typeof [`id`](FeatureValues.md#id)\>

  ↳ **`FeatureValuesRepository`**

## Table of contents

### Constructors

- [constructor](FeatureValuesRepository.md#constructor)

### Properties

- [getCurrentUser](FeatureValuesRepository.md#getcurrentuser)

### Methods

- [create](FeatureValuesRepository.md#create)
- [createAll](FeatureValuesRepository.md#createall)
- [replaceById](FeatureValuesRepository.md#replacebyid)
- [save](FeatureValuesRepository.md#save)
- [update](FeatureValuesRepository.md#update)
- [updateAll](FeatureValuesRepository.md#updateall)
- [updateById](FeatureValuesRepository.md#updatebyid)

## Constructors

### constructor

• **new FeatureValuesRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  FeatureValues,
  typeof FeatureValues.prototype.id
\&gt;.constructor

#### Defined in

[services/feature-toggle-service/src/repositories/feature-values.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/repositories/feature-values.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/feature-toggle-service/src/repositories/feature-values.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/repositories/feature-values.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`FeatureValues`](FeatureValues.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`FeatureValues`](FeatureValues.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`FeatureValues`](FeatureValues.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`FeatureValues`](FeatureValues.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`FeatureValues`](FeatureValues.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`FeatureValues`](FeatureValues.md)[]\>

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
| `data` | `DataObject`<[`FeatureValues`](FeatureValues.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`FeatureValues`](FeatureValues.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`FeatureValues`](FeatureValues.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`FeatureValues`](FeatureValues.md)\>

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
| `entity` | [`FeatureValues`](FeatureValues.md) |
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
| `data` | `DataObject`<[`FeatureValues`](FeatureValues.md)\> |
| `where?` | `Where`<[`FeatureValues`](FeatureValues.md)\> |
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
| `data` | `DataObject`<[`FeatureValues`](FeatureValues.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
