[@sourceloop/feature-toggle](README.md) / Exports

# @sourceloop/feature-toggle

## Table of contents

### Namespaces

- [StrategyBindings](modules/StrategyBindings.md)

### Classes

- [FeatureFlagActionProvider](classes/FeatureFlagActionProvider.md)
- [FeatureFlagMetadataProvider](classes/FeatureFlagMetadataProvider.md)
- [FeatureHandlerService](classes/FeatureHandlerService.md)
- [FeatureToggleComponent](classes/FeatureToggleComponent.md)

### Interfaces

- [FeatureFlagMetadata](interfaces/FeatureFlagMetadata.md)
- [FeatureHandler](interfaces/FeatureHandler.md)
- [FilterStrategy](interfaces/FilterStrategy.md)
- [IAuthUserWithDisabledFeat](interfaces/IAuthUserWithDisabledFeat.md)

### Type Aliases

- [FeatureFlagFn](modules.md#featureflagfn)
- [FeatureFlagOptions](modules.md#featureflagoptions)
- [FeatureInterface](modules.md#featureinterface)
- [FilterType](modules.md#filtertype)

### Variables

- [FEATURE\_FLAG\_METADATA\_ACCESSOR](modules.md#feature_flag_metadata_accessor)
- [HANDLER\_EXTENSION\_POINT\_NAME](modules.md#handler_extension_point_name)

### Functions

- [asFeatureHandler](modules.md#asfeaturehandler)
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

[packages/feature-toggle/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L20)

___

### FeatureFlagOptions

Ƭ **FeatureFlagOptions**: `Object`

#### Index signature

▪ [property: `string`]: `any`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `handler?` | `string` |
| `operator?` | ``"AND"`` \| ``"OR"`` |

#### Defined in

[packages/feature-toggle/src/types.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L11)

___

### FeatureInterface

Ƭ **FeatureInterface**: () => `Promise`<`boolean`\>

#### Type declaration

▸ (): `Promise`<`boolean`\>

##### Returns

`Promise`<`boolean`\>

#### Defined in

[packages/feature-toggle/src/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L18)

___

### FilterType

Ƭ **FilterType**: ``"AND"`` \| ``"OR"``

#### Defined in

[packages/feature-toggle/src/types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L58)

## Variables

### FEATURE\_FLAG\_METADATA\_ACCESSOR

• `Const` **FEATURE\_FLAG\_METADATA\_ACCESSOR**: `MetadataAccessor`<[`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md), `MethodDecorator`\>

#### Defined in

[packages/feature-toggle/src/keys.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/keys.ts#L8)

___

### HANDLER\_EXTENSION\_POINT\_NAME

• `Const` **HANDLER\_EXTENSION\_POINT\_NAME**: ``"handlers"``

Name/id of the handler extension point

#### Defined in

[packages/feature-toggle/src/types.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L44)

## Functions

### asFeatureHandler

▸ **asFeatureHandler**(`binding`): `void`

A binding template for handler extensions

#### Parameters

| Name | Type |
| :------ | :------ |
| `binding` | `Binding`<`unknown`\> |

#### Returns

`void`

#### Defined in

node_modules/@loopback/context/dist/binding.d.ts:202

___

### featureFlag

▸ **featureFlag**(`metadata`): `MethodDecorator`

#### Parameters

| Name | Type |
| :------ | :------ |
| `metadata` | [`FeatureFlagMetadata`](interfaces/FeatureFlagMetadata.md) |

#### Returns

`MethodDecorator`

#### Defined in

[packages/feature-toggle/src/decorators/feature-flag.decorator.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/decorators/feature-flag.decorator.ts#L9)

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

[packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-metadata.provider.ts#L30)
