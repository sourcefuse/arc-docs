[@sourceloop/reporting-service](README.md) / Exports

# @sourceloop/reporting-service

## Table of contents

### Namespaces

- [ReportingServiceComponentBindings](modules/ReportingServiceComponentBindings.md)

### Classes

- [BaseSequelize](classes/BaseSequelize.md)
- [ColumnForDataSourceModel](classes/ColumnForDataSourceModel.md)
- [CreateDashboardDto](classes/CreateDashboardDto.md)
- [Dashboard](classes/Dashboard.md)
- [DashboardWidget](classes/DashboardWidget.md)
- [DataSet](classes/DataSet.md)
- [DataSetsService](classes/DataSetsService.md)
- [DataSourcesService](classes/DataSourcesService.md)
- [IngestionMapping](classes/IngestionMapping.md)
- [IngestionMappingsService](classes/IngestionMappingsService.md)
- [MysqlSequelizeStrategy](classes/MysqlSequelizeStrategy.md)
- [PsqlSequelizeStrategy](classes/PsqlSequelizeStrategy.md)
- [ReportIngestionMessagingService](classes/ReportIngestionMessagingService.md)
- [ReportingServiceComponent](classes/ReportingServiceComponent.md)
- [StateTracking](classes/StateTracking.md)
- [StateTrackingService](classes/StateTrackingService.md)
- [Widget](classes/Widget.md)

### Interfaces

- [CDC](interfaces/CDC.md)
- [ColumnEntityPair](interfaces/ColumnEntityPair.md)
- [CustomFilter](interfaces/CustomFilter.md)
- [CustomTypeConvertor](interfaces/CustomTypeConvertor.md)
- [DashboardInterface](interfaces/DashboardInterface.md)
- [DataSetServiceConfig](interfaces/DataSetServiceConfig.md)
- [DataSourceList](interfaces/DataSourceList.md)
- [DataStoreAdapter](interfaces/DataStoreAdapter.md)
- [DataStoreDataTypeConversionFunctions](interfaces/DataStoreDataTypeConversionFunctions.md)
- [IngestReportRecord](interfaces/IngestReportRecord.md)
- [IngestionHandler](interfaces/IngestionHandler.md)
- [PermissionModel](interfaces/PermissionModel.md)
- [QueryUtilityInterface](interfaces/QueryUtilityInterface.md)
- [S3DataStoreConfiguration](interfaces/S3DataStoreConfiguration.md)
- [SequelizeDataStoreConfiguration](interfaces/SequelizeDataStoreConfiguration.md)
- [StructuredQueryInterface](interfaces/StructuredQueryInterface.md)
- [WidgetInterface](interfaces/WidgetInterface.md)

### Type Aliases

- [DataStoreConfiguration](modules.md#datastoreconfiguration)
- [JSONSupportedTypes](modules.md#jsonsupportedtypes)
- [JSONValueType](modules.md#jsonvaluetype)
- [WhereClause](modules.md#whereclause)
- [WhereCondition](modules.md#wherecondition)

### Functions

- [customTypeConversion](modules.md#customtypeconversion)
- [handleRecordType](modules.md#handlerecordtype)

## Type Aliases

### DataStoreConfiguration

Ƭ **DataStoreConfiguration**: [`SequelizeDataStoreConfiguration`](interfaces/SequelizeDataStoreConfiguration.md) \| [`S3DataStoreConfiguration`](interfaces/S3DataStoreConfiguration.md)

#### Defined in

[services/reporting-service/src/interfaces/data-store-config.interface.ts:4](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-config.interface.ts#L4)

___

### JSONSupportedTypes

Ƭ **JSONSupportedTypes**: ``"string"`` \| ``"number"`` \| ``"boolean"`` \| ``"null"`` \| ``"array"`` \| ``"object"``

#### Defined in

[services/reporting-service/src/interfaces/json-types.interface.ts:3](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/json-types.interface.ts#L3)

___

### JSONValueType

Ƭ **JSONValueType**: `string` \| `number` \| `boolean` \| ``null`` \| `AnyObject`[] \| `Record`<`string`, `AnyObject`\>

#### Defined in

[services/reporting-service/src/interfaces/json-types.interface.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/json-types.interface.ts#L10)

___

### WhereClause

Ƭ **WhereClause**: `Object`

#### Index signature

▪ [field: `string`]: [`WhereCondition`](modules.md#wherecondition) \| ([`WhereCondition`](modules.md#wherecondition) \| [`WhereClause`](modules.md#whereclause))[] \| `undefined`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `and?` | ([`WhereCondition`](modules.md#wherecondition) \| [`WhereClause`](modules.md#whereclause))[] |
| `or?` | ([`WhereCondition`](modules.md#wherecondition) \| [`WhereClause`](modules.md#whereclause))[] |

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L10)

___

### WhereCondition

Ƭ **WhereCondition**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `field` | `string` |
| `operator` | `Operator` |
| `value` | `string` \| `number` |

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:3](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L3)

## Functions

### customTypeConversion

▸ **customTypeConversion**(`convertType`): `ClassDecorator`

The function `CustomTypeConverterDecorator` creates a decorator for a custom type converter with the
specified convertType.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `convertType` | `string` | The `convertType` parameter is a string that represents the type that needs to be converted. |

#### Returns

`ClassDecorator`

a decorator created by the `ClassDecoratorFactory.createDecorator` method. The decorator is
created with the `ReportingServiceComponentBindings.CUSTOM_TYPE_CONVERTER_METADATA` as the first
argument and an object with the `convertType` property set to the `convertType` parameter as the
second argument.

#### Defined in

[services/reporting-service/src/decorators/custom-type-converter.decorator.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/decorators/custom-type-converter.decorator.ts#L14)

___

### handleRecordType

▸ **handleRecordType**(`recordType`): `ClassDecorator`

The function creates a class decorator factory that binds a record type to a reporting service event
listener metadata.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `recordType` | `string` | The `recordType` parameter is a string that represents the type of record. |

#### Returns

`ClassDecorator`

a decorator created by the `ClassDecoratorFactory.createDecorator` method.

#### Defined in

[services/reporting-service/src/decorators/report-event-listener.decorator.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/decorators/report-event-listener.decorator.ts#L11)
