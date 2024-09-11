[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / IWebhookHandler

# Interface: IWebhookHandler

## Table of contents

### Properties

- [type](IWebhookHandler.md#type)

### Methods

- [handle](IWebhookHandler.md#handle)

## Properties

### type

• **type**: [`RESOURCES_PROVISIONED`](../enums/WebhookType.md#resources_provisioned)

#### Defined in

[services/tenant-management-service/src/types/index.ts:5](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/types/index.ts#L5)

## Methods

### handle

▸ **handle**(`payload`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `payload` | [`ResourceProvisionedWebhookPayload`](../modules.md#resourceprovisionedwebhookpayload) |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/types/index.ts:6](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/types/index.ts#L6)
