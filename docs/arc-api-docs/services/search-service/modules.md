[@sourceloop/search-service](README.md) / Exports

# @sourceloop/search-service

## Table of contents

### Namespaces

- [SearchServiceBindings](modules/SearchServiceBindings.md)

### Classes

- [MySqlQueryBuilder](classes/MySqlQueryBuilder.md)
- [PsqlQueryBuilder](classes/PsqlQueryBuilder.md)
- [QueryList](classes/QueryList.md)
- [RecentSearch](classes/RecentSearch.md)
- [RecentSearchRepository](classes/RecentSearchRepository.md)
- [SearchFilterProvider](classes/SearchFilterProvider.md)
- [SearchProvider](classes/SearchProvider.md)
- [SearchQuery](classes/SearchQuery.md)
- [SearchQueryBuilder](classes/SearchQueryBuilder.md)
- [SearchQueryRepository](classes/SearchQueryRepository.md)
- [SearchResult](classes/SearchResult.md)
- [SearchResultBase](classes/SearchResultBase.md)
- [SearchServiceComponent](classes/SearchServiceComponent.md)
- [SearchableModel](classes/SearchableModel.md)

### Interfaces

- [AndClause](interfaces/AndClause.md)
- [OrClause](interfaces/OrClause.md)
- [SearchServiceConfig](interfaces/SearchServiceConfig.md)
- [Searchable](interfaces/Searchable.md)

### Type Aliases

- [ColumnMap](modules.md#columnmap)
- [Condition](modules.md#condition)
- [ModelProperties](modules.md#modelproperties)
- [PredicateComparison](modules.md#predicatecomparison)
- [PredicateValueType](modules.md#predicatevaluetype)
- [Queries](modules.md#queries)
- [Query](modules.md#query)
- [RecentSearchWithRelations](modules.md#recentsearchwithrelations)
- [SearchControllerConfig](modules.md#searchcontrollerconfig)
- [SearchFilter](modules.md#searchfilter)
- [SearchFunctionType](modules.md#searchfunctiontype)
- [SearchQueryWithRelations](modules.md#searchquerywithrelations)
- [SearchResultBaseWithRelations](modules.md#searchresultbasewithrelations)
- [SearchResultWithRelations](modules.md#searchresultwithrelations)
- [SearchWhereFilter](modules.md#searchwherefilter)
- [SearchWhereFilterMap](modules.md#searchwherefiltermap)
- [SearchableModelsList](modules.md#searchablemodelslist)
- [SearchableModelsService](modules.md#searchablemodelsservice)
- [ShortHandEqualType](modules.md#shorthandequaltype)

### Variables

- [DATASOURCE\_NAME](modules.md#datasource_name)
- [IGNORED\_COLUMN](modules.md#ignored_column)

### Functions

- [authenticateOnCondition](modules.md#authenticateoncondition)
- [defineSearchController](modules.md#definesearchcontroller)
- [getOnCondition](modules.md#getoncondition)
- [isSearchableModel](modules.md#issearchablemodel)

## Type Aliases

### ColumnMap

Ƭ **ColumnMap**<`T`\>: { [key in ModelProperties<T\>]?: string }

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

#### Defined in

[services/search-service/src/types.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L65)

___

### Condition

Ƭ **Condition**<`MT`\>: { [P in keyof MT]?: PredicateComparison<MT[P]\> \| MT[P] & ShortHandEqualType }

#### Type parameters

| Name | Type |
| :------ | :------ |
| `MT` | extends `object` |

#### Defined in

[services/search-service/src/types.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L84)

___

### ModelProperties

Ƭ **ModelProperties**<`T`\>: keyof `Partial`<`Omit`<`T`, ``"toJSON"`` \| ``"toObject"`` \| ``"getId"`` \| ``"getIdObject"``\>\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

#### Defined in

[services/search-service/src/types.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L37)

___

### PredicateComparison

Ƭ **PredicateComparison**<`PT`\>: `Object`

#### Type parameters

| Name |
| :------ |
| `PT` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `between?` | [`PT`, `PT`] |
| `eq?` | `PT` |
| `gt?` | `PT` |
| `gte?` | `PT` |
| `inq?` | `PT`[] |
| `lt?` | `PT` |
| `lte?` | `PT` |
| `neq?` | `PT` |
| `nin?` | `PT`[] |

#### Defined in

[services/search-service/src/types.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L88)

___

### PredicateValueType

Ƭ **PredicateValueType**<`PT`\>: `PT` \| `PT`[] \| [`PT`, `PT`]

#### Type parameters

| Name |
| :------ |
| `PT` |

#### Defined in

[services/search-service/src/types.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L100)

___

### Queries

Ƭ **Queries**: ([`Query`](modules.md#query) \| [`Queries`](modules.md#queries))[]

#### Defined in

[services/search-service/src/types.ts:109](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L109)

___

### Query

Ƭ **Query**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `params` | [`ShortHandEqualType`](modules.md#shorthandequaltype)[] |
| `sql` | `string` |

#### Defined in

[services/search-service/src/types.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L104)

___

### RecentSearchWithRelations

Ƭ **RecentSearchWithRelations**: [`RecentSearch`](classes/RecentSearch.md)

#### Defined in

[services/search-service/src/models/recent-search.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/models/recent-search.model.ts#L36)

___

### SearchControllerConfig

Ƭ **SearchControllerConfig**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `authenticate?` | `boolean` |
| `authorizations?` | `string`[] |
| `basePath` | `string` |
| `name?` | `string` |
| `recentCount?` | `number` |
| `recents?` | `boolean` |

#### Defined in

[services/search-service/src/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L41)

___

### SearchFilter

Ƭ **SearchFilter**: (`query`: [`SearchQuery`](classes/SearchQuery.md), `user`: `IAuthUserWithPermissions`) => `Promise`<[`SearchWhereFilterMap`](modules.md#searchwherefiltermap) \| `undefined`\>

#### Type declaration

▸ (`query`, `user`): `Promise`<[`SearchWhereFilterMap`](modules.md#searchwherefiltermap) \| `undefined`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`SearchQuery`](classes/SearchQuery.md) |
| `user` | `IAuthUserWithPermissions` |

##### Returns

`Promise`<[`SearchWhereFilterMap`](modules.md#searchwherefiltermap) \| `undefined`\>

#### Defined in

[services/search-service/src/services/search-filter.provider.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search-filter.provider.ts#L9)

___

### SearchFunctionType

Ƭ **SearchFunctionType**<`T`\>: (`query`: [`SearchQuery`](classes/SearchQuery.md)) => `Promise`<`T`[]\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`query`): `Promise`<`T`[]\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`SearchQuery`](classes/SearchQuery.md) |

##### Returns

`Promise`<`T`[]\>

#### Defined in

[services/search-service/src/types.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L10)

___

### SearchQueryWithRelations

Ƭ **SearchQueryWithRelations**: [`SearchQuery`](classes/SearchQuery.md)

#### Defined in

[services/search-service/src/models/search-query.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/models/search-query.model.ts#L70)

___

### SearchResultBaseWithRelations

Ƭ **SearchResultBaseWithRelations**: [`SearchResultBase`](classes/SearchResultBase.md)

#### Defined in

[services/search-service/src/models/search-result-base.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/models/search-result-base.model.ts#L23)

___

### SearchResultWithRelations

Ƭ **SearchResultWithRelations**: [`SearchResult`](classes/SearchResult.md)

#### Defined in

[services/search-service/src/models/search-result.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/models/search-result.model.ts#L23)

___

### SearchWhereFilter

Ƭ **SearchWhereFilter**<`MT`\>: [`Condition`](modules.md#condition)<`MT`\> \| [`AndClause`](interfaces/AndClause.md)<`MT`\> \| [`OrClause`](interfaces/OrClause.md)<`MT`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `MT` | extends `object` = `AnyObject` |

#### Defined in

[services/search-service/src/types.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L73)

___

### SearchWhereFilterMap

Ƭ **SearchWhereFilterMap**: `Object`

#### Index signature

▪ [key: `string`]: [`SearchWhereFilter`](modules.md#searchwherefilter)

#### Defined in

[services/search-service/src/types.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L69)

___

### SearchableModelsList

Ƭ **SearchableModelsList**<`T`\>: ([`SearchableModel`](classes/SearchableModel.md)<`T`\> \| typeof `Model`)[]

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

#### Defined in

[services/search-service/src/types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L23)

___

### SearchableModelsService

Ƭ **SearchableModelsService**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `add` | (`model`: typeof `Model`) => `Promise`<`void`\> |
| `delete` | (`model`: typeof `Model`) => `Promise`<`void`\> |
| `get` | () => `Promise`<typeof `Model`[]\> |

#### Defined in

[services/search-service/src/types.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L12)

___

### ShortHandEqualType

Ƭ **ShortHandEqualType**: `string` \| `number` \| `boolean` \| `Date`

#### Defined in

[services/search-service/src/types.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L102)

## Variables

### DATASOURCE\_NAME

• `Const` **DATASOURCE\_NAME**: ``"SearchServiceDb"``

#### Defined in

[services/search-service/src/keys.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L33)

___

### IGNORED\_COLUMN

• `Const` **IGNORED\_COLUMN**: ``"-"``

#### Defined in

[services/search-service/src/keys.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L32)

## Functions

### authenticateOnCondition

▸ **authenticateOnCondition**(`condition?`): `MethodDecorator`

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `condition` | `boolean` | `false` |

#### Returns

`MethodDecorator`

#### Defined in

[services/search-service/src/decorators/authentication-conditional.decorator.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/decorators/authentication-conditional.decorator.ts#L6)

___

### defineSearchController

▸ **defineSearchController**<`T`\>(`modelCtor`, `options?`): `SearchControllerCtor`<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model`<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `modelCtor` | typeof `Model` |
| `options?` | [`SearchControllerConfig`](modules.md#searchcontrollerconfig) |

#### Returns

`SearchControllerCtor`<`T`\>

#### Defined in

[services/search-service/src/controllers/search.controller.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/controllers/search.controller.ts#L33)

___

### getOnCondition

▸ **getOnCondition**(`condition`, `path`, `spec?`): `MethodDecorator`

#### Parameters

| Name | Type |
| :------ | :------ |
| `condition` | `boolean` |
| `path` | `string` |
| `spec?` | `OperationObject` |

#### Returns

`MethodDecorator`

#### Defined in

[services/search-service/src/decorators/get-conditional.decorator.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/decorators/get-conditional.decorator.ts#L7)

___

### isSearchableModel

▸ **isSearchableModel**<`T`\>(`arg`): arg is SearchableModel<T, typeof Model\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model`<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `arg` | typeof `Model` \| [`SearchableModel`](classes/SearchableModel.md)<`T`, typeof `Model`\> |

#### Returns

arg is SearchableModel<T, typeof Model\>

#### Defined in

[services/search-service/src/types.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L59)
