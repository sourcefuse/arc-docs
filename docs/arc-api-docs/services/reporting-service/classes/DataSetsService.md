[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / DataSetsService

# Class: DataSetsService

## Table of contents

### Constructors

- [constructor](DataSetsService.md#constructor)

### Properties

- [config](DataSetsService.md#config)
- [dataSetsRepo](DataSetsService.md#datasetsrepo)
- [dataStoreAdapter](DataSetsService.md#datastoreadapter)
- [logger](DataSetsService.md#logger)
- [queryUtility](DataSetsService.md#queryutility)
- [sqlValidator](DataSetsService.md#sqlvalidator)

### Methods

- [convertOrderToOrderBy](DataSetsService.md#convertordertoorderby)
- [convertToCountQuery](DataSetsService.md#converttocountquery)
- [createDataSet](DataSetsService.md#createdataset)
- [deleteDataSetById](DataSetsService.md#deletedatasetbyid)
- [ensureValidHashFields](DataSetsService.md#ensurevalidhashfields)
- [fetchDataById](DataSetsService.md#fetchdatabyid)
- [fetchDataByIdCount](DataSetsService.md#fetchdatabyidcount)
- [generateHash](DataSetsService.md#generatehash)
- [getAllDataSets](DataSetsService.md#getalldatasets)
- [getColumnEntityPairs](DataSetsService.md#getcolumnentitypairs)
- [getCount](DataSetsService.md#getcount)
- [getDataSetById](DataSetsService.md#getdatasetbyid)
- [isDuplicate](DataSetsService.md#isduplicate)
- [mergeAndValidateDataSetQuery](DataSetsService.md#mergeandvalidatedatasetquery)
- [updateDataSetById](DataSetsService.md#updatedatasetbyid)
- [validateDataSet](DataSetsService.md#validatedataset)
- [validateDataSetQuery](DataSetsService.md#validatedatasetquery)
- [validateDataSourcesAndColumns](DataSetsService.md#validatedatasourcesandcolumns)

## Constructors

### constructor

• **new DataSetsService**(`logger`, `dataSetsRepo`, `dataStoreAdapter`, `queryUtility`, `sqlValidator`, `config?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `dataSetsRepo` | `DataSetsRepository` |
| `dataStoreAdapter` | [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md) |
| `queryUtility` | [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md) |
| `sqlValidator` | [`SqlValidatorInterface`](../interfaces/SqlValidatorInterface.md) |
| `config` | [`DataSetServiceConfig`](../interfaces/DataSetServiceConfig.md) |

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L28)

## Properties

### config

• **config**: [`DataSetServiceConfig`](../interfaces/DataSetServiceConfig.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L26)

___

### dataSetsRepo

• `Private` `Readonly` **dataSetsRepo**: `DataSetsRepository`

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L31)

___

### dataStoreAdapter

• `Private` `Readonly` **dataStoreAdapter**: [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L33)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L29)

___

### queryUtility

• `Private` `Readonly` **queryUtility**: [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L35)

___

### sqlValidator

• `Private` `Readonly` **sqlValidator**: [`SqlValidatorInterface`](../interfaces/SqlValidatorInterface.md)

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L37)

## Methods

### convertOrderToOrderBy

▸ `Private` **convertOrderToOrderBy**(`orderArray?`): `undefined` \| { `field`: [`FieldExpression`](../modules.md#fieldexpression) ; `order`: [`OrderDirection`](../modules.md#orderdirection)  }[]

The function `convertOrderToOrderBy` converts an array of strings representing order criteria into
an array of objects with field and order properties.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `orderArray?` | `string`[] | The `orderArray` parameter is an optional array of strings that represents the order in which to sort query results. Each string in the array consists of a field name followed by a space and then the sorting order ('ASC' for ascending or 'DESC' for descending). |

#### Returns

`undefined` \| { `field`: [`FieldExpression`](../modules.md#fieldexpression) ; `order`: [`OrderDirection`](../modules.md#orderdirection)  }[]

An array of objects with each object containing a "field" key and an "order" key with
values of either 'ASC' or 'DESC'.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:496](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L496)

___

### convertToCountQuery

▸ `Private` **convertToCountQuery**(`sqlQuery`): `string`

The function `convertToCountQuery` converts a SQL query to a count query by adding `SELECT
COUNT(*) AS count` before the FROM clause.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `sqlQuery` | `string` | The `sqlQuery` parameter is a string representing a SQL query that you want to convert into a count query. The function `convertToCountQuery` takes this SQL query as input and converts it into a count query by prepending `SELECT COUNT(*) AS count` to the original query after the |

#### Returns

`string`

The function `convertToCountQuery` takes a SQL query as input, extracts everything after
the `FROM` clause, and prepends it with `SELECT COUNT(*) AS count`. The modified query with the
count is then returned.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:428](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L428)

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

[services/reporting-service/src/services/data-sets.service.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L51)

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

[services/reporting-service/src/services/data-sets.service.ts:205](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L205)

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

[services/reporting-service/src/services/data-sets.service.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L170)

___

### fetchDataById

▸ **fetchDataById**(`id`, `filter`): `Promise`<`AnyObject`\>

This TypeScript function fetches data by a specific ID using a custom filter and returns the
result as a Promise.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter is a string that represents the unique identifier of the data you want to fetch. |
| `filter` | [`CustomFilter`](../interfaces/CustomFilter.md)<`AnyObject`\> | The `filter` parameter in the `fetchDataById` function is of type `CustomFilter<AnyObject>`. This means that it is a custom filter object that can be applied to filter the data based on certain criteria. The `AnyObject` type indicates that the filter can be applied to any |

#### Returns

`Promise`<`AnyObject`\>

The `fetchDataById` function returns a Promise that resolves to an object of type
`AnyObject`.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:352](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L352)

___

### fetchDataByIdCount

▸ **fetchDataByIdCount**(`id`, `filter`): `Promise`<`Count`\>

The function `fetchDataByIdCount` fetches the count of records based on a given ID and custom
filter.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter in the `fetchDataByIdCount` function is a string that represents the identifier used to fetch data from a data set. It is used to uniquely identify the data set for which the count of records needs to be retrieved. |
| `filter` | [`CustomFilter`](../interfaces/CustomFilter.md)<`AnyObject`\> | The `filter` parameter in the `fetchDataByIdCount` function is of type `CustomFilter<AnyObject>`. This means that it is a custom filter object that can be applied to filter the data based on certain criteria. The `AnyObject` type indicates that the filter can be applied to |

#### Returns

`Promise`<`Count`\>

The function `fetchDataByIdCount` returns a Promise that resolves to an object containing
the count of records based on the provided id and filter. If the query is successful and there are
results, it returns an object with the count value. If there are no results, it returns an object
with a count of 0.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:377](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L377)

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

[services/reporting-service/src/services/data-sets.service.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L117)

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

[services/reporting-service/src/services/data-sets.service.ts:196](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L196)

___

### getColumnEntityPairs

▸ `Private` **getColumnEntityPairs**(`select`): [`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[]

The function `getColumnEntityPairs` processes fields and functions from a select query to extract
column and entity pairs.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `select` | [`SelectClause`](../interfaces/SelectClause.md) | The `select` parameter in the `getColumnEntityPairs` function is of type `StructuredQueryInterface['select']`. This means it is expected to be a part of a structured query interface and specifically the `select` property of that interface. The function processes the fields and functions within the `select @returns The function `getColumnEntityPairs` returns an array of objects, where each object represents a pair of a data source name and a column name extracted from the provided `select` object. |

#### Returns

[`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[]

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:302](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L302)

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

[services/reporting-service/src/services/data-sets.service.ts:246](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L246)

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

[services/reporting-service/src/services/data-sets.service.ts:183](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L183)

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

[services/reporting-service/src/services/data-sets.service.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L145)

___

### mergeAndValidateDataSetQuery

▸ `Private` **mergeAndValidateDataSetQuery**(`id`, `filter`): `Promise`<`string` \| [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

This function merges and validates a data set query based on the provided filter and dataset
information.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `id` | `string` | The `id` parameter in the `mergeAndValidateDataSetQuery` function is a string that represents the identifier of a dataset. |
| `filter` | [`CustomFilter`](../interfaces/CustomFilter.md)<`AnyObject`\> | The `filter` parameter in the `mergeAndValidateDataSetQuery` function is of type `CustomFilter<AnyObject>`. This means it is a custom filter object that can filter data based on certain criteria. The `AnyObject` type indicates that the filter can be applied to any type of object |

#### Returns

`Promise`<`string` \| [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

The `mergeAndValidateDataSetQuery` function returns either a `StructuredQueryInterface`
object or a string.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:452](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L452)

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

[services/reporting-service/src/services/data-sets.service.ts:216](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L216)

___

### validateDataSet

▸ `Private` **validateDataSet**(`dataSet`): `Promise`<`void`\>

The function `validateDataSet` in TypeScript validates a DataSet object by checking for query or
SQL, validating query syntax and data sources, and validating SQL using a SQL validator if
available.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSet` | [`DataSet`](DataSet.md) | The `dataSet` parameter is an object that contains information about a data set, including `dataSetQuery` and `dataSetQuerySQL` properties. The `validateDataSet` function is responsible for validating these properties. If `dataSetQuery` is present, it will be validated using the |

#### Returns

`Promise`<`void`\>

If neither `dataSetQuery` nor `dataSetQuerySQL` is found in the `dataSet`, the function
returns without performing any validation.

#### Defined in

[services/reporting-service/src/services/data-sets.service.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L80)

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

[services/reporting-service/src/services/data-sets.service.ts:255](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L255)

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

[services/reporting-service/src/services/data-sets.service.ts:268](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/services/data-sets.service.ts#L268)
