[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / DataSetsService

# Class: DataSetsService

## Table of contents

### Constructors

- [constructor](DataSetsService.md#constructor)

### Properties

- [config](DataSetsService.md#config)
- [dataSetsRepo](DataSetsService.md#datasetsrepo)
- [dataStoreAdapter](DataSetsService.md#datastoreadapter)
- [queryUtility](DataSetsService.md#queryutility)

### Methods

- [convertOrderToOrderBy](DataSetsService.md#convertordertoorderby)
- [createDataSet](DataSetsService.md#createdataset)
- [deleteDataSetById](DataSetsService.md#deletedatasetbyid)
- [ensureValidHashFields](DataSetsService.md#ensurevalidhashfields)
- [fetchDataById](DataSetsService.md#fetchdatabyid)
- [fetchDataByIdCount](DataSetsService.md#fetchdatabyidcount)
- [generateHash](DataSetsService.md#generatehash)
- [getAllDataSets](DataSetsService.md#getalldatasets)
- [getCount](DataSetsService.md#getcount)
- [getDataSetById](DataSetsService.md#getdatasetbyid)
- [getcolumnEntityPairs](DataSetsService.md#getcolumnentitypairs)
- [isDuplicate](DataSetsService.md#isduplicate)
- [mergeAndValidateDataSetQuery](DataSetsService.md#mergeandvalidatedatasetquery)
- [updateDataSetById](DataSetsService.md#updatedatasetbyid)
- [validateDataSet](DataSetsService.md#validatedataset)
- [validateDataSetQuery](DataSetsService.md#validatedatasetquery)
- [validateDataSourcesAndColumns](DataSetsService.md#validatedatasourcesandcolumns)

## Constructors

### constructor

• **new DataSetsService**(`dataSetsRepo`, `dataStoreAdapter`, `queryUtility`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSetsRepo` | `DataSetsRepository` |
| `dataStoreAdapter` | [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md) |
| `queryUtility` | [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md) |
| `config` | [`DataSetServiceConfig`](../interfaces/DataSetServiceConfig.md) |

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L26)

## Properties

### config

• **config**: [`DataSetServiceConfig`](../interfaces/DataSetServiceConfig.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L25)

___

### dataSetsRepo

• `Private` `Readonly` **dataSetsRepo**: `DataSetsRepository`

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L28)

___

### dataStoreAdapter

• `Private` **dataStoreAdapter**: [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L30)

___

### queryUtility

• `Private` **queryUtility**: [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L32)

## Methods

### convertOrderToOrderBy

▸ **convertOrderToOrderBy**(`orderArray`): `undefined` \| { `field`: `string` ; `order`: ``"asc"`` \| ``"desc"``  }[]

The function converts an array of order strings into an array of structured query order objects.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `orderArray` | `string`[] | An array of strings representing the order of fields in a query. Each string in the array follows the format "field order", where "field" is the name of the field and "order" is either "asc" for ascending order or "desc" for descending order. |

#### Returns

`undefined` \| { `field`: `string` ; `order`: ``"asc"`` \| ``"desc"``  }[]

an array of objects that represent the order by clauses for a structured query. Each
object has two properties: "field" which represents the field to order by, and "order" which
represents the order direction ('asc' for ascending or 'desc' for descending).

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:393](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L393)

___

### createDataSet

▸ **createDataSet**(`dataSet`): `Promise`<[`DataSet`](DataSet.md)\>

The function creates a data set by validating it, generating a hash, checking for duplicates, and
then creating it in the repository.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSet` | [`DataSet`](DataSet.md) | The `dataSet` parameter is an object that represents a dataset. It contains various properties and values that describe the dataset. |

#### Returns

`Promise`<[`DataSet`](DataSet.md)\>

a Promise that resolves to a DataSet object.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L46)

___

### deleteDataSetById

▸ **deleteDataSetById**(`id`): `Promise`<`void`\>

The function deletes a data set by its ID.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter is a string that represents the unique identifier of the dataset that needs to be deleted. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:175](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L175)

___

### ensureValidHashFields

▸ `Private` **ensureValidHashFields**(`fields`, `dataSet`): `void`

The function ensures that all fields in an array exist in a given data set, otherwise it throws a
BadRequest error.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `fields` | `string`[] | An array of strings representing the fields that need to be validated in the dataSet. |
| `dataSet` | [`DataSet`](DataSet.md) | The `dataSet` parameter is an object that represents a set of data. It could be any JavaScript object that contains key-value pairs. |

#### Returns

`void`

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L140)

___

### fetchDataById

▸ **fetchDataById**(`id`, `filter`): `Promise`<`AnyObject`\>

The function fetchDataById fetches data from a data source based on an ID and a where clause.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter is a string that represents the identifier of the data you want to fetch. It is used to specify which data you want to retrieve from the data source. |
| `filter` | [`CustomFilter`](../interfaces/CustomFilter.md)<`AnyObject`\> | - |

#### Returns

`Promise`<`AnyObject`\>

The function `fetchDataById` is returning a Promise that resolves to an `AnyObject`.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:297](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L297)

___

### fetchDataByIdCount

▸ **fetchDataByIdCount**(`id`, `filter`): `Promise`<`Count`\>

The function fetches the count of records based on the provided id and where clause.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter is a string that represents the identifier of the data you want to fetch. It is used to specify which data set you want to query. |
| `filter` | [`CustomFilter`](../interfaces/CustomFilter.md)<`AnyObject`\> | - |

#### Returns

`Promise`<`Count`\>

a Promise that resolves to a Count object.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:316](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L316)

___

### generateHash

▸ `Private` **generateHash**(`dataSet`, `fields`): `undefined` \| `string`

The function generates a hash value based on the specified fields of a given data set using the
SHA256 algorithm.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSet` | [`DataSet`](DataSet.md) | The `dataSet` parameter is an object of type `DataSet`. It contains the data that needs to be hashed. |
| `fields` | `string`[] | An array of strings representing the fields in the dataSet object that you want to include in the hash calculation. |

#### Returns

`undefined` \| `string`

a string value or undefined.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L87)

___

### getAllDataSets

▸ **getAllDataSets**(`filter?`): `Promise`<[`DataSet`](DataSet.md)[]\>

The function `getAllDataSets` returns a promise that resolves to an array of `DataSet` objects,
filtered by an optional `Filter` parameter.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `filter?` | `Filter`<[`DataSet`](DataSet.md)\> | The `filter` parameter is an optional parameter of type `Filter<DataSet>`. It is used to specify the criteria for filtering the data sets that will be returned. The `Filter` type is a generic type that allows you to define the properties and their types that can be used for filtering. |

#### Returns

`Promise`<[`DataSet`](DataSet.md)[]\>

a Promise that resolves to an array of DataSet objects.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:166](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L166)

___

### getCount

▸ **getCount**(`filter?`): `Promise`<`Count`\>

The function `getCount` returns the count of data sets based on an optional filter.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `filter?` | `Filter`<[`DataSet`](DataSet.md)\> | The `filter` parameter is an optional parameter of type `Filter<DataSet>`. It is used to specify conditions for filtering the data sets. The `Filter` type is a generic type that allows you to define the structure of the filter object. In this case, it is specifically defined for filtering |

#### Returns

`Promise`<`Count`\>

The `getCount` function returns a Promise that resolves to a `Count` object.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:216](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L216)

___

### getDataSetById

▸ **getDataSetById**(`id`): `Promise`<[`DataSet`](DataSet.md)\>

The function `getDataSetById` retrieves a dataset by its ID from a repository.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | A string representing the ID of the dataset that you want to retrieve. |

#### Returns

`Promise`<[`DataSet`](DataSet.md)\>

a Promise that resolves to a DataSet object.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:153](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L153)

___

### getcolumnEntityPairs

▸ `Private` **getcolumnEntityPairs**(`select`): [`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[]

The function `getcolumnEntityPairs` takes a `select` object and returns an array of
`ColumnEntityPair` objects by extracting the data source name and column from each field or
function in the `select` object.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `select` | `Object` | The `select` parameter is an object that represents the select clause of a structured query. It contains two properties: |
| `select.distinct?` | `boolean` | - |
| `select.fields` | (`string` \| { `alias`: `string` ; `field`: `string`  })[] | - |
| `select.functions?` | { `alias?`: `string` ; `field`: `string` ; `functionType`: ``"COUNT"`` \| ``"SUM"`` \| ``"AVG"`` \| ``"MIN"`` \| ``"MAX"``  }[] | - |

#### Returns

[`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[]

an array of objects, where each object represents a column-entity pair.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:271](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L271)

___

### isDuplicate

▸ `Private` **isDuplicate**(`hash`, `excludeId?`): `Promise`<`boolean`\>

The function checks if there is a duplicate data set with the given hash, excluding the data set
with the provided ID if specified.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `hash` | `string` | The `hash` parameter is a string that represents a unique identifier for a dataset. It is used to check if there is already an existing dataset with the same hash value. |
| `excludeId?` | `string` | The `excludeId` parameter is an optional parameter that allows you to exclude a specific ID from the duplicate check. If you provide a value for `excludeId`, the function will check for duplicates excluding the dataset with that ID. If `excludeId` is not provided, the function will check for |

#### Returns

`Promise`<`boolean`\>

a Promise that resolves to a boolean value.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L115)

___

### mergeAndValidateDataSetQuery

▸ `Private` **mergeAndValidateDataSetQuery**(`id`, `filter`): `Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

The function merges and validates a data set query, throwing errors if the data set is not found
or the query is invalid.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter is a string that represents the identifier of a data set. It is used to retrieve the data set object from the dataSetsRepo. |
| `filter` | [`CustomFilter`](../interfaces/CustomFilter.md)<`AnyObject`\> | - |

#### Returns

`Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

a Promise that resolves to a StructuredQueryInterface object.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:345](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L345)

___

### updateDataSetById

▸ **updateDataSetById**(`id`, `dataSet`): `Promise`<`void`\>

The function updates a dataset by validating it, generating a hash for the updated dataset,
checking for duplicates, and then updating the dataset in the repository.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | A string representing the ID of the dataset to be updated. |
| `dataSet` | [`DataSet`](DataSet.md) | The `dataSet` parameter is an object that represents the updated dataset. It contains the new values for the dataset fields that need to be updated. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:186](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L186)

___

### validateDataSet

▸ `Private` **validateDataSet**(`dataSet`): `Promise`<`void`\>

The function "validateDataSet" asynchronously validates a given data set by validating its query
and its data sources and columns.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSet` | [`DataSet`](DataSet.md) | The `dataSet` parameter is an object that represents a data set. It likely contains properties such as `dataSetQuery`, which represents the query used to retrieve the data, and `dataSourcesAndColumns`, which represents the data sources and columns used in the query. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L72)

___

### validateDataSetQuery

▸ `Private` **validateDataSetQuery**(`dataSetQuery`): `Promise`<`void`\>

The function validates a data set query object and throws an error if it is invalid.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSetQuery` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) | The `dataSetQuery` parameter is of type `StructuredQueryInterface`. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:225](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L225)

___

### validateDataSourcesAndColumns

▸ `Private` **validateDataSourcesAndColumns**(`dataSetQuery`): `Promise`<`void`\>

The function validates the data sources and columns in a given data set query.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSetQuery` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) | The `dataSetQuery` parameter is of type `StructuredQueryInterface`. It represents a structured query object that contains information about the data sources and columns to be validated. |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:239](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/data-sets.service.ts#L239)
