[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / MysqlSequelizeStrategy

# Class: MysqlSequelizeStrategy

## Hierarchy

- [`BaseSequelize`](BaseSequelize.md)

  ↳ **`MysqlSequelizeStrategy`**

## Table of contents

### Constructors

- [constructor](MysqlSequelizeStrategy.md#constructor)

### Properties

- [logger](MysqlSequelizeStrategy.md#logger)
- [sequelize](MysqlSequelizeStrategy.md#sequelize)
- [sequilizeQuertUtility](MysqlSequelizeStrategy.md#sequilizequertutility)

### Methods

- [applyRowLevelFilter](MysqlSequelizeStrategy.md#applyrowlevelfilter)
- [checkIfColumnsExists](MysqlSequelizeStrategy.md#checkifcolumnsexists)
- [checkIfDataSourceExists](MysqlSequelizeStrategy.md#checkifdatasourceexists)
- [listDataSourceColumns](MysqlSequelizeStrategy.md#listdatasourcecolumns)
- [listdataSources](MysqlSequelizeStrategy.md#listdatasources)
- [manageRecord](MysqlSequelizeStrategy.md#managerecord)
- [query](MysqlSequelizeStrategy.md#query)
- [sanitizeValue](MysqlSequelizeStrategy.md#sanitizevalue)
- [translateQuery](MysqlSequelizeStrategy.md#translatequery)

## Constructors

### constructor

• **new MysqlSequelizeStrategy**(`sequelizeObj`, `logger`, `queryUtility`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `sequelizeObj` | `Sequelize` |
| `logger` | `ILogger` |
| `queryUtility` | [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md) |

#### Overrides

[BaseSequelize](BaseSequelize.md).[constructor](BaseSequelize.md#constructor)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L16)

## Properties

### logger

• **logger**: `ILogger`

#### Inherited from

[BaseSequelize](BaseSequelize.md).[logger](BaseSequelize.md#logger)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L16)

___

### sequelize

• **sequelize**: `Sequelize`

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L15)

___

### sequilizeQuertUtility

• **sequilizeQuertUtility**: [`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)

#### Inherited from

[BaseSequelize](BaseSequelize.md).[sequilizeQuertUtility](BaseSequelize.md#sequilizequertutility)

#### Defined in

[services/reporting-service/src/strategies/sequelize/base-sequelize.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/base-sequelize.ts#L17)

## Methods

### applyRowLevelFilter

▸ **applyRowLevelFilter**(`initialQuery`): `Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `initialQuery` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) |

#### Returns

`Promise`<[`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md)\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[applyRowLevelFilter](BaseSequelize.md#applyrowlevelfilter)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L44)

___

### checkIfColumnsExists

▸ **checkIfColumnsExists**(`columnEntityPairs`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `columnEntityPairs` | [`ColumnEntityPair`](../interfaces/ColumnEntityPair.md)[] |

#### Returns

`Promise`<`boolean`\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[checkIfColumnsExists](BaseSequelize.md#checkifcolumnsexists)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L39)

___

### checkIfDataSourceExists

▸ **checkIfDataSourceExists**(`dataSourceNames`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSourceNames` | `string`[] |

#### Returns

`Promise`<`boolean`\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[checkIfDataSourceExists](BaseSequelize.md#checkifdatasourceexists)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L36)

___

### listDataSourceColumns

▸ **listDataSourceColumns**(`dataSource`): `Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `string` |

#### Returns

`Promise`<[`ColumnForDataSourceModel`](ColumnForDataSourceModel.md)[]\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[listDataSourceColumns](BaseSequelize.md#listdatasourcecolumns)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L30)

___

### listdataSources

▸ **listdataSources**(): `Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

#### Returns

`Promise`<[`DataSourceList`](../interfaces/DataSourceList.md)[]\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[listdataSources](BaseSequelize.md#listdatasources)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L24)

___

### manageRecord

▸ **manageRecord**(`dataSource`, `data`, `identifier?`): `Promise`<`AnyObject`\>

#### Parameters

| Name | Type | Default value |
| :------ | :------ | :------ |
| `dataSource` | `string` | `undefined` |
| `data` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | `undefined` |
| `identifier` | `string` | `'id'` |

#### Returns

`Promise`<`AnyObject`\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[manageRecord](BaseSequelize.md#managerecord)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L49)

___

### query

▸ **query**(`queryObject`): `Promise`<`AnyObject`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `queryObject` | [`StructuredQueryInterface`](../interfaces/StructuredQueryInterface.md) |

#### Returns

`Promise`<`AnyObject`[]\>

#### Overrides

[BaseSequelize](BaseSequelize.md).[query](BaseSequelize.md#query)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L27)

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

#### Overrides

[BaseSequelize](BaseSequelize.md).[translateQuery](BaseSequelize.md#translatequery)

#### Defined in

[services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/strategies/sequelize/mysql-sequelize-strategy.ts#L57)
