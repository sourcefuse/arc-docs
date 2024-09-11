[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / TierDetailsProvider

# Class: TierDetailsProvider

## Implements

- `Provider`<[`TierDetailsFn`](../modules.md#tierdetailsfn)\>

## Table of contents

### Constructors

- [constructor](TierDetailsProvider.md#constructor)

### Methods

- [fetchTierDetails](TierDetailsProvider.md#fetchtierdetails)
- [value](TierDetailsProvider.md#value)

## Constructors

### constructor

• **new TierDetailsProvider**()

#### Defined in

[services/tier-details.service.ts:13](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tier-details.service.ts#L13)

## Methods

### fetchTierDetails

▸ `Private` **fetchTierDetails**(`tier`): `Promise`<{ `jobIdentifier`: `string`  }\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tier` | `string` |

#### Returns

`Promise`<{ `jobIdentifier`: `string`  }\>

#### Defined in

[services/tier-details.service.ts:19](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tier-details.service.ts#L19)

___

### value

▸ **value**(): (`tier`: `string`) => `Promise`<{ `jobIdentifier`: `string`  }\>

#### Returns

`fn`

▸ (`tier`): `Promise`<{ `jobIdentifier`: `string`  }\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `tier` | `string` |

##### Returns

`Promise`<{ `jobIdentifier`: `string`  }\>

#### Implementation of

Provider.value

#### Defined in

[services/tier-details.service.ts:15](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tier-details.service.ts#L15)
