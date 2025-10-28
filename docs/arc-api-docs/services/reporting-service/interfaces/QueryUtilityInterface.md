[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / QueryUtilityInterface

# Interface: QueryUtilityInterface

## Table of contents

### Methods

- [jsonToQueryConverter](QueryUtilityInterface.md#jsontoqueryconverter)
- [listAllDataSourcesFromJson](QueryUtilityInterface.md#listalldatasourcesfromjson)
- [prepareFinalSqlQuery](QueryUtilityInterface.md#preparefinalsqlquery)
- [validateQueryObject](QueryUtilityInterface.md#validatequeryobject)

## Methods

### jsonToQueryConverter

▸ **jsonToQueryConverter**(`query`): `Promise`<{ `bind`: `AnyObject` ; `query`: `string`  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`StructuredQueryInterface`](StructuredQueryInterface.md) |

#### Returns

`Promise`<{ `bind`: `AnyObject` ; `query`: `string`  }\>

#### Defined in

[services/reporting-service/src/interfaces/query-utility.interface.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/query-utility.interface.ts#L11)

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

[services/reporting-service/src/interfaces/query-utility.interface.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/query-utility.interface.ts#L7)

___

### prepareFinalSqlQuery

▸ **prepareFinalSqlQuery**(`sqlQuery`, `filter`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `sqlQuery` | `string` |
| `filter` | [`CustomFilter`](CustomFilter.md)<`AnyObject`\> |

#### Returns

`string`

#### Defined in

[services/reporting-service/src/interfaces/query-utility.interface.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/query-utility.interface.ts#L15)

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

[services/reporting-service/src/interfaces/query-utility.interface.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/query-utility.interface.ts#L6)
