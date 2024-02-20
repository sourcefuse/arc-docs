[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / FeatureHandlerService

# Class: FeatureHandlerService

## Table of contents

### Constructors

- [constructor](FeatureHandlerService.md#constructor)

### Properties

- [getHandlers](FeatureHandlerService.md#gethandlers)

### Methods

- [findHandler](FeatureHandlerService.md#findhandler)
- [handle](FeatureHandlerService.md#handle)

## Constructors

### constructor

• **new FeatureHandlerService**(`getHandlers`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `getHandlers` | `Getter`<[`FeatureHandler`](../interfaces/FeatureHandler.md)[]\> |

#### Defined in

[packages/feature-toggle/src/services/feature-handler-service.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/services/feature-handler-service.ts#L12)

## Properties

### getHandlers

• `Private` **getHandlers**: `Getter`<[`FeatureHandler`](../interfaces/FeatureHandler.md)[]\>

#### Defined in

[packages/feature-toggle/src/services/feature-handler-service.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/services/feature-handler-service.ts#L14)

## Methods

### findHandler

▸ **findHandler**(`handlerName`): `Promise`<`undefined` \| [`FeatureHandler`](../interfaces/FeatureHandler.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `handlerName` | `string` |

#### Returns

`Promise`<`undefined` \| [`FeatureHandler`](../interfaces/FeatureHandler.md)\>

#### Defined in

[packages/feature-toggle/src/services/feature-handler-service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/services/feature-handler-service.ts#L17)

___

### handle

▸ **handle**(`featureMetadata`, `currentUser`): `Promise`<`boolean`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `featureMetadata` | [`FeatureFlagMetadata`](../interfaces/FeatureFlagMetadata.md) |
| `currentUser` | [`IAuthUserWithDisabledFeat`](../interfaces/IAuthUserWithDisabledFeat.md) |

#### Returns

`Promise`<`boolean`\>

#### Defined in

[packages/feature-toggle/src/services/feature-handler-service.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/services/feature-handler-service.ts#L22)
