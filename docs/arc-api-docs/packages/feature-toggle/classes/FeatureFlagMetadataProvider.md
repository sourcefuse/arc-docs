[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / FeatureFlagMetadataProvider

# Class: FeatureFlagMetadataProvider

## Implements

- `Provider`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md) \| `undefined`\>

## Table of contents

### Constructors

- [constructor](FeatureFlagMetadataProvider.md#constructor)

### Properties

- [controllerClass](FeatureFlagMetadataProvider.md#controllerclass)
- [methodName](FeatureFlagMetadataProvider.md#methodname)

### Methods

- [value](FeatureFlagMetadataProvider.md#value)

## Constructors

### constructor

• **new FeatureFlagMetadataProvider**(`controllerClass`, `methodName`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `controllerClass` | `Constructor`<{}\> |
| `methodName` | `string` |

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L18)

## Properties

### controllerClass

• `Private` `Readonly` **controllerClass**: `Constructor`<{}\>

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L20)

___

### methodName

• `Private` `Readonly` **methodName**: `string`

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L22)

## Methods

### value

▸ **value**(): `undefined` \| [`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)

#### Returns

`undefined` \| [`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)

#### Implementation of

Provider.value

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L24)
