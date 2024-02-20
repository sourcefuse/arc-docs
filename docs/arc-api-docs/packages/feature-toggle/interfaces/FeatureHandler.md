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

[packages/feature-toggle/src/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L33)

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

[packages/feature-toggle/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L34)
