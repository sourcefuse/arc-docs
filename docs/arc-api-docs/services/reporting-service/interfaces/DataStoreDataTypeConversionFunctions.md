[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / DataStoreDataTypeConversionFunctions

# Interface: DataStoreDataTypeConversionFunctions

## Table of contents

### Methods

- [convertToArray](DataStoreDataTypeConversionFunctions.md#converttoarray)
- [convertToBoolean](DataStoreDataTypeConversionFunctions.md#converttoboolean)
- [convertToDate](DataStoreDataTypeConversionFunctions.md#converttodate)
- [convertToNumber](DataStoreDataTypeConversionFunctions.md#converttonumber)
- [convertToObject](DataStoreDataTypeConversionFunctions.md#converttoobject)
- [convertToString](DataStoreDataTypeConversionFunctions.md#converttostring)

## Methods

### convertToArray

▸ **convertToArray**(`value`, `options?`): `AnyObject`[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |
| `options?` | `DataTypeConversionOptions` |

#### Returns

`AnyObject`[]

#### Defined in

[services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts#L22)

___

### convertToBoolean

▸ **convertToBoolean**(`value`, `options?`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |
| `options?` | `DataTypeConversionOptions` |

#### Returns

`boolean`

#### Defined in

[services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts#L14)

___

### convertToDate

▸ **convertToDate**(`value`, `options?`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |
| `options?` | `DataTypeConversionOptions` |

#### Returns

`string`

#### Defined in

[services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts#L18)

___

### convertToNumber

▸ **convertToNumber**(`value`, `options?`): `number`

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |
| `options?` | `DataTypeConversionOptions` |

#### Returns

`number`

#### Defined in

[services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts#L10)

___

### convertToObject

▸ **convertToObject**(`value`, `options?`): `AnyObject`

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |
| `options?` | `DataTypeConversionOptions` |

#### Returns

`AnyObject`

#### Defined in

[services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts#L26)

___

### convertToString

▸ **convertToString**(`value`, `options?`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `value` | [`JSONValueType`](../modules.md#jsonvaluetype) |
| `options?` | `DataTypeConversionOptions` |

#### Returns

`string`

#### Defined in

[services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/data-store-data-type-conversion-functions.interface.ts#L6)
