[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / RecentSearch

# Class: RecentSearch

## Hierarchy

- `UserModifiableEntity`<[`RecentSearch`](RecentSearch.md)\>

  ↳ **`RecentSearch`**

## Table of contents

### Constructors

- [constructor](RecentSearch.md#constructor)

### Properties

- [createdBy](RecentSearch.md#createdby)
- [createdOn](RecentSearch.md#createdon)
- [id](RecentSearch.md#id)
- [modifiedBy](RecentSearch.md#modifiedby)
- [modifiedOn](RecentSearch.md#modifiedon)
- [params](RecentSearch.md#params)
- [userId](RecentSearch.md#userid)

## Constructors

### constructor

• **new RecentSearch**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`RecentSearch`](RecentSearch.md)\> |

#### Inherited from

UserModifiableEntity<RecentSearch\>.constructor

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

[services/search-service/src/models/recent-search.model.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/recent-search.model.ts#L24)

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

### params

• **params**: [`SearchQuery`](SearchQuery.md)[]

#### Defined in

[services/search-service/src/models/recent-search.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/recent-search.model.ts#L33)

___

### userId

• `Optional` **userId**: `string`

#### Defined in

[services/search-service/src/models/recent-search.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/models/recent-search.model.ts#L30)
