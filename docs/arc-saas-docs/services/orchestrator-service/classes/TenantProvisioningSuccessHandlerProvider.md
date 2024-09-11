[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / TenantProvisioningSuccessHandlerProvider

# Class: TenantProvisioningSuccessHandlerProvider

## Implements

- `Provider`<[`TenantProvisioningSuccessHandler`](../modules.md#tenantprovisioningsuccesshandler)\>

## Table of contents

### Constructors

- [constructor](TenantProvisioningSuccessHandlerProvider.md#constructor)

### Methods

- [handler](TenantProvisioningSuccessHandlerProvider.md#handler)
- [value](TenantProvisioningSuccessHandlerProvider.md#value)

## Constructors

### constructor

• **new TenantProvisioningSuccessHandlerProvider**()

#### Defined in

[services/tenant-provisioning-success-handler.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-success-handler.service.ts#L12)

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

[services/tenant-provisioning-success-handler.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-success-handler.service.ts#L18)

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

[services/tenant-provisioning-success-handler.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-success-handler.service.ts#L14)
