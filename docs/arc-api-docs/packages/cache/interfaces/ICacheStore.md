[@sourceloop/cache](../README.md) / [Exports](../modules.md) / ICacheStore

# Interface: ICacheStore

## Implemented by

- [`InMemoryStoreStrategy`](../classes/InMemoryStoreStrategy.md)
- [`RedisStoreStrategy`](../classes/RedisStoreStrategy.md)

## Table of contents

### Methods

- [delete](ICacheStore.md#delete)
- [deleteMany](ICacheStore.md#deletemany)
- [get](ICacheStore.md#get)
- [getMany](ICacheStore.md#getmany)
- [set](ICacheStore.md#set)
- [setMany](ICacheStore.md#setmany)

## Methods

### delete

▸ **delete**(`key`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L89)

___

### deleteMany

▸ **deleteMany**(`keys`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `keys` | `string`[] |

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L90)

___

### get

▸ **get**<`T`\>(`key`): `Promise`<`undefined` \| `T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`Promise`<`undefined` \| `T`\>

#### Defined in

[types.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L85)

___

### getMany

▸ **getMany**<`T`\>(`keys`): `Promise`<(`undefined` \| `T`)[]\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `keys` | `string`[] |

#### Returns

`Promise`<(`undefined` \| `T`)[]\>

#### Defined in

[types.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L87)

___

### set

▸ **set**<`T`\>(`key`, `value`, `ttl`): `Promise`<`void`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `value` | `T` |
| `ttl` | `number` |

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L86)

___

### setMany

▸ **setMany**<`T`\>(`keys`): `Promise`<`void`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `keys` | [`string`, `T`, `number`][] |

#### Returns

`Promise`<`void`\>

#### Defined in

[types.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/types.ts#L88)
