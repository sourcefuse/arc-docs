[@sourceloop/core](../README.md) / [Exports](../modules.md) / Adapter

# Interface: Adapter<T, R\>

## Type parameters

| Name |
| :------ |
| `T` |
| `R` |

## Implemented by

- [`AnyAdapter`](../classes/AnyAdapter.md)

## Table of contents

### Methods

- [adaptFromModel](Adapter.md#adaptfrommodel)
- [adaptToModel](Adapter.md#adapttomodel)

## Methods

### adaptFromModel

▸ **adaptFromModel**(`data`, `...rest`): `R`

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |
| `...rest` | `any`[] |

#### Returns

`R`

#### Defined in

[packages/core/src/adapters/i-adapter.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/adapters/i-adapter.ts#L9)

___

### adaptToModel

▸ **adaptToModel**(`resp`, `...rest`): `T`

#### Parameters

| Name | Type |
| :------ | :------ |
| `resp` | `R` |
| `...rest` | `any`[] |

#### Returns

`T`

#### Defined in

[packages/core/src/adapters/i-adapter.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/adapters/i-adapter.ts#L8)
