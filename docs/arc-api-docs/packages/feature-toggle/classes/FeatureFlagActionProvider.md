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

- [\_getFeatureList](FeatureFlagActionProvider.md#_getfeaturelist)
- [\_handleCustomFeatureLogic](FeatureFlagActionProvider.md#_handlecustomfeaturelogic)
- [\_isFeatureAllowed](FeatureFlagActionProvider.md#_isfeatureallowed)
- [\_shouldSkipFeatureCheck](FeatureFlagActionProvider.md#_shouldskipfeaturecheck)
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

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L36)

## Properties

### filterStrategyMapping

• **filterStrategyMapping**: { `filterType`: [`FilterType`](../modules.md#filtertype) ; `strategy`: [`FilterStrategy`](../interfaces/FilterStrategy.md)  }[]

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L23)

___

### getMetadata

• `Private` `Readonly` **getMetadata**: `Getter`<[`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md)\>

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L38)

___

### handlerService

• `Private` `Optional` `Readonly` **handlerService**: [`FeatureHandlerService`](FeatureHandlerService.md)

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L42)

___

### user

• `Private` `Optional` `Readonly` **user**: [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md)

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L40)

## Methods

### \_getFeatureList

▸ `Private` **_getFeatureList**(`metadata`): `string`[]

The function `_getFeatureList` returns an array containing the feature key from the provided
`FeatureFlagMetadata` object.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `metadata` | [`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md) | The `metadata` parameter is of type `FeatureFlagMetadata`, which likely contains information about a feature flag such as its key, description, status, and any other relevant data related to feature flags. |

#### Returns

`string`[]

An array of strings containing the feature key from the provided FeatureFlagMetadata
object.

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L97)

___

### \_handleCustomFeatureLogic

▸ `Private` **_handleCustomFeatureLogic**(`metadata`): `boolean` \| `Promise`<`boolean`\>

The function `_handleCustomFeatureLogic` checks for a handler in the metadata options and calls
the handler service if available.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `metadata` | [`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md) | The `metadata` parameter is of type `FeatureFlagMetadata` and contains information about a specific feature flag, such as its options and configuration. |

#### Returns

`boolean` \| `Promise`<`boolean`\>

The method `_handleCustomFeatureLogic` is returning a boolean value or a Promise that
resolves to a boolean value. If the `handler` is defined in the `metadata.options` and `this.user`
is truthy, then it calls the `handle` method of `handlerService` with the `metadata` and
`this.user` as arguments. If `handlerService` is not null or

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L145)

___

### \_isFeatureAllowed

▸ `Private` **_isFeatureAllowed**(`featureList`, `disabledFeatures`, `metadata`): `boolean`

The function `_isFeatureAllowed` determines if a feature is allowed based on a list of features,
disabled features, and feature flag metadata.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `featureList` | `string`[] | The `featureList` parameter is an array of strings that contains the list of features that you want to check for permission or enablement. |
| `disabledFeatures` | `string`[] | The `disabledFeatures` parameter is an array of strings that contains the list of features that are currently disabled or not allowed. |
| `metadata` | [`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md) | The `metadata` parameter in the `_isFeatureAllowed` function likely contains information related to feature flags, such as the options and operator used for filtering the feature list. It seems to be of type `FeatureFlagMetadata`. |

#### Returns

`boolean`

A boolean value is being returned from the `_isFeatureAllowed` function.

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L125)

___

### \_shouldSkipFeatureCheck

▸ `Private` **_shouldSkipFeatureCheck**(`featureList`): `boolean`

The function `_shouldSkipFeatureCheck` checks if the first element of a feature list is '*' and
returns a boolean value.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `featureList` | `string`[] | FeatureList is an array of strings that contains a list of features. |

#### Returns

`boolean`

a boolean value, which is determined by whether the length of the `featureList` array is
greater than 0 and the first element of the array is equal to '*'.

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:109](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L109)

___

### action

▸ **action**(): `Promise`<`boolean`\>

This TypeScript function checks if a user is allowed to access certain features based on feature
flags and user settings.

#### Returns

`Promise`<`boolean`\>

The `action` function returns a `Promise<boolean>`. The function first retrieves metadata
using `this.getMetadata()`, then checks if the metadata and user exist. If either is missing, it
returns `true`. It then proceeds to get a list of features, check if feature checking should be
skipped, and verify if the user has disabled features. If disabled features are not available, an
`InternalServerError

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L57)

___

### getStrategy

▸ **getStrategy**(`operator`): [`FilterStrategy`](../interfaces/FilterStrategy.md)

The `getStrategy` function returns a filtering strategy based on the specified `operator` or
defaults to an OR strategy.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `operator` | `undefined` \| [`FilterType`](../modules.md#filtertype) | The `operator` parameter in the `getStrategy` function is of type `FilterType \| undefined`. It is used to determine the filtering strategy based on the specified `FilterType`. If no `operator` is provided, the function will default to using the OR filter strategy. |

#### Returns

[`FilterStrategy`](../interfaces/FilterStrategy.md)

The `getStrategy` function returns a filtering strategy based on the `operator` specified
in the decorator. It uses the `filterStrategyMapping` array to map the `FilterType` to the
corresponding `FilterStrategy`. If the specified `operator` is found in the mapping, the
corresponding strategy is returned. If not found, it defaults to using the `OrFilterStrategy`.

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:167](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L167)

___

### value

▸ **value**(): [`FeatureFlagFn`](../modules.md#featureflagfn)

#### Returns

[`FeatureFlagFn`](../modules.md#featureflagfn)

#### Implementation of

Provider.value

#### Defined in

[packages/feature-toggle/src/providers/feature-flag-action.provider.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/feature-toggle/src/providers/feature-flag-action.provider.ts#L44)
