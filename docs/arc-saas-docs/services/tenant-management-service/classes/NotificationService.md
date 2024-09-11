[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / NotificationService

# Class: NotificationService

Service for handling notifications.
This service is responsible for sending notifications using the NotificationProxyService.
It uses the TemplateService to retrieve and compile the notification templates.

## Implements

- [`WebhookNotificationServiceType`](../interfaces/WebhookNotificationServiceType.md)

## Table of contents

### Constructors

- [constructor](NotificationService.md#constructor)

### Methods

- [send](NotificationService.md#send)

## Constructors

### constructor

• **new NotificationService**()

Constructs a new instance of the NotificationService.

#### Defined in

[services/tenant-management-service/src/services/notifications/notification.service.ts:17](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/notifications/notification.service.ts#L17)

## Methods

### send

▸ **send**<`T`\>(`email`, `type`, `data`, `token`): `Promise`<`void`\>

The `send` function sends an email notification with a given email address,
notification type, data, and authentication token.

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `email` | `string` | The email address of the recipient. |
| `type` | [`NotificationType`](../enums/NotificationType.md) | The `type` parameter is a string that represents the type of email being sent. It is used to determine which template and subject to use for the email. |
| `data` | `T` | The `data` parameter is a generic type `T` which represents the data that will be used to populate the email template. It can be any type of data, depending on the specific use case. |
| `token` | `string` | A string representing the authentication token for the user sending the email. |

#### Returns

`Promise`<`void`\>

the result of the createNotification api call.

#### Implementation of

[WebhookNotificationServiceType](../interfaces/WebhookNotificationServiceType.md).[send](../interfaces/WebhookNotificationServiceType.md#send)

#### Defined in

[services/tenant-management-service/src/services/notifications/notification.service.ts:32](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/notifications/notification.service.ts#L32)
