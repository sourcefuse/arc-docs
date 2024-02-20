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

## Variables

### Config

• `Const` **Config**: `BindingKey`<[`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<[`SearchResult`](../classes/SearchResult.md)\>\>

#### Defined in

[services/search-service/src/keys.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L20)

___

### DATASOURCE\_NAME

• `Const` **DATASOURCE\_NAME**: ``"SearchServiceDb"``

#### Defined in

[services/search-service/src/keys.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L11)

___

### FetchedColumns

• `Const` **FetchedColumns**: `BindingKey`<`string`[]\>

#### Defined in

[services/search-service/src/keys.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L22)

___

### MySQLQueryBuilder

• `Const` **MySQLQueryBuilder**: `BindingKey`<typeof [`SearchQueryBuilder`](../classes/SearchQueryBuilder.md)\>

#### Defined in

[services/search-service/src/keys.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L14)

___

### PostgreSQLQueryBuilder

• `Const` **PostgreSQLQueryBuilder**: `BindingKey`<typeof [`SearchQueryBuilder`](../classes/SearchQueryBuilder.md)\>

#### Defined in

[services/search-service/src/keys.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L17)

___

### SearchFilterFunction

• `Const` **SearchFilterFunction**: `BindingKey`<[`SearchFilter`](../modules.md#searchfilter)\>

#### Defined in

[services/search-service/src/keys.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L24)

___

### SearchFunction

• `Const` **SearchFunction**: `BindingKey`<[`SearchFunctionType`](../modules.md#searchfunctiontype)<`unknown`\>\>

#### Defined in

[services/search-service/src/keys.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/keys.ts#L12)
