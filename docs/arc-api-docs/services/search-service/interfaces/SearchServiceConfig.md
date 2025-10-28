[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchServiceConfig

# Interface: SearchServiceConfig<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` = [`SearchResult`](../classes/SearchResult.md) |

## Table of contents

### Properties

- [controller](SearchServiceConfig.md#controller)
- [doNotMountCoreComponent](SearchServiceConfig.md#donotmountcorecomponent)
- [ignoreColumns](SearchServiceConfig.md#ignorecolumns)
- [models](SearchServiceConfig.md#models)
- [type](SearchServiceConfig.md#type)
- [useCustomSequence](SearchServiceConfig.md#usecustomsequence)
- [useSequelize](SearchServiceConfig.md#usesequelize)

## Properties

### controller

• `Optional` **controller**: [`SearchControllerConfig`](../modules.md#searchcontrollerconfig)

#### Defined in

[services/search-service/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L34)

___

### doNotMountCoreComponent

• `Optional` **doNotMountCoreComponent**: `boolean`

#### Defined in

[services/search-service/src/types.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L30)

___

### ignoreColumns

• `Optional` **ignoreColumns**: `Exclude`<keyof `T`, ``"getId"`` \| ``"getIdObject"`` \| ``"toJSON"`` \| ``"toObject"``\>[]

#### Defined in

[services/search-service/src/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L33)

___

### models

• **models**: [`SearchableModelsList`](../modules.md#searchablemodelslist)<`T`\>

#### Defined in

[services/search-service/src/types.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L31)

___

### type

• `Optional` **type**: `Constructor`<`T`\> & typeof `Model`

#### Defined in

[services/search-service/src/types.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L32)

___

### useCustomSequence

• `Optional` **useCustomSequence**: `boolean`

#### Defined in

[services/search-service/src/types.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L28)

___

### useSequelize

• `Optional` **useSequelize**: `boolean`

#### Defined in

[services/search-service/src/types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/types.ts#L29)
