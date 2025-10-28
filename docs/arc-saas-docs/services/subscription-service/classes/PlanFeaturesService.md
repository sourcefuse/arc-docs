[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PlanFeaturesService

# Class: PlanFeaturesService

## Table of contents

### Constructors

- [constructor](PlanFeaturesService.md#constructor)

### Properties

- [featureRepository](PlanFeaturesService.md#featurerepository)
- [featureValuesRepository](PlanFeaturesService.md#featurevaluesrepository)
- [planRepository](PlanFeaturesService.md#planrepository)

### Methods

- [planFeatures](PlanFeaturesService.md#planfeatures)
- [updatePlanFeatures](PlanFeaturesService.md#updateplanfeatures)

## Constructors

### constructor

• **new PlanFeaturesService**(`planRepository`, `featureValuesRepository`, `featureRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `planRepository` | [`PlanRepository`](PlanRepository.md)<[`Plan`](Plan.md)\> |
| `featureValuesRepository` | `FeatureValuesRepository` |
| `featureRepository` | `FeatureRepository` |

#### Defined in

[services/subscription-service/src/services/plan-features-helper.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/plan-features-helper.service.ts#L12)

## Properties

### featureRepository

• **featureRepository**: `FeatureRepository`

#### Defined in

[services/subscription-service/src/services/plan-features-helper.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/plan-features-helper.service.ts#L18)

___

### featureValuesRepository

• `Private` `Readonly` **featureValuesRepository**: `FeatureValuesRepository`

#### Defined in

[services/subscription-service/src/services/plan-features-helper.service.ts:16](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/plan-features-helper.service.ts#L16)

___

### planRepository

• `Private` `Readonly` **planRepository**: [`PlanRepository`](PlanRepository.md)<[`Plan`](Plan.md)\>

#### Defined in

[services/subscription-service/src/services/plan-features-helper.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/plan-features-helper.service.ts#L14)

## Methods

### planFeatures

▸ **planFeatures**(`id`): `Promise`<{ `billingCycleId`: `string` ; `currencyId`: `string` ; `description?`: `string` ; `features`: `DataObject`<`Feature` & { `value`: `FeatureValues`  }\>[] = features; `id`: `string` ; `metaData?`: `object` ; `name`: `string` ; `price`: `number` ; `size?`: `string` ; `tier`: `string`  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |

#### Returns

`Promise`<{ `billingCycleId`: `string` ; `currencyId`: `string` ; `description?`: `string` ; `features`: `DataObject`<`Feature` & { `value`: `FeatureValues`  }\>[] = features; `id`: `string` ; `metaData?`: `object` ; `name`: `string` ; `price`: `number` ; `size?`: `string` ; `tier`: `string`  }\>

#### Defined in

[services/subscription-service/src/services/plan-features-helper.service.ts:21](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/plan-features-helper.service.ts#L21)

___

### updatePlanFeatures

▸ **updatePlanFeatures**(`id`, `featureValues`): `Promise`<`FeatureValues`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `featureValues` | `Partial`<`FeatureValues`\>[] |

#### Returns

`Promise`<`FeatureValues`[]\>

#### Defined in

[services/subscription-service/src/services/plan-features-helper.service.ts:68](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/services/plan-features-helper.service.ts#L68)
