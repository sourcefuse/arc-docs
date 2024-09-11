[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / LeadAuthenticator

# Class: LeadAuthenticator

Helper service for authenticating leads.

## Table of contents

### Constructors

- [constructor](LeadAuthenticator.md#constructor)

### Properties

- [cryptoHelperService](LeadAuthenticator.md#cryptohelperservice)
- [leadTokenRepository](LeadAuthenticator.md#leadtokenrepository)
- [logger](LeadAuthenticator.md#logger)
- [notificationService](LeadAuthenticator.md#notificationservice)

### Methods

- [\_generateTempToken](LeadAuthenticator.md#_generatetemptoken)
- [triggerValidationMail](LeadAuthenticator.md#triggervalidationmail)

## Constructors

### constructor

• **new LeadAuthenticator**(`notificationService`, `cryptoHelperService`, `leadTokenRepository`, `logger`)

Constructs a new instance of the LeadAuthenticatorService.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `notificationService` | [`NotificationService`](NotificationService.md) | Service for sending notifications. |
| `cryptoHelperService` | [`CryptoHelperService`](CryptoHelperService.md) | Service for cryptographic operations. |
| `leadTokenRepository` | [`LeadTokenRepository`](LeadTokenRepository.md) | - |
| `logger` | `ILogger` | Logger service for logging messages. |

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:21](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L21)

## Properties

### cryptoHelperService

• `Private` **cryptoHelperService**: [`CryptoHelperService`](CryptoHelperService.md)

Service for cryptographic operations.

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L25)

___

### leadTokenRepository

• `Private` **leadTokenRepository**: [`LeadTokenRepository`](LeadTokenRepository.md)

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:27](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L27)

___

### logger

• `Private` **logger**: `ILogger`

Logger service for logging messages.

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L29)

___

### notificationService

• `Private` **notificationService**: [`NotificationService`](NotificationService.md)

Service for sending notifications.

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:23](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L23)

## Methods

### \_generateTempToken

▸ `Private` **_generateTempToken**(`lead`, `permissions?`): `string`

The function `_generateTempToken` generates a temporary token for a lead with
specified permissions.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `lead` | [`Lead`](Lead.md) | `undefined` | The `lead` parameter is an object that represents a lead. It contains properties such as `id`, `userTenantId`, and `email`. These properties are used to generate a temporary token. |
| `permissions` | `string`[] | `[]` | The `permissions` parameter is an optional array of strings that represents the permissions associated with the lead. These permissions determine what actions the lead is allowed to perform within the system using the generated token |

#### Returns

`string`

a signed token.

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:70](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L70)

___

### triggerValidationMail

▸ **triggerValidationMail**(`lead`): `Promise`<`string`\>

The function `triggerValidationMail` sends a validation email to a lead with a
generated temporary token to validate his email id.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `lead` | [`Lead`](Lead.md) | The `lead` parameter is an object that represents a lead. It likely contains information about a potential customer or user, such as their name, email address, and other relevant details. |

#### Returns

`Promise`<`string`\>

#### Defined in

[services/tenant-management-service/src/services/lead-authenticator.service.ts:38](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/lead-authenticator.service.ts#L38)
