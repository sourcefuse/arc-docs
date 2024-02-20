[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / RecentSearchRepository

# Class: RecentSearchRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`RecentSearch`](RecentSearch.md), typeof [`id`](RecentSearch.md#id)\>

  ↳ **`RecentSearchRepository`**

## Table of contents

### Constructors

- [constructor](RecentSearchRepository.md#constructor)

### Properties

- [config](RecentSearchRepository.md#config)
- [getCurrentUser](RecentSearchRepository.md#getcurrentuser)
- [params](RecentSearchRepository.md#params)

### Methods

- [create](RecentSearchRepository.md#create)
- [createAll](RecentSearchRepository.md#createall)
- [replaceById](RecentSearchRepository.md#replacebyid)
- [save](RecentSearchRepository.md#save)
- [update](RecentSearchRepository.md#update)
- [updateAll](RecentSearchRepository.md#updateall)
- [updateById](RecentSearchRepository.md#updatebyid)

## Constructors

### constructor

• **new RecentSearchRepository**(`dataSource`, `queryRepositoryGetter`, `config`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `queryRepositoryGetter` | `Getter`<[`SearchQueryRepository`](SearchQueryRepository.md)\> |
| `config` | [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<[`SearchResult`](SearchResult.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  RecentSearch,
  typeof RecentSearch.prototype.id
\&gt;.constructor

#### Defined in

[services/search-service/src/repositories/recent-search.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/recent-search.repository.ts#L32)

## Properties

### config

• `Private` `Readonly` **config**: [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<[`SearchResult`](SearchResult.md)\>

#### Defined in

[services/search-service/src/repositories/recent-search.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/recent-search.repository.ts#L38)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/search-service/src/repositories/recent-search.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/recent-search.repository.ts#L40)

___

### params

• `Readonly` **params**: `HasManyRepositoryFactory`<[`SearchQuery`](SearchQuery.md), `undefined` \| `string`\>

#### Defined in

[services/search-service/src/repositories/recent-search.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/recent-search.repository.ts#L27)

## Methods

### create

▸ **create**(`query`, `user?`): `Promise`<[`RecentSearch`](RecentSearch.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`SearchQuery`](SearchQuery.md) |
| `user?` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Returns

`Promise`<[`RecentSearch`](RecentSearch.md)\>

#### Overrides

DefaultUserModifyCrudRepository.create

#### Defined in

[services/search-service/src/repositories/recent-search.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/repositories/recent-search.repository.ts#L52)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`RecentSearch`](RecentSearch.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`RecentSearch`](RecentSearch.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`RecentSearch`](RecentSearch.md)[]\>

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
| `data` | `DataObject`<[`RecentSearch`](RecentSearch.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`RecentSearch`](RecentSearch.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`RecentSearch`](RecentSearch.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`RecentSearch`](RecentSearch.md)\>

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
| `entity` | [`RecentSearch`](RecentSearch.md) |
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
| `data` | `DataObject`<[`RecentSearch`](RecentSearch.md)\> |
| `where?` | `Where`<[`RecentSearch`](RecentSearch.md)\> |
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
| `data` | `DataObject`<[`RecentSearch`](RecentSearch.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
