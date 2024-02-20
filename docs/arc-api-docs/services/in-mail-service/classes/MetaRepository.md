[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / MetaRepository

# Class: MetaRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Meta`](Meta.md), typeof [`id`](Meta.md#id)\>

  ↳ **`MetaRepository`**

## Table of contents

### Constructors

- [constructor](MetaRepository.md#constructor)

### Properties

- [getCurrentUser](MetaRepository.md#getcurrentuser)
- [message](MetaRepository.md#message)

### Methods

- [create](MetaRepository.md#create)
- [createAll](MetaRepository.md#createall)
- [replaceById](MetaRepository.md#replacebyid)
- [save](MetaRepository.md#save)
- [update](MetaRepository.md#update)
- [updateAll](MetaRepository.md#updateall)
- [updateById](MetaRepository.md#updatebyid)

## Constructors

### constructor

• **new MetaRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Meta,
  typeof Meta.prototype.id
\&gt;.constructor

#### Defined in

[services/in-mail-service/src/repositories/meta.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/meta.repository.ts#L21)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/in-mail-service/src/repositories/meta.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/meta.repository.ts#L25)

___

### message

• `Readonly` **message**: `BelongsToAccessor`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/meta.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/meta.repository.ts#L19)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Meta`](Meta.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Meta`](Meta.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Meta`](Meta.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Meta`](Meta.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Meta`](Meta.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Meta`](Meta.md)[]\>

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
| `data` | `DataObject`<[`Meta`](Meta.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Meta`](Meta.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Meta`](Meta.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Meta`](Meta.md)\>

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
| `entity` | [`Meta`](Meta.md) |
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
| `data` | `DataObject`<[`Meta`](Meta.md)\> |
| `where?` | `Where`<[`Meta`](Meta.md)\> |
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
| `data` | `DataObject`<[`Meta`](Meta.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
