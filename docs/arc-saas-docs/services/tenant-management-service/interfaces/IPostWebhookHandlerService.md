[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / IPostWebhookHandlerService

# Interface: IPostWebhookHandlerService<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ResourceProvisionedWebhookPayload`](../modules.md#resourceprovisionedwebhookpayload) |

## Table of contents

### Methods

- [postWebhookHandler](IPostWebhookHandlerService.md#postwebhookhandler)

## Methods

### postWebhookHandler

▸ **postWebhookHandler**(`dto`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dto` | `T` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/types/i-post-webhook-handler-service.interface.ts:6](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/types/i-post-webhook-handler-service.interface.ts#L6)
