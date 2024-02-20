[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / BaseSequelize

# Class: BaseSequelize

## Hierarchy

- **`BaseSequelize`**

  ↳ [`MysqlSequelizeStrategy`](MysqlSequelizeStrategy.md)

  ↳ [`PsqlSequelizeStrategy`](PsqlSequelizeStrategy.md)

## Implements

- `SequelizeStrategy`

## Table of contents

### Constructors

- [constructor](BaseSequelize.md#constructor)

### Properties

- [logger](BaseSequelize.md#logger)
- [sequilizeQuertUtility](BaseSequelize.md#sequilizequertutility)

### Methods

- [applyRowLevelFilter](BaseSequelize.md#applyrowlevelfilter)
- [checkIfColumnsExists](BaseSequelize.md#checkifcolumnsexists)
- [checkIfDataSourceExists](BaseSequelize.md#checkifdatasourceexists)
- [listDataSourceColumns](BaseSequelize.md#listdatasourcecolumns)
- [listdataSources](BaseSequelize.md#listdatasources)
- [manageRecord](BaseSequelize.md#managerecord)
- [query](BaseSequelize.md#query)
- [sanitizeValue](BaseSequelize.md#sanitizevalue)
- [translateQuery](BaseSequelize.md#translatequery)

## Constructors

### constructor

• **new BaseSequelize**(`logger`, `sequilizeQuertUtility`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `sequilizeQuertUtility` | [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md) |

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L18)

## Properties

### logger

• **logger**: `ILogger`

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L16)

___

### sequilizeQuertUtility

• **sequilizeQuertUtility**: [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L17)

## Methods

### applyRowLevelFilter

▸ `Abstract` **applyRowLevelFilter**(`initialQuery`): `Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `initialQuery` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) |

#### Returns

`Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

#### Implementation of

SequelizeStrategy.applyRowLevelFilter

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L49)

___

### checkIfColumnsExists

▸ `Abstract` **checkIfColumnsExists**(`columnEntityPairs`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `columnEntityPairs` | [`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[] |

#### Returns

`Promise`<`boolean`\>

#### Implementation of

SequelizeStrategy.checkIfColumnsExists

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L45)

___

### checkIfDataSourceExists

▸ `Abstract` **checkIfDataSourceExists**(`dataSourceNames`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSourceNames` | `string`[] |

#### Returns

`Promise`<`boolean`\>

#### Implementation of

SequelizeStrategy.checkIfDataSourceExists

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L43)

___

### listDataSourceColumns

▸ `Abstract` **listDataSourceColumns**(`dataSource`): `Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `string` |

#### Returns

`Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

#### Implementation of

SequelizeStrategy.listDataSourceColumns

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L39)

___

### listdataSources

▸ `Abstract` **listdataSources**(): `Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

#### Returns

`Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

#### Implementation of

SequelizeStrategy.listdataSources

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L35)

___

### manageRecord

▸ `Abstract` **manageRecord**(`dataSource`, `data`, `identifier?`): `Promise`<`AnyObject`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `string` |
| `data` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) |
| `identifier?` | `string` |

#### Returns

`Promise`<`AnyObject`\>

#### Implementation of

SequelizeStrategy.manageRecord

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L29)

___

### query

▸ `Abstract` **query**(`queryObject`): `Promise`<`AnyObject`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `queryObject` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) |

#### Returns

`Promise`<`AnyObject`[]\>

#### Implementation of

SequelizeStrategy.query

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L37)

___

### sanitizeValue

▸ **sanitizeValue**(`value`): [`JSONValueType`](../modules.md#jsonvaluetype)

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |

#### Returns

[`JSONValueType`](../modules.md#jsonvaluetype)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L23)

___

### translateQuery

▸ **translateQuery**(`queryObject`): `Promise`<{ `bind`: `AnyObject` ; `query`: `string`  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `queryObject` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) |

#### Returns

`Promise`<{ `bind`: `AnyObject` ; `query`: `string`  }\>

#### Implementation of

SequelizeStrategy.translateQuery

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L53)
