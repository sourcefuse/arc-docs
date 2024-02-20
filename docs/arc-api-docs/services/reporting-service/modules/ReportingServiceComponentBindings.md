[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / ReportingServiceComponentBindings

# Namespace: ReportingServiceComponentBindings

## Table of contents

### Variables

- [COMPONENT](ReportingServiceComponentBindings.md#component)
- [CUSTOM\_TYPE\_CONVERTER\_MAPPING](ReportingServiceComponentBindings.md#custom_type_converter_mapping)
- [CUSTOM\_TYPE\_CONVERTER\_METADATA](ReportingServiceComponentBindings.md#custom_type_converter_metadata)
- [DATASOURCE](ReportingServiceComponentBindings.md#datasource)
- [DATA\_SET\_CONFIG](ReportingServiceComponentBindings.md#data_set_config)
- [DATA\_SOURCES\_SERVICE](ReportingServiceComponentBindings.md#data_sources_service)
- [DATA\_STORE\_ADAPTER](ReportingServiceComponentBindings.md#data_store_adapter)
- [DATA\_STORE\_CONFIGURATION](ReportingServiceComponentBindings.md#data_store_configuration)
- [DATA\_STORE\_SERVICE\_PROVIDER](ReportingServiceComponentBindings.md#data_store_service_provider)
- [DATA\_TYPE\_MAP](ReportingServiceComponentBindings.md#data_type_map)
- [GENERIC\_DATA\_TYPE\_CONVERSION\_FUNCTIONS](ReportingServiceComponentBindings.md#generic_data_type_conversion_functions)
- [INGESTION\_MAPPINGS\_LIST](ReportingServiceComponentBindings.md#ingestion_mappings_list)
- [MAPPING\_WITHOUT\_CUSTOM\_LISTENERS](ReportingServiceComponentBindings.md#mapping_without_custom_listeners)
- [QUERY\_UTILITY](ReportingServiceComponentBindings.md#query_utility)
- [REPORTING\_INGESTION\_MESSAGING\_SERVICE](ReportingServiceComponentBindings.md#reporting_ingestion_messaging_service)
- [REPORT\_EVENT\_LISTENER\_METADATA](ReportingServiceComponentBindings.md#report_event_listener_metadata)
- [S3\_OBJECT\_PROVIDER](ReportingServiceComponentBindings.md#s3_object_provider)
- [SEQUELIZE\_OBJECT\_PROVIDER](ReportingServiceComponentBindings.md#sequelize_object_provider)
- [SERVICE\_MAPPING](ReportingServiceComponentBindings.md#service_mapping)

## Variables

### COMPONENT

• `Const` **COMPONENT**: `BindingKey`<[`ReportingServiceComponent`](../classes/ReportingServiceComponent.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L21)

___

### CUSTOM\_TYPE\_CONVERTER\_MAPPING

• `Const` **CUSTOM\_TYPE\_CONVERTER\_MAPPING**: `BindingKey`<`Record`<`string`, [`CustomTypeConvertor`](../interfaces/CustomTypeConvertor.md)\>\>

#### Defined in

[services/reporting-service/src/keys.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L47)

___

### CUSTOM\_TYPE\_CONVERTER\_METADATA

• `Const` **CUSTOM\_TYPE\_CONVERTER\_METADATA**: `MetadataAccessor`<`Record`<`string`, `unknown`\>, `ClassDecorator`\>

#### Defined in

[services/reporting-service/src/keys.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L32)

___

### DATASOURCE

• `Const` **DATASOURCE**: `BindingKey`<`DataSource`\>

#### Defined in

[services/reporting-service/src/keys.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L24)

___

### DATA\_SET\_CONFIG

• `Const` **DATA\_SET\_CONFIG**: `BindingKey`<[`DataSetServiceConfig`](../interfaces/DataSetServiceConfig.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L52)

___

### DATA\_SOURCES\_SERVICE

• `Const` **DATA\_SOURCES\_SERVICE**: `BindingKey`<[`DataSourcesService`](../classes/DataSourcesService.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L55)

___

### DATA\_STORE\_ADAPTER

• `Const` **DATA\_STORE\_ADAPTER**: `BindingKey`<[`DataStoreAdapter`](../interfaces/DataStoreAdapter.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L37)

___

### DATA\_STORE\_CONFIGURATION

• `Const` **DATA\_STORE\_CONFIGURATION**: `BindingKey`<[`DataStoreConfiguration`](../modules.md#datastoreconfiguration)\>

#### Defined in

[services/reporting-service/src/keys.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L50)

___

### DATA\_STORE\_SERVICE\_PROVIDER

• `Const` **DATA\_STORE\_SERVICE\_PROVIDER**: `BindingKey`<`DataStoreObjectInterface`\>

#### Defined in

[services/reporting-service/src/keys.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L60)

___

### DATA\_TYPE\_MAP

• `Const` **DATA\_TYPE\_MAP**: `BindingKey`<`Record`<`string`, `DataTypeMapping`\>\>

#### Defined in

[services/reporting-service/src/keys.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L58)

___

### GENERIC\_DATA\_TYPE\_CONVERSION\_FUNCTIONS

• `Const` **GENERIC\_DATA\_TYPE\_CONVERSION\_FUNCTIONS**: `BindingKey`<[`DataStoreDataTypeConversionFunctions`](../interfaces/DataStoreDataTypeConversionFunctions.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L69)

___

### INGESTION\_MAPPINGS\_LIST

• `Const` **INGESTION\_MAPPINGS\_LIST**: `BindingKey`<`Record`<`string`, [`IngestionMapping`](../classes/IngestionMapping.md)\>\>

#### Defined in

[services/reporting-service/src/keys.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L39)

___

### MAPPING\_WITHOUT\_CUSTOM\_LISTENERS

• `Const` **MAPPING\_WITHOUT\_CUSTOM\_LISTENERS**: `BindingKey`<`Set`<`string`\>\>

#### Defined in

[services/reporting-service/src/keys.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L42)

___

### QUERY\_UTILITY

• `Const` **QUERY\_UTILITY**: `BindingKey`<[`QueryUtilityInterface`](../interfaces/QueryUtilityInterface.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L81)

___

### REPORTING\_INGESTION\_MESSAGING\_SERVICE

• `Const` **REPORTING\_INGESTION\_MESSAGING\_SERVICE**: `BindingKey`<[`ReportIngestionMessagingService`](../classes/ReportIngestionMessagingService.md)\>

#### Defined in

[services/reporting-service/src/keys.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L64)

___

### REPORT\_EVENT\_LISTENER\_METADATA

• `Const` **REPORT\_EVENT\_LISTENER\_METADATA**: `MetadataAccessor`<`Record`<`string`, `unknown`\>, `ClassDecorator`\>

#### Defined in

[services/reporting-service/src/keys.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L28)

___

### S3\_OBJECT\_PROVIDER

• `Const` **S3\_OBJECT\_PROVIDER**: `BindingKey`<`S3`\>

#### Defined in

[services/reporting-service/src/keys.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L73)

___

### SEQUELIZE\_OBJECT\_PROVIDER

• `Const` **SEQUELIZE\_OBJECT\_PROVIDER**: `BindingKey`<`Sequelize`\>

#### Defined in

[services/reporting-service/src/keys.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L77)

___

### SERVICE\_MAPPING

• `Const` **SERVICE\_MAPPING**: `BindingKey`<`Record`<`string`, [`IngestionHandler`](../interfaces/IngestionHandler.md)\>\>

#### Defined in

[services/reporting-service/src/keys.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/keys.ts#L45)
