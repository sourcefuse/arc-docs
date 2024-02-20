[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchQueryRepository

# Class: SearchQueryRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`SearchQuery`](SearchQuery.md), typeof [`id`](SearchQuery.md#id)\>

  ↳ **`SearchQueryRepository`**

## Table of contents

### Constructors

- [constructor](SearchQueryRepository.md#constructor)

### Properties

- [config](SearchQueryRepository.md#config)
- [getCurrentUser](SearchQueryRepository.md#getcurrentuser)

### Methods

- [create](SearchQueryRepository.md#create)
- [createAll](SearchQueryRepository.md#createall)
- [deleteAll](SearchQueryRepository.md#deleteall)
- [replaceById](SearchQueryRepository.md#replacebyid)
- [save](SearchQueryRepository.md#save)
- [update](SearchQueryRepository.md#update)
- [updateAll](SearchQueryRepository.md#updateall)
- [updateById](SearchQueryRepository.md#updatebyid)

## Constructors

### constructor

• **new SearchQueryRepository**(`dataSource`, `config`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `config` | [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<[`SearchResult`](SearchResult.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  SearchQuery,
  typeof SearchQuery.prototype.id
\&gt;.constructor

#### Defined in

[services/search-service/src/repositories/search-query.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/search-query.repository.ts#L20)

## Properties

### config

• `Private` `Readonly` **config**: [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<[`SearchResult`](SearchResult.md)\>

#### Defined in

[services/search-service/src/repositories/search-query.repository.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/search-query.repository.ts#L24)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/search-service/src/repositories/search-query.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/search-query.repository.ts#L26)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`SearchQuery`](SearchQuery.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`SearchQuery`](SearchQuery.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`SearchQuery`](SearchQuery.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`SearchQuery`](SearchQuery.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`SearchQuery`](SearchQuery.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`SearchQuery`](SearchQuery.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### deleteAll

▸ **deleteAll**(`where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `where?` | `Where`<[`SearchQuery`](SearchQuery.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Overrides

DefaultUserModifyCrudRepository.deleteAll

#### Defined in

[services/search-service/src/repositories/search-query.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/search-query.repository.ts#L33)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`SearchQuery`](SearchQuery.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`SearchQuery`](SearchQuery.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`SearchQuery`](SearchQuery.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`SearchQuery`](SearchQuery.md)\>

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
| `entity` | [`SearchQuery`](SearchQuery.md) |
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
| `data` | `DataObject`<[`SearchQuery`](SearchQuery.md)\> |
| `where?` | `Where`<[`SearchQuery`](SearchQuery.md)\> |
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
| `data` | `DataObject`<[`SearchQuery`](SearchQuery.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
