[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / DataStoreAdapter

# Interface: DataStoreAdapter

## Table of contents

### Methods

- [applyRowLevelFilter](DataStoreAdapter.md#applyrowlevelfilter)
- [checkIfColumnsExists](DataStoreAdapter.md#checkifcolumnsexists)
- [checkIfDataSourceExists](DataStoreAdapter.md#checkifdatasourceexists)
- [listDataSourceColumns](DataStoreAdapter.md#listdatasourcecolumns)
- [listdataSources](DataStoreAdapter.md#listdatasources)
- [manageRecord](DataStoreAdapter.md#managerecord)
- [query](DataStoreAdapter.md#query)

## Methods

### applyRowLevelFilter

▸ **applyRowLevelFilter**(`initialQuery`): `Promise`<[`StructuredQueryInterface`](StructuredQueryInterface.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `initialQuery` | [`StructuredQueryInterface`](StructuredQueryInterface.md) |

#### Returns

`Promise`<[`StructuredQueryInterface`](StructuredQueryInterface.md)\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L22)

___

### checkIfColumnsExists

▸ **checkIfColumnsExists**(`columnEntityPairs`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `columnEntityPairs` | [`ColumnEntityPair`](ColumnEntityPair.md)[] |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L21)

___

### checkIfDataSourceExists

▸ **checkIfDataSourceExists**(`dataSourceNames`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSourceNames` | `string`[] |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L20)

___

### listDataSourceColumns

▸ **listDataSourceColumns**(`dataSource`): `Promise`<[`ColumnForDataSourceModel`](../classes/ColumnForDataSourceModel.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `string` |

#### Returns

`Promise`<[`ColumnForDataSourceModel`](../classes/ColumnForDataSourceModel.md)[]\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L17)

___

### listdataSources

▸ **listdataSources**(): `Promise`<[`DataSourceList`](DataSourceList.md)[]\>

#### Returns

`Promise`<[`DataSourceList`](DataSourceList.md)[]\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L10)

___

### manageRecord

▸ **manageRecord**(`dataSource`, `data`, `identifier`): `Promise`<`AnyObject`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `string` |
| `data` | [`IngestReportRecord`](IngestReportRecord.md) |
| `identifier` | `string` |

#### Returns

`Promise`<`AnyObject`\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L12)

___

### query

▸ **query**(`queryObject`): `Promise`<`AnyObject`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `queryObject` | [`StructuredQueryInterface`](StructuredQueryInterface.md) |

#### Returns

`Promise`<`AnyObject`[]\>

#### Defined in

[services/reporting-service/src/interfaces/data-store-adapter.interface.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-adapter.interface.ts#L11)
