[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / FeatureFlagActionProvider

# Class: FeatureFlagActionProvider

## Implements

- `Provider`<[`FeatureFlagFn`](../modules.md#featureflagfn)\>

## Table of contents

### Constructors

- [constructor](FeatureFlagActionProvider.md#constructor)

### Properties

- [getMetadata](FeatureFlagActionProvider.md#getmetadata)
- [user](FeatureFlagActionProvider.md#user)

### Methods

- [action](FeatureFlagActionProvider.md#action)
- [value](FeatureFlagActionProvider.md#value)

## Constructors

### constructor

• **new FeatureFlagActionProvider**(`getMetadata`, `user?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `getMetadata` | `Getter`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)\> |
| `user?` | [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md) |

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L17)

## Properties

### getMetadata

• `Private` `Readonly` **getMetadata**: `Getter`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)\>

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L19)

___

### user

• `Private` `Optional` `Readonly` **user**: [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md)

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L21)

## Methods

### action

▸ **action**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L27)

___

### value

▸ **value**(): [`FeatureFlagFn`](../modules.md#featureflagfn)

#### Returns

[`FeatureFlagFn`](../modules.md#featureflagfn)

#### Implementation of

Provider.value

#### Defined in

[feature-toggle/src/providers/feature-flag-action.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/089fc2dc0/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L23)
