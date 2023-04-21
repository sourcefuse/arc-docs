[@sourceloop/feature-toggle](README.md) / Exports

# @sourceloop/feature-toggle

## Table of contents

### Namespaces

- [StrategyBindings](modules/StrategyBindings.md)

### Classes

- [FeatureFlagActionProvider](classes/FeatureFlagActionProvider.md)
- [FeatureFlagMetadataProvider](classes/FeatureFlagMetadataProvider.md)
- [FeatureToggleComponent](classes/FeatureToggleComponent.md)

### Interfaces

- [FeatureFlagFn](interfaces/FeatureFlagFn.md)
- [FeatureFlagMetadata](interfaces/FeatureFlagMetadata.md)
- [FeatureInterface](interfaces/FeatureInterface.md)
- [IAuthUserWithDisabledFeat](interfaces/IAuthUserWithDisabledFeat.md)

### Variables

- [FEATURE\_FLAG\_METADATA\_ACCESSOR](modules.md#feature_flag_metadata_accessor)

### Functions

- [featureFlag](modules.md#featureflag)
- [getFeatureFlagMetadata](modules.md#getfeatureflagmetadata)

## Variables

### FEATURE\_FLAG\_METADATA\_ACCESSOR

• `Const` **FEATURE\_FLAG\_METADATA\_ACCESSOR**: `MetadataAccessor`<[`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md), `MethodDecorator`\>

#### Defined in

[feature-toggle/src/keys.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/feature-toggle/src/keys.ts#L8)

## Functions

### featureFlag

▸ **featureFlag**(`metadata`): `MethodDecorator`

#### Parameters

| Name | Type |
| :------ | :------ |
| `metadata` | [`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md) |

#### Returns

`MethodDecorator`

#### Defined in

[feature-toggle/src/decorators/feature-flag.decorator.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/feature-toggle/src/decorators/feature-flag.decorator.ts#L9)

___

### getFeatureFlagMetadata

▸ **getFeatureFlagMetadata**(`controllerClass`, `methodName`): [`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md) \| `undefined`

#### Parameters

| Name | Type |
| :------ | :------ |
| `controllerClass` | `Constructor`<{}\> |
| `methodName` | `string` |

#### Returns

[`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md) \| `undefined`

#### Defined in

[feature-toggle/src/providers/feature-flag-metadata.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L30)
