[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / PsqlSequelizeStrategy

# Class: PsqlSequelizeStrategy

## Hierarchy

- [`BaseSequelize`](BaseSequelize.md)

  ↳ **`PsqlSequelizeStrategy`**

## Table of contents

### Constructors

- [constructor](PsqlSequelizeStrategy.md#constructor)

### Properties

- [logger](PsqlSequelizeStrategy.md#logger)
- [queryUtil](PsqlSequelizeStrategy.md#queryutil)
- [sequelize](PsqlSequelizeStrategy.md#sequelize)
- [sequilizeQuertUtility](PsqlSequelizeStrategy.md#sequilizequertutility)

### Methods

- [applyRowLevelFilter](PsqlSequelizeStrategy.md#applyrowlevelfilter)
- [checkIfColumnsExists](PsqlSequelizeStrategy.md#checkifcolumnsexists)
- [checkIfDataSourceExists](PsqlSequelizeStrategy.md#checkifdatasourceexists)
- [deleteRecord](PsqlSequelizeStrategy.md#deleterecord)
- [generateColumnForTable](PsqlSequelizeStrategy.md#generatecolumnfortable)
- [getSchemaAndTable](PsqlSequelizeStrategy.md#getschemaandtable)
- [listDataSourceColumns](PsqlSequelizeStrategy.md#listdatasourcecolumns)
- [listdataSources](PsqlSequelizeStrategy.md#listdatasources)
- [manageRecord](PsqlSequelizeStrategy.md#managerecord)
- [query](PsqlSequelizeStrategy.md#query)
- [sanitizeValue](PsqlSequelizeStrategy.md#sanitizevalue)
- [translateQuery](PsqlSequelizeStrategy.md#translatequery)
- [upsertRecord](PsqlSequelizeStrategy.md#upsertrecord)

## Constructors

### constructor

• **new PsqlSequelizeStrategy**(`sequelizeObj`, `logger`, `queryUtility`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `sequelizeObj` | `Sequelize` |
| `logger` | `ILogger` |
| `queryUtility` | [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md) |

#### Overrides

[BaseSequelize](BaseSequelize.md).[constructor](BaseSequelize.md#constructor)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L21)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[BaseSequelize](BaseSequelize.md).[logger](BaseSequelize.md#logger)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L16)

___

### queryUtil

• **queryUtil**: [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L20)

___

### sequelize

• **sequelize**: `Sequelize`

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L19)

___

### sequilizeQuertUtility

• **sequilizeQuertUtility**: [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)

#### Inherited from

[BaseSequelize](BaseSequelize.md).[sequilizeQuertUtility](BaseSequelize.md#sequilizequertutility)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L17)

## Methods

### applyRowLevelFilter

▸ **applyRowLevelFilter**(`initialQuery`): `Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

The function applies a row-level filter to a query and returns the modified query.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `initialQuery` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) | The initialQuery parameter is an instance of the StructuredQueryInterface. It represents the initial query that you want to apply a row-level filter to. |

#### Returns

`Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

The initialQuery is being returned.

#### Overrides

[BaseSequelize](BaseSequelize.md).[applyRowLevelFilter](BaseSequelize.md#applyrowlevelfilter)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:210](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L210)

___

### checkIfColumnsExists

▸ **checkIfColumnsExists**(`columnEntityPairs`): `Promise`<`boolean`\>

The function `checkIfColumnsExists` checks if a list of column-entity pairs exists in the
database.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `columnEntityPairs` | [`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[] | An array of objects, where each object represents a pair of column and entity. Each object should have the following properties: |

#### Returns

`Promise`<`boolean`\>

The function `checkIfColumnsExists` returns a Promise that resolves to a boolean value.

#### Overrides

[BaseSequelize](BaseSequelize.md).[checkIfColumnsExists](BaseSequelize.md#checkifcolumnsexists)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:172](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L172)

___

### checkIfDataSourceExists

▸ **checkIfDataSourceExists**(`dataSourceNames`): `Promise`<`boolean`\>

The function `checkIfDataSourceExists` checks if a list of data source names exist in the
database.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSourceNames` | `string`[] | An array of strings representing the names of the data sources to check. |

#### Returns

`Promise`<`boolean`\>

The function `checkIfDataSourceExists` returns a Promise that resolves to a boolean
value.

#### Overrides

[BaseSequelize](BaseSequelize.md).[checkIfDataSourceExists](BaseSequelize.md#checkifdatasourceexists)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L138)

___

### deleteRecord

▸ `Private` **deleteRecord**(`dataSource`, `data`, `identifier`): `Promise`<`AnyObject`\>

The `deleteRecord` function deletes a record from a specified data source using the provided
identifier.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSource` | `string` | The `dataSource` parameter is a string that represents the name of the table or data source from which the record needs to be deleted. |
| `data` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | The `data` parameter is an object that represents the change data capture (CDC) for a record. It contains the current value of the record being deleted. |
| `identifier` | `string` | The `identifier` parameter is a string that represents the column name in the database table that uniquely identifies a record. It is used in the `WHERE` clause of the delete query to specify which record(s) should be deleted. |

#### Returns

`Promise`<`AnyObject`\>

an object with a property "affectedRecords" which contains the result of the delete
operation.

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:315](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L315)

___

### generateColumnForTable

▸ **generateColumnForTable**(`result`): `Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

The function generates columns for a table by converting the data types and mapping the column
properties.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `result` | `AnyObject` | An array of objects representing the result of a database query. Each object in the array should have the following properties: |

#### Returns

`Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

The function `generateColumnForTable` returns a promise that resolves to an array of
`ColumnForDataSourceModel` objects.

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:366](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L366)

___

### getSchemaAndTable

▸ **getSchemaAndTable**(`dataSourceName`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSourceName` | `string` |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `schema` | `string` |
| `tableName` | `string` |

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:353](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L353)

___

### listDataSourceColumns

▸ **listDataSourceColumns**(`dataSource`): `Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

The function `listDataSourceColumns` retrieves column information for a given data source using a
SQL query.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSource` | `string` | The `dataSource` parameter is a string that represents the name of the data source or table from which you want to fetch the columns. |

#### Returns

`Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

a Promise that resolves to an array of objects of type `ColumnForDataSourceModel`.

#### Overrides

[BaseSequelize](BaseSequelize.md).[listDataSourceColumns](BaseSequelize.md#listdatasourcecolumns)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L106)

___

### listdataSources

▸ **listdataSources**(): `Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

This function retrieves a list of data sources from a database and formats them into an array of
DataSourceList objects.

#### Returns

`Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

The `listdataSources` function returns an array of objects with properties
`dataSourceName` and `displayName`. Each object in the array represents a data source retrieved
from the database query. The `dataSourceName` property is a combination of the `table_schema` and
`table_name` values from the database query result, while the `displayName` property is also a
combination of the `table_schema`

#### Overrides

[BaseSequelize](BaseSequelize.md).[listdataSources](BaseSequelize.md#listdatasources)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L43)

___

### manageRecord

▸ **manageRecord**(`dataSource`, `data`, `identifier?`): `Promise`<`AnyObject`\>

The function `manageRecord` handles different operations (INSERT, UPDATE, DELETE) on a given data
source using a specified identifier.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `dataSource` | `string` | `undefined` | A string representing the data source where the record will be managed. This could be a database table, a file, or any other source of data. |
| `data` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | `undefined` | The `data` parameter is an object that represents a change in the data. It typically contains the following properties: |
| `identifier?` | `string` | `'id'` | The `identifier` parameter is a string that represents the unique identifier for the record in the data source. It is used to identify the record that needs to be updated or deleted. |

#### Returns

`Promise`<`AnyObject`\>

The `manageRecord` function returns a Promise that resolves to an `AnyObject` object.

#### Overrides

[BaseSequelize](BaseSequelize.md).[manageRecord](BaseSequelize.md#managerecord)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:227](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L227)

___

### query

▸ **query**(`queryObject`): `Promise`<`AnyObject`[]\>

This TypeScript function asynchronously executes a query based on a provided query object or SQL
string using Sequelize and returns the result as an array of objects.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `queryObject` | `string` \| [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) | The `queryObject` parameter in the `query` function can be either a `StructuredQueryInterface` object or a string representing a query. If the `queryObject` is not a string, it is first translated into a SQL query using the `translateQuery` method before executing the query using |

#### Returns

`Promise`<`AnyObject`[]\>

The `query` function returns a Promise that resolves to an array of objects
(`AnyObject[]`) representing the result of the executed query.

#### Overrides

[BaseSequelize](BaseSequelize.md).[query](BaseSequelize.md#query)

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L75)

___

### sanitizeValue

▸ **sanitizeValue**(`value`): [`JSONValueType`](../modules.md#jsonvaluetype)

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |

#### Returns

[`JSONValueType`](../modules.md#jsonvaluetype)

#### Inherited from

[BaseSequelize](BaseSequelize.md).[sanitizeValue](BaseSequelize.md#sanitizevalue)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L23)

___

### translateQuery

▸ **translateQuery**(`queryObject`): `Promise`<{ `bind`: `AnyObject` ; `query`: `string`  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `queryObject` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) |

#### Returns

`Promise`<{ `bind`: `AnyObject` ; `query`: `string`  }\>

#### Inherited from

[BaseSequelize](BaseSequelize.md).[translateQuery](BaseSequelize.md#translatequery)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L55)

___

### upsertRecord

▸ `Private` **upsertRecord**(`dataSource`, `data`, `identifier?`): `Promise`<`AnyObject`\>

The `upsertRecord` function inserts or updates a record in a specified data source using the
provided data, with support for sanitization and conflict resolution.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `dataSource` | `string` | `undefined` | The `dataSource` parameter is a string that represents the name of the table or data source where the record will be inserted or updated. |
| `data` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | `undefined` | The `data` parameter is an object that represents the data to be upserted into the database. It should have a property called `currentValue` which contains the actual data to be inserted or updated. |
| `identifier?` | `string` | `'id'` | The `identifier` parameter is a string that specifies the column name used as the identifier for upserting records. In the code, it is set to `'id'` by default, but you can provide a different column name if needed. |

#### Returns

`Promise`<`AnyObject`\>

an object with a property "affectedRecords" which contains the result of the upsert
operation.

#### Defined in

[services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts:259](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/strategies/sequelize/psql-sequelize-strategy.ts#L259)
