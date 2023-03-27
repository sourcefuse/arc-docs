[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / ThemeRepository

# Class: ThemeRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Theme`](Theme.md), typeof [`id`](Theme.md#id)\>

  ↳ **`ThemeRepository`**

## Table of contents

### Constructors

- [constructor](ThemeRepository.md#constructor)

### Properties

- [getCurrentUser](ThemeRepository.md#getcurrentuser)

### Methods

- [create](ThemeRepository.md#create)
- [createAll](ThemeRepository.md#createall)
- [replaceById](ThemeRepository.md#replacebyid)
- [save](ThemeRepository.md#save)
- [update](ThemeRepository.md#update)
- [updateAll](ThemeRepository.md#updateall)
- [updateById](ThemeRepository.md#updatebyid)

## Constructors

### constructor

• **new ThemeRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Theme,
  typeof Theme.prototype.id
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/theme.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/theme.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/theme.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Theme`](Theme.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Theme`](Theme.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Theme`](Theme.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Theme`](Theme.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Theme`](Theme.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Theme`](Theme.md)[]\>

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
| `data` | `DataObject`<[`Theme`](Theme.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Theme`](Theme.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Theme`](Theme.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Theme`](Theme.md)\>

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
| `entity` | [`Theme`](Theme.md) |
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
| `data` | `DataObject`<[`Theme`](Theme.md)\> |
| `where?` | `Where`<[`Theme`](Theme.md)\> |
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
| `data` | `DataObject`<[`Theme`](Theme.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
