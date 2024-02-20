[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / FeatureToggleRepository

# Class: FeatureToggleRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`FeatureToggle`](FeatureToggle.md), typeof [`id`](FeatureToggle.md#id)\>

  ↳ **`FeatureToggleRepository`**

## Table of contents

### Constructors

- [constructor](FeatureToggleRepository.md#constructor)

### Properties

- [getCurrentUser](FeatureToggleRepository.md#getcurrentuser)

### Methods

- [create](FeatureToggleRepository.md#create)
- [createAll](FeatureToggleRepository.md#createall)
- [replaceById](FeatureToggleRepository.md#replacebyid)
- [save](FeatureToggleRepository.md#save)
- [update](FeatureToggleRepository.md#update)
- [updateAll](FeatureToggleRepository.md#updateall)
- [updateById](FeatureToggleRepository.md#updatebyid)

## Constructors

### constructor

• **new FeatureToggleRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  FeatureToggle,
  typeof FeatureToggle.prototype.id
\&gt;.constructor

#### Defined in

[services/feature-toggle-service/src/repositories/feature-toggle.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/repositories/feature-toggle.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/feature-toggle-service/src/repositories/feature-toggle.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/repositories/feature-toggle.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`FeatureToggle`](FeatureToggle.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`FeatureToggle`](FeatureToggle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`FeatureToggle`](FeatureToggle.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`FeatureToggle`](FeatureToggle.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`FeatureToggle`](FeatureToggle.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`FeatureToggle`](FeatureToggle.md)[]\>

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
| `data` | `DataObject`<[`FeatureToggle`](FeatureToggle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`FeatureToggle`](FeatureToggle.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`FeatureToggle`](FeatureToggle.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`FeatureToggle`](FeatureToggle.md)\>

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
| `entity` | [`FeatureToggle`](FeatureToggle.md) |
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
| `data` | `DataObject`<[`FeatureToggle`](FeatureToggle.md)\> |
| `where?` | `Where`<[`FeatureToggle`](FeatureToggle.md)\> |
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
| `data` | `DataObject`<[`FeatureToggle`](FeatureToggle.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
