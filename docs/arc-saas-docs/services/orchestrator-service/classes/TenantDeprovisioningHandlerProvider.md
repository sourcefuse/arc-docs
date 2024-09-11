[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / TenantDeprovisioningHandlerProvider

# Class: TenantDeprovisioningHandlerProvider

## Implements

- `Provider`<[`TenantDeprovisioningHandler`](../modules.md#tenantdeprovisioninghandler)\>

## Table of contents

### Constructors

- [constructor](TenantDeprovisioningHandlerProvider.md#constructor)

### Methods

- [handler](TenantDeprovisioningHandlerProvider.md#handler)
- [value](TenantDeprovisioningHandlerProvider.md#value)

## Constructors

### constructor

• **new TenantDeprovisioningHandlerProvider**()

#### Defined in

[services/tenant-deprovisioning-handler.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deprovisioning-handler.service.ts#L12)

## Methods

### handler

▸ `Private` **handler**(`body`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-deprovisioning-handler.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deprovisioning-handler.service.ts#L18)

___

### value

▸ **value**(): (`body`: `AnyObject`) => `Promise`<`void`\>

#### Returns

`fn`

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `AnyObject` |

##### Returns

`Promise`<`void`\>

#### Implementation of

Provider.value

#### Defined in

[services/tenant-deprovisioning-handler.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deprovisioning-handler.service.ts#L14)
