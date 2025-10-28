[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / WebhookHelperService

# Class: WebhookHelperService<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`WebhookPayload`](../modules.md#webhookpayload)[``"data"``] |

## Table of contents

### Constructors

- [constructor](WebhookHelperService.md#constructor)

### Properties

- [getHandlers](WebhookHelperService.md#gethandlers)

### Methods

- [process](WebhookHelperService.md#process)

## Constructors

### constructor

• **new WebhookHelperService**<`T`\>(`getHandlers`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Object` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `getHandlers` | `Getter`<[`IWebhookHandler`](../interfaces/IWebhookHandler.md)[]\> |

#### Defined in

[services/tenant-management-service/src/services/webhook-helper.service.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/webhook-helper.service.ts#L15)

## Properties

### getHandlers

• `Private` `Readonly` **getHandlers**: `Getter`<[`IWebhookHandler`](../interfaces/IWebhookHandler.md)[]\>

#### Defined in

[services/tenant-management-service/src/services/webhook-helper.service.ts:17](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/webhook-helper.service.ts#L17)

## Methods

### process

▸ **process**(`dto`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `dto` | [`WebhookDTO`](WebhookDTO.md)<`T`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/services/webhook-helper.service.ts:20](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/webhook-helper.service.ts#L20)
