[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / QueryList

# Class: QueryList

## Table of contents

### Constructors

- [constructor](QueryList.md#constructor)

### Properties

- [queries](QueryList.md#queries)

### Methods

- [\_merge](QueryList.md#_merge)
- [add](QueryList.md#add)
- [merge](QueryList.md#merge)

## Constructors

### constructor

• **new QueryList**(`queries?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `queries?` | [`Queries`](../modules.md#queries) |

#### Defined in

[services/search-service/src/classes/query-list.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/query-list.ts#L9)

## Properties

### queries

• **queries**: [`Queries`](../modules.md#queries)

#### Defined in

[services/search-service/src/classes/query-list.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/query-list.ts#L8)

## Methods

### \_merge

▸ `Private` **_merge**(`queries`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `queries` | [`Queries`](../modules.md#queries) |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `params` | [`ShortHandEqualType`](../modules.md#shorthandequaltype)[] |
| `sql` | `string` |

#### Defined in

[services/search-service/src/classes/query-list.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/query-list.ts#L24)

___

### add

▸ **add**(`query?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `query?` | [`Query`](../modules.md#query) \| [`Queries`](../modules.md#queries) |

#### Returns

`void`

#### Defined in

[services/search-service/src/classes/query-list.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/query-list.ts#L19)

___

### merge

▸ **merge**(): `Object`

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `params` | [`ShortHandEqualType`](../modules.md#shorthandequaltype)[] |
| `sql` | `string` |

#### Defined in

[services/search-service/src/classes/query-list.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/query-list.ts#L16)
