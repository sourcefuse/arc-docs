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

- [FeatureFlagMetadata](interfaces/FeatureFlagMetadata.md)
- [IAuthUserWithDisabledFeat](interfaces/IAuthUserWithDisabledFeat.md)

### Type Aliases

- [FeatureFlagFn](modules.md#featureflagfn)
- [FeatureInterface](modules.md#featureinterface)

### Variables

- [FEATURE\_FLAG\_METADATA\_ACCESSOR](modules.md#feature_flag_metadata_accessor)

### Functions

- [featureFlag](modules.md#featureflag)
- [getFeatureFlagMetadata](modules.md#getfeatureflagmetadata)

## Type Aliases

### FeatureFlagFn

Ƭ **FeatureFlagFn**: () => `Promise`<`boolean`\>

#### Type declaration

▸ (): `Promise`<`boolean`\>

##### Returns

`Promise`<`boolean`\>

#### Defined in

[feature-toggle/src/types.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/packages/feature-toggle/src/types.ts#L14)

___

### FeatureInterface

Ƭ **FeatureInterface**: () => `Promise`<`boolean`\>

#### Type declaration

▸ (): `Promise`<`boolean`\>

##### Returns

`Promise`<`boolean`\>

#### Defined in

[feature-toggle/src/types.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/packages/feature-toggle/src/types.ts#L12)

## Variables

### FEATURE\_FLAG\_METADATA\_ACCESSOR

• `Const` **FEATURE\_FLAG\_METADATA\_ACCESSOR**: `MetadataAccessor`<[`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md), `MethodDecorator`\>

#### Defined in

[feature-toggle/src/keys.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/packages/feature-toggle/src/keys.ts#L8)

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

[feature-toggle/src/decorators/feature-flag.decorator.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/packages/feature-toggle/src/decorators/feature-flag.decorator.ts#L9)

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

[feature-toggle/src/providers/feature-flag-metadata.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/68ec38a2a/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L30)
