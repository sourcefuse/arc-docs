[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / ThreadViewRepository

# Class: ThreadViewRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`ThreadView`](ThreadView.md), typeof [`id`](ThreadView.md#id)\>

  ↳ **`ThreadViewRepository`**

## Table of contents

### Constructors

- [constructor](ThreadViewRepository.md#constructor)

### Properties

- [getCurrentUser](ThreadViewRepository.md#getcurrentuser)

### Methods

- [create](ThreadViewRepository.md#create)
- [createAll](ThreadViewRepository.md#createall)
- [replaceById](ThreadViewRepository.md#replacebyid)
- [save](ThreadViewRepository.md#save)
- [update](ThreadViewRepository.md#update)
- [updateAll](ThreadViewRepository.md#updateall)
- [updateById](ThreadViewRepository.md#updatebyid)

## Constructors

### constructor

• **new ThreadViewRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  ThreadView,
  typeof ThreadView.prototype.id
\&gt;.constructor

#### Defined in

[services/in-mail-service/src/repositories/thread-view.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread-view.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/in-mail-service/src/repositories/thread-view.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/thread-view.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`ThreadView`](ThreadView.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`ThreadView`](ThreadView.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`ThreadView`](ThreadView.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`ThreadView`](ThreadView.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`ThreadView`](ThreadView.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`ThreadView`](ThreadView.md)[]\>

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
| `data` | `DataObject`<[`ThreadView`](ThreadView.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`ThreadView`](ThreadView.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`ThreadView`](ThreadView.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`ThreadView`](ThreadView.md)\>

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
| `entity` | [`ThreadView`](ThreadView.md) |
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
| `data` | `DataObject`<[`ThreadView`](ThreadView.md)\> |
| `where?` | `Where`<[`ThreadView`](ThreadView.md)\> |
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
| `data` | `DataObject`<[`ThreadView`](ThreadView.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
