[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / Plan

# Class: Plan

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Plan`**

## Table of contents

### Constructors

- [constructor](Plan.md#constructor)

### Properties

- [billingCycleId](Plan.md#billingcycleid)
- [currencyId](Plan.md#currencyid)
- [description](Plan.md#description)
- [id](Plan.md#id)
- [metaData](Plan.md#metadata)
- [name](Plan.md#name)
- [planItems](Plan.md#planitems)
- [price](Plan.md#price)
- [tier](Plan.md#tier)

## Constructors

### constructor

• **new Plan**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Plan`](Plan.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/subscription-service/src/models/plan.model.ts:75](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L75)

## Properties

### billingCycleId

• **billingCycleId**: `string`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:68](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L68)

___

### currencyId

• **currencyId**: `string`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:73](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L73)

___

### description

• **description**: `string`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:32](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L32)

___

### id

• **id**: `string`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:18](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L18)

___

### metaData

• `Optional` **metaData**: `object`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:55](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L55)

___

### name

• **name**: `string`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:25](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L25)

___

### planItems

• **planItems**: [`PlanItem`](PlanItem.md)

#### Defined in

[services/subscription-service/src/models/plan.model.ts:57](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L57)

___

### price

• **price**: `number`

#### Defined in

[services/subscription-service/src/models/plan.model.ts:49](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L49)

___

### tier

• **tier**: [`PlanTier`](../enums/PlanTier.md)

#### Defined in

[services/subscription-service/src/models/plan.model.ts:43](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/models/plan.model.ts#L43)
