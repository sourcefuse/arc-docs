[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / IProvisioningService

# Interface: IProvisioningService<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`SubscriptionDTO`](../classes/SubscriptionDTO.md) |

## Implemented by

- [`ProvisioningService`](../classes/ProvisioningService.md)

## Table of contents

### Methods

- [provisionTenant](IProvisioningService.md#provisiontenant)

## Methods

### provisionTenant

▸ **provisionTenant**(`tenant`, `dto`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `tenant` | [`Tenant`](../classes/Tenant.md) |
| `dto` | `T` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/types/i-provisioning-service.interface.ts:13](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/types/i-provisioning-service.interface.ts#L13)
