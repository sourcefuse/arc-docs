[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / DataSourcesService

# Class: DataSourcesService

## Table of contents

### Constructors

- [constructor](DataSourcesService.md#constructor)

### Properties

- [dataStoreAdapter](DataSourcesService.md#datastoreadapter)
- [dataTypeMap](DataSourcesService.md#datatypemap)

### Methods

- [getTotalDataSourceCount](DataSourcesService.md#gettotaldatasourcecount)
- [listDataSourceColumns](DataSourcesService.md#listdatasourcecolumns)
- [listdataSources](DataSourcesService.md#listdatasources)

## Constructors

### constructor

• **new DataSourcesService**(`dataStoreAdapter`, `dataTypeMap`)

The constructor function initializes a DataStoreAdapter based on the database type and options
provided in the environment variables.

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataStoreAdapter` | [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md) |
| `dataTypeMap` | `undefined` \| `Record`<`string`, `DataTypeMapping`\> |

#### Defined in

[services/reporting-service/src/services/data-sources.service.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sources.service.ts#L20)

## Properties

### dataStoreAdapter

• `Private` **dataStoreAdapter**: [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md)

#### Defined in

[services/reporting-service/src/services/data-sources.service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sources.service.ts#L22)

___

### dataTypeMap

• `Private` **dataTypeMap**: `undefined` \| `Record`<`string`, `DataTypeMapping`\>

#### Defined in

[services/reporting-service/src/services/data-sources.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sources.service.ts#L24)

## Methods

### getTotalDataSourceCount

▸ **getTotalDataSourceCount**(): `Promise`<`number`\>

The function `getTotalDataSourceCount` returns the total number of data sources by listing the
tables and returning the length of the resulting array.

#### Returns

`Promise`<`number`\>

the total count of data sources as a number.

#### Defined in

[services/reporting-service/src/services/data-sources.service.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sources.service.ts#L73)

___

### listDataSourceColumns

▸ **listDataSourceColumns**(`dataSource`): `Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

The function "listDataSourceColumns" asynchronously retrieves a list of columns for a given data
source.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSource` | `string` | A string representing the name or identifier of the data source. |

#### Returns

`Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

a Promise that resolves to an array of ColumnForDataSourceModel objects.

#### Defined in

[services/reporting-service/src/services/data-sources.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sources.service.ts#L42)

___

### listdataSources

▸ **listdataSources**(): `Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

The function "listdataSources" asynchronously retrieves a list of data sources from the data store
adapter and returns it as an array of DataSourceList objects.

#### Returns

`Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

a Promise that resolves to an array of DataSourceList objects.

#### Defined in

[services/reporting-service/src/services/data-sources.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sources.service.ts#L32)
