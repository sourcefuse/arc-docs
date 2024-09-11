[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / TenantProvisioningHandlerProvider

# Class: TenantProvisioningHandlerProvider

## Implements

- `Provider`<[`TenantProvisioningHandler`](../modules.md#tenantprovisioninghandler)\>

## Table of contents

### Constructors

- [constructor](TenantProvisioningHandlerProvider.md#constructor)

### Methods

- [handler](TenantProvisioningHandlerProvider.md#handler)
- [value](TenantProvisioningHandlerProvider.md#value)

## Constructors

### constructor

• **new TenantProvisioningHandlerProvider**()

#### Defined in

[services/tenant-provisioning-handler.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-handler.service.ts#L12)

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

[services/tenant-provisioning-handler.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-handler.service.ts#L18)

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

[services/tenant-provisioning-handler.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-handler.service.ts#L14)
