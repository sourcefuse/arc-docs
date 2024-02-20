[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / FeatureFlagActionProvider

# Class: FeatureFlagActionProvider

## Implements

- `Provider`<[`FeatureFlagFn`](../modules.md#featureflagfn)\>

## Table of contents

### Constructors

- [constructor](FeatureFlagActionProvider.md#constructor)

### Properties

- [filterStrategyMapping](FeatureFlagActionProvider.md#filterstrategymapping)
- [getMetadata](FeatureFlagActionProvider.md#getmetadata)
- [handlerService](FeatureFlagActionProvider.md#handlerservice)
- [user](FeatureFlagActionProvider.md#user)

### Methods

- [action](FeatureFlagActionProvider.md#action)
- [getStrategy](FeatureFlagActionProvider.md#getstrategy)
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

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L36)

## Properties

### filterStrategyMapping

• **filterStrategyMapping**: { `filterType`: [`FilterType`](../modules.md#filtertype) ; `strategy`: [`FilterStrategy`](../interfaces/FilterStrategy.md)  }[]

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L23)

___

### getMetadata

• `Private` `Readonly` **getMetadata**: `Getter`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)\>

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L38)

___

### handlerService

• `Private` `Optional` `Readonly` **handlerService**: [`FeatureHandlerService`](FeatureHandlerService.md)

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L42)

___

### user

• `Private` `Optional` `Readonly` **user**: [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md)

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L40)

## Methods

### action

▸ **action**(): `Promise`<`boolean`\>

#### Returns

`Promise`<`boolean`\>

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L48)

___

### getStrategy

▸ **getStrategy**(`operator`): [`FilterStrategy`](../interfaces/FilterStrategy.md)

#### Parameters

| Name | Type |
| :------ | :------ |
| `operator` | `undefined` \| [`FilterType`](../modules.md#filtertype) |

#### Returns

[`FilterStrategy`](../interfaces/FilterStrategy.md)

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L94)

___

### value

▸ **value**(): [`FeatureFlagFn`](../modules.md#featureflagfn)

#### Returns

[`FeatureFlagFn`](../modules.md#featureflagfn)

#### Implementation of

Provider.value

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L44)
