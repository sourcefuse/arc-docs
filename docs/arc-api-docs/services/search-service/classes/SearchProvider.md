[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchProvider

# Class: SearchProvider<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

## Implements

- `Provider`<[`SearchFunctionType`](../modules.md#searchfunctiontype)<`T`\>\>

## Table of contents

### Constructors

- [constructor](SearchProvider.md#constructor)

### Properties

- [config](SearchProvider.md#config)
- [datasource](SearchProvider.md#datasource)
- [modelProvider](SearchProvider.md#modelprovider)
- [mySQLBuilder](SearchProvider.md#mysqlbuilder)
- [psqlBuilder](SearchProvider.md#psqlbuilder)

### Methods

- [value](SearchProvider.md#value)

## Constructors

### constructor

• **new SearchProvider**<`T`\>(`config`, `datasource`, `mySQLBuilder`, `psqlBuilder`, `modelProvider`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model`<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<`T`\> |
| `datasource` | `DataSource` |
| `mySQLBuilder` | typeof [`MySqlQueryBuilder`](MySqlQueryBuilder.md) |
| `psqlBuilder` | typeof [`PsqlQueryBuilder`](PsqlQueryBuilder.md) |
| `modelProvider` | `ModelProviderFn` |

#### Defined in

[services/search-service/src/services/search.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L18)

## Properties

### config

• `Private` `Readonly` **config**: [`SearchServiceConfig`](../interfaces/SearchServiceConfig.md)<`T`\>

#### Defined in

[services/search-service/src/services/search.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L20)

___

### datasource

• `Private` `Readonly` **datasource**: `DataSource`

#### Defined in

[services/search-service/src/services/search.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L22)

___

### modelProvider

• `Private` `Readonly` **modelProvider**: `ModelProviderFn`

#### Defined in

[services/search-service/src/services/search.provider.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L28)

___

### mySQLBuilder

• `Private` `Readonly` **mySQLBuilder**: typeof [`MySqlQueryBuilder`](MySqlQueryBuilder.md)

#### Defined in

[services/search-service/src/services/search.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L24)

___

### psqlBuilder

• `Private` `Readonly` **psqlBuilder**: typeof [`PsqlQueryBuilder`](PsqlQueryBuilder.md)

#### Defined in

[services/search-service/src/services/search.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L26)

## Methods

### value

▸ **value**(): [`SearchFunctionType`](../modules.md#searchfunctiontype)<`T`\>

#### Returns

[`SearchFunctionType`](../modules.md#searchfunctiontype)<`T`\>

#### Implementation of

Provider.value

#### Defined in

[services/search-service/src/services/search.provider.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/services/search.provider.ts#L31)
