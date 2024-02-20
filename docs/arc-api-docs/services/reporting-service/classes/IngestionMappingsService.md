[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / IngestionMappingsService

# Class: IngestionMappingsService

## Table of contents

### Constructors

- [constructor](IngestionMappingsService.md#constructor)

### Properties

- [ingestionMappingsRepository](IngestionMappingsService.md#ingestionmappingsrepository)

### Methods

- [create](IngestionMappingsService.md#create)
- [deleteByName](IngestionMappingsService.md#deletebyname)
- [getAll](IngestionMappingsService.md#getall)
- [getByName](IngestionMappingsService.md#getbyname)
- [getCount](IngestionMappingsService.md#getcount)
- [update](IngestionMappingsService.md#update)

## Constructors

### constructor

• **new IngestionMappingsService**(`ingestionMappingsRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `ingestionMappingsRepository` | `IngestionMappingsRepository` |

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L7)

## Properties

### ingestionMappingsRepository

• `Private` `Readonly` **ingestionMappingsRepository**: `IngestionMappingsRepository`

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L9)

## Methods

### create

▸ **create**(`ingestionMapObj`): [`IngestionMapping`](IngestionMapping.md) \| `Promise`<[`IngestionMapping`](IngestionMapping.md)\>

The function creates an ingestion mapping object and returns it or a promise of it.

#### Parameters

| Name | Type |
| :------ | :------ |
| `ingestionMapObj` | [`IngestionMapping`](IngestionMapping.md) |

#### Returns

[`IngestionMapping`](IngestionMapping.md) \| `Promise`<[`IngestionMapping`](IngestionMapping.md)\>

either an IngestionMappings object or a Promise that resolves to an IngestionMappings
object.

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L65)

___

### deleteByName

▸ **deleteByName**(`dataSourceName`): `void` \| `PromiseLike`<`void`\>

The function `deleteByName` deletes a record from the `ingestionMappingsRepository` based on the
provided `dataSourceName`.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSourceName` | `string` | The parameter `dataSourceName` is a string that represents the name of the data source to be deleted. |

#### Returns

`void` \| `PromiseLike`<`void`\>

either void or a Promise that resolves to void.

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L18)

___

### getAll

▸ **getAll**(): `Promise`<[`IngestionMapping`](IngestionMapping.md)[]\>

The function `getAll` returns a promise that resolves to an array of `IngestionMappings` objects.

#### Returns

`Promise`<[`IngestionMapping`](IngestionMapping.md)[]\>

The getAll() function is returning a Promise that resolves to an array of
IngestionMappings objects.

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L37)

___

### getByName

▸ **getByName**(`dataSourceName`): [`IngestionMapping`](IngestionMapping.md) \| `Promise`<[`IngestionMapping`](IngestionMapping.md)\>

The function "getByName" retrieves ingestion mappings by their data source name.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSourceName` | `string` | A string representing the name of the data source. |

#### Returns

[`IngestionMapping`](IngestionMapping.md) \| `Promise`<[`IngestionMapping`](IngestionMapping.md)\>

either an IngestionMappings object or a Promise that resolves to an IngestionMappings
object.

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L27)

___

### getCount

▸ **getCount**(): `Promise`<`Count`\>

The `getCount` function returns a promise that resolves to the count of ingestion mappings.

#### Returns

`Promise`<`Count`\>

The `getCount()` function is returning a Promise that resolves to a `Count` object.

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L74)

___

### update

▸ **update**(`dataSourceName`, `ingestionMapObj`): `Promise`<`void`\>

The function updates an ingestion mapping object in a data source repository.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dataSourceName` | `string` | A string representing the name of the data source. |
| `ingestionMapObj` | [`IngestionMapping`](IngestionMapping.md) | - |

#### Returns

`Promise`<`void`\>

a Promise that resolves to void.

#### Defined in

[services/reporting-service/src/services/ingestion-mappings.service.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/ingestion-mappings.service.ts#L48)
