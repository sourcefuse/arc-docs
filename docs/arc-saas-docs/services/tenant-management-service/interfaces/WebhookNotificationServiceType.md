[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / WebhookNotificationServiceType

# Interface: WebhookNotificationServiceType

## Implemented by

- [`NotificationService`](../classes/NotificationService.md)

## Table of contents

### Methods

- [send](WebhookNotificationServiceType.md#send)

## Methods

### send

▸ **send**<`T`\>(`email`, `type`, `data`, `token`): `Promise`<`void`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `email` | `string` |
| `type` | [`NotificationType`](../enums/NotificationType.md) |
| `data` | `T` |
| `token` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-management-service/src/types/webhook-payload.type.ts:38](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/types/webhook-payload.type.ts#L38)
