[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / ReportIngestionMessagingService

# Class: ReportIngestionMessagingService

## Table of contents

### Constructors

- [constructor](ReportIngestionMessagingService.md#constructor)

### Properties

- [customTypeConverters](ReportIngestionMessagingService.md#customtypeconverters)
- [dataStoreAdapter](ReportIngestionMessagingService.md#datastoreadapter)
- [dataTypeMap](ReportIngestionMessagingService.md#datatypemap)
- [defaultListenerService](ReportIngestionMessagingService.md#defaultlistenerservice)
- [logger](ReportIngestionMessagingService.md#logger)
- [mappingsWithoutCustomListeners](ReportIngestionMessagingService.md#mappingswithoutcustomlisteners)
- [serviceMapping](ReportIngestionMessagingService.md#servicemapping)
- [stateTrackingRepo](ReportIngestionMessagingService.md#statetrackingrepo)
- [validIngestionMappings](ReportIngestionMessagingService.md#validingestionmappings)

### Methods

- [applyColumnTypeConversion](ReportIngestionMessagingService.md#applycolumntypeconversion)
- [applyTransformation](ReportIngestionMessagingService.md#applytransformation)
- [convertDataType](ReportIngestionMessagingService.md#convertdatatype)
- [determineServiceToInvoke](ReportIngestionMessagingService.md#determineservicetoinvoke)
- [processMessage](ReportIngestionMessagingService.md#processmessage)
- [trackState](ReportIngestionMessagingService.md#trackstate)
- [transformColumn](ReportIngestionMessagingService.md#transformcolumn)
- [validateAndLogPayload](ReportIngestionMessagingService.md#validateandlogpayload)

## Constructors

### constructor

• **new ReportIngestionMessagingService**(`stateTrackingRepo`, `defaultListenerService`, `logger`, `dataStoreAdapter`, `validIngestionMappings`, `mappingsWithoutCustomListeners`, `serviceMapping`, `customTypeConverters`, `dataTypeMap?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `stateTrackingRepo` | `StateTrackingRepository` |
| `defaultListenerService` | `DefaultListenerService` |
| `logger` | `ILogger` |
| `dataStoreAdapter` | [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md) |
| `validIngestionMappings` | `Record`<`string`, [`IngestionMapping`](IngestionMapping.md)\> |
| `mappingsWithoutCustomListeners` | `Set`<`string`\> |
| `serviceMapping` | `Record`<`string`, [`IngestionHandler`](../interfaces/IngestionHandler.md)\> |
| `customTypeConverters` | `Record`<`string`, [`CustomTypeConvertor`](../interfaces/CustomTypeConvertor.md)\> |
| `dataTypeMap?` | `Record`<`string`, `DataTypeMapping`\> |

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L25)

## Properties

### customTypeConverters

• `Private` **customTypeConverters**: `Record`<`string`, [`CustomTypeConvertor`](../interfaces/CustomTypeConvertor.md)\>

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L40)

___

### dataStoreAdapter

• `Private` **dataStoreAdapter**: [`DataStoreAdapter`](../interfaces/DataStoreAdapter.md)

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L32)

___

### dataTypeMap

• `Private` `Optional` **dataTypeMap**: `Record`<`string`, `DataTypeMapping`\>

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L42)

___

### defaultListenerService

• `Private` **defaultListenerService**: `DefaultListenerService`

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L29)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L30)

___

### mappingsWithoutCustomListeners

• `Private` **mappingsWithoutCustomListeners**: `Set`<`string`\>

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L36)

___

### serviceMapping

• `Private` **serviceMapping**: `Record`<`string`, [`IngestionHandler`](../interfaces/IngestionHandler.md)\>

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L38)

___

### stateTrackingRepo

• `Private` **stateTrackingRepo**: `StateTrackingRepository`

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L27)

___

### validIngestionMappings

• `Private` **validIngestionMappings**: `Record`<`string`, [`IngestionMapping`](IngestionMapping.md)\>

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L34)

## Methods

### applyColumnTypeConversion

▸ `Private` **applyColumnTypeConversion**(`key`, `value`, `transformation`): `Promise`<[`JSONValueType`](../modules.md#jsonvaluetype)\>

The function `applyColumnTypeConversion` applies type conversion to a given value based on a
specified transformation, using custom type converters if available, and falls back to default SQL
type conversion if necessary.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `key` | `string` | A string representing the key of the column in the data object. |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) | The `value` parameter is of type `JSONSupportedTypes`, which means it can accept any JSON-supported data type. |
| `transformation` | `ColumnMapping` | The `transformation` parameter is an object that contains information about the column mapping for a specific key. It includes the following properties: |

#### Returns

`Promise`<[`JSONValueType`](../modules.md#jsonvaluetype)\>

a Promise that resolves to an object of type AnyObject.

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:217](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L217)

___

### applyTransformation

▸ `Private` **applyTransformation**(`payload`): `Promise`<[`IngestReportRecord`](../interfaces/IngestReportRecord.md)\>

The `applyTransformation` function applies column transformations to a payload object if defined,
and returns the transformed payload.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | The `payload` parameter is an object of type `IngestReportRecord`. |

#### Returns

`Promise`<[`IngestReportRecord`](../interfaces/IngestReportRecord.md)\>

a Promise that resolves to an IngestReportRecord.

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L137)

___

### convertDataType

▸ `Private` **convertDataType**(`value`, `dataType`, `options?`): `any`

The function `convertDataType` converts a value to a specified data type using a mapping provided
in `dataTypeMap`.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) | The `value` parameter is the value that needs to be converted to a different data type. |
| `dataType` | `string` | The `dataType` parameter is a string that represents the desired data type to convert the `value` to. It is used to look up the appropriate conversion function in the `dataTypeMap` object. |
| `options?` | `DataTypeConversionOptions` | The `options` parameter is an optional object that contains additional configuration options for the data type conversion. It is of type `DataTypeConversionOptions`. |

#### Returns

`any`

the value directly if mappings are not provided. If mappings are provided and there is a
convertDefaultFunc defined for the specified dataType, then the function will return the result of
calling the convertDefaultFunc with the value and options as arguments. Otherwise, it will return
the value directly.

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:271](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L271)

___

### determineServiceToInvoke

▸ `Private` **determineServiceToInvoke**(`payload`): [`IngestionHandler`](../interfaces/IngestionHandler.md)

The function determines which service to invoke based on the payload's record type, and returns
the appropriate service or a default listener service if no custom listener is found.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | The `payload` parameter is of type `IngestReportRecord`. It represents the data that needs to be processed or ingested. |

#### Returns

[`IngestionHandler`](../interfaces/IngestionHandler.md)

the variable "serviceToInvoke" if it is truthy, otherwise it returns the
"defaultListenerService".

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:300](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L300)

___

### processMessage

▸ **processMessage**(`payload`): `Promise`<`void`\>

The function processes a message payload by validating it, determining the service to invoke,
applying transformations, tracking the state, and processing the message using the appropriate
service.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | The `payload` parameter is of type `IngestReportRecord`. |

#### Returns

`Promise`<`void`\>

The function `processMessage` returns nothing (i.e., `undefined`).

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L100)

___

### trackState

▸ **trackState**(`state`, `payload`, `error?`): `Promise`<`void`\>

The function `trackState` is an asynchronous function that tracks the state of a record by
creating or updating a StateTracking object in a repository based on the provided payload and
error.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `state` | `string` | The `state` parameter is a string that represents the current state of the tracking. It could be any value that is meaningful in the context of your application's tracking system. |
| `payload` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | The `payload` parameter is an object of type `IngestReportRecord`. It contains information about a record that is being tracked. The properties of this object include: |
| `error?` | `Error` | The `error` parameter is an optional parameter of type `Error`. It is used to pass an error object to the `trackState` function. If an error object is provided, it will be used to populate the `errorDetails` object, which contains information about the error such as its message |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L60)

___

### transformColumn

▸ **transformColumn**(`key`, `value`, `transformation?`): `Promise`<[`JSONValueType`](../modules.md#jsonvaluetype)\>

The function `transformColumn` applies a column transformation to a given key-value pair,
returning the transformed value or the original value if no transformation is specified.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `key` | `string` | A string representing the key or name of the column in a data table or object. |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) | The `value` parameter is the original value of the column that needs to be transformed. It can be of any JSON value type, such as string, number, boolean, array, or object. |
| `transformation?` | `ColumnMapping` | The `transformation` parameter is an optional argument that represents the specific transformation to be applied to the column. It is of type `ColumnMappings[keyof ColumnMappings]`, which means it can take any value from the `ColumnMappings` object. The `ColumnMappings` object is a mapping of |

#### Returns

`Promise`<[`JSONValueType`](../modules.md#jsonvaluetype)\>

a Promise that resolves to a value of type JSONValueType.

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:193](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L193)

___

### validateAndLogPayload

▸ `Private` **validateAndLogPayload**(`payload`): `boolean`

The function validates and logs an IngestReportRecord payload, returning true if the validation is
successful and false otherwise.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | [`IngestReportRecord`](../interfaces/IngestReportRecord.md) | The parameter `payload` is of type `IngestReportRecord`. |

#### Returns

`boolean`

a boolean value. It returns true if the payload passes the validation and false if the
payload fails the validation.

#### Defined in

[services/reporting-service/src/services/report-ingestion-messaging.service.ts:325](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/report-ingestion-messaging.service.ts#L325)
