[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / IngestionHandler

# Interface: IngestionHandler

## Table of contents

### Properties

- [processMessage](IngestionHandler.md#processmessage)

## Properties

### processMessage

• **processMessage**: (`DBO`: [`DataStoreAdapter`](DataStoreAdapter.md), `payload`: [`IngestReportRecord`](IngestReportRecord.md), `ingestionMappingContext`: [`IngestionMapping`](../classes/IngestionMapping.md)) => `Promise`<`void`\>

#### Type declaration

▸ (`DBO`, `payload`, `ingestionMappingContext`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `DBO` | [`DataStoreAdapter`](DataStoreAdapter.md) |
| `payload` | [`IngestReportRecord`](IngestReportRecord.md) |
| `ingestionMappingContext` | [`IngestionMapping`](../classes/IngestionMapping.md) |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/reporting-service/src/interfaces/ingestion-handler.interface.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/ingestion-handler.interface.ts#L6)
