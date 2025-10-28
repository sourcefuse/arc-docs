[@sourceloop/cache](../README.md) / [Exports](../modules.md) / RedisStoreStrategy

# Class: RedisStoreStrategy

## Implements

- [`ICacheStore`](../interfaces/ICacheStore.md)

## Table of contents

### Constructors

- [constructor](RedisStoreStrategy.md#constructor)

### Properties

- [configuration](RedisStoreStrategy.md#configuration)
- [context](RedisStoreStrategy.md#context)
- [datasource](RedisStoreStrategy.md#datasource)
- [decoder](RedisStoreStrategy.md#decoder)

### Methods

- [delete](RedisStoreStrategy.md#delete)
- [deleteMany](RedisStoreStrategy.md#deletemany)
- [executeCommand](RedisStoreStrategy.md#executecommand)
- [get](RedisStoreStrategy.md#get)
- [getMany](RedisStoreStrategy.md#getmany)
- [parseValue](RedisStoreStrategy.md#parsevalue)
- [set](RedisStoreStrategy.md#set)
- [setMany](RedisStoreStrategy.md#setmany)

## Constructors

### constructor

• **new RedisStoreStrategy**(`configuration`, `context`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `configuration` | [`ICacheComponentOptions`](../interfaces/ICacheComponentOptions.md) |
| `context` | `Context` |

#### Defined in

[services/strategies/redis-store.strategy.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L12)

## Properties

### configuration

• `Private` `Readonly` **configuration**: [`ICacheComponentOptions`](../interfaces/ICacheComponentOptions.md)

#### Defined in

[services/strategies/redis-store.strategy.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L14)

___

### context

• `Private` `Readonly` **context**: `Context`

#### Defined in

[services/strategies/redis-store.strategy.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L16)

___

### datasource

• **datasource**: `DataSource`

#### Defined in

[services/strategies/redis-store.strategy.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L10)

___

### decoder

• `Private` `Readonly` **decoder**: `TextDecoder`

#### Defined in

[services/strategies/redis-store.strategy.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L11)

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

[services/strategies/redis-store.strategy.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L48)

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

[services/strategies/redis-store.strategy.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L52)

___

### executeCommand

▸ **executeCommand**<`S`\>(`command`, `args`): `Promise`<`S`\>

#### Type parameters

| Name |
| :------ |
| `S` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `command` | `string` |
| `args` | (`string` \| `number`)[] |

#### Returns

`Promise`<`S`\>

#### Defined in

[services/strategies/redis-store.strategy.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L56)

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

[services/strategies/redis-store.strategy.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L28)

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

[services/strategies/redis-store.strategy.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L31)

___

### parseValue

▸ `Private` **parseValue**<`T`\>(`res`): `T`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `res` | `Buffer` \| `Buffer`[] |

#### Returns

`T`

#### Defined in

[services/strategies/redis-store.strategy.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L74)

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

[services/strategies/redis-store.strategy.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L34)

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

[services/strategies/redis-store.strategy.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/cache/src/services/strategies/redis-store.strategy.ts#L37)
