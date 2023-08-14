[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / FeatureHandler

# Interface: FeatureHandler

Typically an extension point defines an interface as the contract for
extensions to implement

## Table of contents

### Properties

- [handlerName](FeatureHandler.md#handlername)

### Methods

- [handle](FeatureHandler.md#handle)

## Properties

### handlerName

• **handlerName**: `string`

#### Defined in

[feature-toggle/src/types.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/types.ts#L32)

## Methods

### handle

▸ **handle**(`featureMetadata`, `currentUser`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `featureMetadata` | [`FeatureFlagMetadata`](FeatureFlagMetadata.md) |
| `currentUser` | [`IAuthUserWithDisabledFeat`](IAuthUserWithDisabledFeat.md) |

#### Returns

`boolean`

#### Defined in

[feature-toggle/src/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/types.ts#L33)
