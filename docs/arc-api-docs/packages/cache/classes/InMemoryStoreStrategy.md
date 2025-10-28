[@sourceloop/cache](../README.md) / [Exports](../modules.md) / InMemoryStoreStrategy

# Class: InMemoryStoreStrategy

## Implements

- [`ICacheStore`](../interfaces/ICacheStore.md)

## Table of contents

### Constructors

- [constructor](InMemoryStoreStrategy.md#constructor)

### Properties

- [store](InMemoryStoreStrategy.md#store)

### Methods

- [delete](InMemoryStoreStrategy.md#delete)
- [deleteMany](InMemoryStoreStrategy.md#deletemany)
- [get](InMemoryStoreStrategy.md#get)
- [getMany](InMemoryStoreStrategy.md#getmany)
- [getWithCheck](InMemoryStoreStrategy.md#getwithcheck)
- [set](InMemoryStoreStrategy.md#set)
- [setMany](InMemoryStoreStrategy.md#setmany)
- [setWithTime](InMemoryStoreStrategy.md#setwithtime)

## Constructors

### constructor

• **new InMemoryStoreStrategy**()

## Properties

### store

• `Private` `Readonly` **store**: `Map`<`string`, { `cachedAt`: `number` ; `ttl`: `number` ; `value`: `any`  }\>

#### Defined in

[services/strategies/inmemory-store.strategy.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L6)

## Methods

### delete

▸ **delete**(`key`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheStore](../interfaces/ICacheStore.md).[delete](../interfaces/ICacheStore.md#delete)

#### Defined in

[services/strategies/inmemory-store.strategy.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L34)

___

### deleteMany

▸ **deleteMany**(`keys`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `keys` | `string`[] |

#### Returns

`Promise`<`void`\>

#### Implementation of

[ICacheStore](../interfaces/ICacheStore.md).[deleteMany](../interfaces/ICacheStore.md#deletemany)

#### Defined in

[services/strategies/inmemory-store.strategy.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L38)

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

#### Implementation of

[ICacheStore](../interfaces/ICacheStore.md).[get](../interfaces/ICacheStore.md#get)

#### Defined in

[services/strategies/inmemory-store.strategy.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L17)

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

#### Implementation of

[ICacheStore](../interfaces/ICacheStore.md).[getMany](../interfaces/ICacheStore.md#getmany)

#### Defined in

[services/strategies/inmemory-store.strategy.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L20)

___

### getWithCheck

▸ `Private` **getWithCheck**(`key`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |

#### Returns

`any`

#### Defined in

[services/strategies/inmemory-store.strategy.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L42)

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

#### Implementation of

[ICacheStore](../interfaces/ICacheStore.md).[set](../interfaces/ICacheStore.md#set)

#### Defined in

[services/strategies/inmemory-store.strategy.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L24)

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

#### Implementation of

[ICacheStore](../interfaces/ICacheStore.md).[setMany](../interfaces/ICacheStore.md#setmany)

#### Defined in

[services/strategies/inmemory-store.strategy.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L27)

___

### setWithTime

▸ `Private` **setWithTime**(`key`, `value`, `ttl`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `key` | `string` |
| `value` | `unknown` |
| `ttl` | `number` |

#### Returns

`void`

#### Defined in

[services/strategies/inmemory-store.strategy.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/inmemory-store.strategy.ts#L53)
