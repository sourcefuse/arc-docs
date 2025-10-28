[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchServiceBindings

# Namespace: SearchServiceBindings

## Table of contents

### Variables

- [Config](SearchServiceBindings.md#config)
- [DATASOURCE\_NAME](SearchServiceBindings.md#datasource_name)
- [FetchedColumns](SearchServiceBindings.md#fetchedcolumns)
- [MySQLQueryBuilder](SearchServiceBindings.md#mysqlquerybuilder)
- [PostgreSQLQueryBuilder](SearchServiceBindings.md#postgresqlquerybuilder)
- [SearchFilterFunction](SearchServiceBindings.md#searchfilterfunction)
- [SearchFunction](SearchServiceBindings.md#searchfunction)
- [modelProvider](SearchServiceBindings.md#modelprovider)

## Variables

### Config

• `Const` **Config**: `BindingKey`<[`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<[`SearchResult`](../classes/SearchResult.md)\>\>

#### Defined in

[services/search-service/src/keys.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L24)

___

### DATASOURCE\_NAME

• `Const` **DATASOURCE\_NAME**: ``"SearchServiceDb"``

#### Defined in

[services/search-service/src/keys.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L15)

___

### FetchedColumns

• `Const` **FetchedColumns**: `BindingKey`<`string`[]\>

#### Defined in

[services/search-service/src/keys.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L26)

___

### MySQLQueryBuilder

• `Const` **MySQLQueryBuilder**: `BindingKey`<typeof [`SearchQueryBuilder`](../classes/SearchQueryBuilder.md)\>

#### Defined in

[services/search-service/src/keys.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L18)

___

### PostgreSQLQueryBuilder

• `Const` **PostgreSQLQueryBuilder**: `BindingKey`<typeof [`SearchQueryBuilder`](../classes/SearchQueryBuilder.md)\>

#### Defined in

[services/search-service/src/keys.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L21)

___

### SearchFilterFunction

• `Const` **SearchFilterFunction**: `BindingKey`<[`SearchFilter`](../modules.md#searchfilter)\>

#### Defined in

[services/search-service/src/keys.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L28)

___

### SearchFunction

• `Const` **SearchFunction**: `BindingKey`<[`SearchFunctionType`](../modules.md#searchfunctiontype)<`unknown`\>\>

#### Defined in

[services/search-service/src/keys.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L16)

___

### modelProvider

• `Const` **modelProvider**: `BindingKey`<`ModelProviderFn`\>

#### Defined in

[services/search-service/src/keys.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/keys.ts#L12)
