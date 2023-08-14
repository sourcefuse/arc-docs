[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / FeatureFlagActionProvider

# Class: FeatureFlagActionProvider

## Implements

- `Provider`<[`FeatureFlagFn`](../modules.md#featureflagfn)\>

## Table of contents

### Constructors

- [constructor](FeatureFlagActionProvider.md#constructor)

### Properties

- [getMetadata](FeatureFlagActionProvider.md#getmetadata)
- [handlerService](FeatureFlagActionProvider.md#handlerservice)
- [user](FeatureFlagActionProvider.md#user)

### Methods

- [action](FeatureFlagActionProvider.md#action)
- [value](FeatureFlagActionProvider.md#value)

## Constructors

### constructor

• **new FeatureFlagActionProvider**(`getMetadata`, `user?`, `handlerService?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `getMetadata` | `Getter`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)\> |
| `user?` | [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md) |
| `handlerService?` | [`FeatureHandlerService`](FeatureHandlerService.md) |

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L18)

## Properties

### getMetadata

• `Private` `Readonly` **getMetadata**: `Getter`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)\>

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L20)

___

### handlerService

• `Private` `Optional` **handlerService**: [`FeatureHandlerService`](FeatureHandlerService.md)

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L24)

___

### user

• `Private` `Optional` `Readonly` **user**: [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md)

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L22)

## Methods

### action

▸ **action**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L30)

___

### value

▸ **value**(): [`FeatureFlagFn`](../modules.md#featureflagfn)

#### Returns

[`FeatureFlagFn`](../modules.md#featureflagfn)

#### Implementation of

Provider.value

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L26)
