[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchQuery

# Class: SearchQuery

## Hierarchy

- `UserModifiableEntity`<[`SearchQuery`](SearchQuery.md)\>

  ↳ **`SearchQuery`**

## Table of contents

### Constructors

- [constructor](SearchQuery.md#constructor)

### Properties

- [createdBy](SearchQuery.md#createdby)
- [createdOn](SearchQuery.md#createdon)
- [id](SearchQuery.md#id)
- [limit](SearchQuery.md#limit)
- [limitByType](SearchQuery.md#limitbytype)
- [match](SearchQuery.md#match)
- [modifiedBy](SearchQuery.md#modifiedby)
- [modifiedOn](SearchQuery.md#modifiedon)
- [offset](SearchQuery.md#offset)
- [order](SearchQuery.md#order)
- [recentSearchId](SearchQuery.md#recentsearchid)
- [sources](SearchQuery.md#sources)
- [where](SearchQuery.md#where)

## Constructors

### constructor

• **new SearchQuery**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SearchQuery`](SearchQuery.md)\> |

#### Inherited from

UserModifiableEntity<SearchQuery\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/search-service/src/models/search-query.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L25)

___

### limit

• `Optional` **limit**: `number`

#### Defined in

[services/search-service/src/models/search-query.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L36)

___

### limitByType

• `Optional` **limitByType**: `boolean`

#### Defined in

[services/search-service/src/models/search-query.model.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L47)

___

### match

• **match**: `string`

#### Defined in

[services/search-service/src/models/search-query.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L31)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### offset

• `Optional` **offset**: `number`

#### Defined in

[services/search-service/src/models/search-query.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L52)

___

### order

• `Optional` **order**: `string`

#### Defined in

[services/search-service/src/models/search-query.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L41)

___

### recentSearchId

• **recentSearchId**: `string`

#### Defined in

[services/search-service/src/models/search-query.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L66)

___

### sources

• `Optional` **sources**: `string`[]

#### Defined in

[services/search-service/src/models/search-query.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L58)

___

### where

• `Optional` **where**: [`SearchWhereFilterMap`](../modules.md#searchwherefiltermap)

#### Defined in

[services/search-service/src/models/search-query.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/search-query.model.ts#L63)
