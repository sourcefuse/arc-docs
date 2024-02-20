[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / StateTrackingService

# Class: StateTrackingService

## Table of contents

### Constructors

- [constructor](StateTrackingService.md#constructor)

### Properties

- [stateTrackingRepo](StateTrackingService.md#statetrackingrepo)

### Methods

- [countRecords](StateTrackingService.md#countrecords)
- [findAllRecords](StateTrackingService.md#findallrecords)
- [findLatestRecord](StateTrackingService.md#findlatestrecord)

## Constructors

### constructor

• **new StateTrackingService**(`stateTrackingRepo`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `stateTrackingRepo` | `StateTrackingRepository` |

#### Defined in

[services/reporting-service/src/services/state-tracking.service.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/state-tracking.service.ts#L8)

## Properties

### stateTrackingRepo

• `Private` **stateTrackingRepo**: `StateTrackingRepository`

#### Defined in

[services/reporting-service/src/services/state-tracking.service.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/state-tracking.service.ts#L10)

## Methods

### countRecords

▸ **countRecords**(`recordType`, `recordId?`): `Promise`<{ `count`: `number`  }\>

The function counts the number of records of a given type, optionally filtered by a specific
record ID.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `recordType` | `string` | The `recordType` parameter is a string that represents the type of records you want to count. It is used to filter the records based on their type. |
| `recordId?` | `string` | The `recordId` parameter is an optional string that represents the ID of a specific record. If provided, the function will only count the records that have a matching `recordId`. If not provided, the function will count all records of the specified `recordType`. |

#### Returns

`Promise`<{ `count`: `number`  }\>

an object with a single property "count", which represents the number of records that
match the specified criteria.

#### Defined in

[services/reporting-service/src/services/state-tracking.service.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/state-tracking.service.ts#L98)

___

### findAllRecords

▸ **findAllRecords**(`recordType`, `skip?`, `limit?`, `recordId?`): `Promise`<[`StateTracking`](StateTracking.md)[]\>

The `findAllRecords` function retrieves a list of state tracking records based on the specified
record type, skip and limit parameters, and an optional record ID.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `recordType` | `string` | `undefined` | The `recordType` parameter is a string that specifies the type of records you want to retrieve. It is used to filter the records based on their type. |
| `skip?` | `number` | `0` | The `skip` parameter is used to specify the number of records to skip before returning the results. It is optional and has a default value of 0, meaning it will start returning records from the beginning. |
| `limit?` | `number` | `10` | The `limit` parameter specifies the maximum number of records to retrieve from the database. By default, it is set to 10 if no value is provided. |
| `recordId?` | `string` | `undefined` | The `recordId` parameter is an optional string that represents the unique identifier of a specific record. If provided, the function will only return records that have a matching `recordId` value. If not provided, all records of the specified `recordType` will be returned. |

#### Returns

`Promise`<[`StateTracking`](StateTracking.md)[]\>

a Promise that resolves to an array of StateTracking objects.

#### Defined in

[services/reporting-service/src/services/state-tracking.service.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/state-tracking.service.ts#L66)

___

### findLatestRecord

▸ **findLatestRecord**(`recordType`, `recordId?`): `Promise`<``null`` \| [`StateTracking`](StateTracking.md)\>

The function `findLatestRecord` retrieves the latest record of a given type and optional ID from a
repository.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `recordType` | `string` | The `recordType` parameter is a string that represents the type of record you want to find the latest entry for. It is used to filter the records based on their type. |
| `recordId?` | `string` | The `recordId` parameter is an optional string that represents the ID of a specific record. If provided, the function will filter the records based on this ID. If not provided, the function will return the latest record of the specified `recordType` without any filtering based on the ID. |

#### Returns

`Promise`<``null`` \| [`StateTracking`](StateTracking.md)\>

The function `findLatestRecord` returns a Promise that resolves to either the latest
record of type `StateTracking` that matches the given `recordType` and `recordId`, or `null` if no
matching record is found.

#### Defined in

[services/reporting-service/src/services/state-tracking.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/services/state-tracking.service.ts#L27)
