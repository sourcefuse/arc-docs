[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / QueryUtilityInterface

# Interface: QueryUtilityInterface

## Table of contents

### Methods

- [jsonToQueryConverter](QueryUtilityInterface.md#jsontoqueryconverter)
- [listAllDataSourcesFromJson](QueryUtilityInterface.md#listalldatasourcesfromjson)
- [validateQueryObject](QueryUtilityInterface.md#validatequeryobject)

## Methods

### jsonToQueryConverter

▸ **jsonToQueryConverter**(`sqlQuery`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `sqlQuery` | [`StructuredQueryInterface`](StructuredQueryInterface.md) |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `bind` | `AnyObject` |
| `query` | `string` |

#### Defined in

[services/reporting-service/src/interfaces/query-utility.interface.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/query-utility.interface.ts#L10)

___

### listAllDataSourcesFromJson

▸ **listAllDataSourcesFromJson**(`query`, `removeSchema`): `string`[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`StructuredQueryInterface`](StructuredQueryInterface.md) |
| `removeSchema` | `boolean` |

#### Returns

`string`[]

#### Defined in

[services/reporting-service/src/interfaces/query-utility.interface.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/query-utility.interface.ts#L6)

___

### validateQueryObject

▸ **validateQueryObject**(`query`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`StructuredQueryInterface`](StructuredQueryInterface.md) |

#### Returns

`boolean`

#### Defined in

[services/reporting-service/src/interfaces/query-utility.interface.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/query-utility.interface.ts#L5)
