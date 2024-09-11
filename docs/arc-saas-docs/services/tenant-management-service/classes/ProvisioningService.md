[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / ProvisioningService

# Class: ProvisioningService<T\>

Service for provisioning tenants.

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`SubscriptionDTO`](SubscriptionDTO.md) |

## Implements

- [`IProvisioningService`](../interfaces/IProvisioningService.md)<`T`\>

## Table of contents

### Constructors

- [constructor](ProvisioningService.md#constructor)

### Properties

- [cryptoHelperService](ProvisioningService.md#cryptohelperservice)
- [eventConnector](ProvisioningService.md#eventconnector)
- [logger](ProvisioningService.md#logger)
- [tenantRepository](ProvisioningService.md#tenantrepository)
- [webhookSecretRepo](ProvisioningService.md#webhooksecretrepo)

### Methods

- [provisionTenant](ProvisioningService.md#provisiontenant)

## Constructors

### constructor

• **new ProvisioningService**<`T`\>(`cryptoHelperService`, `eventConnector`, `webhookSecretRepo`, `tenantRepository`, `logger`)

Constructs a new instance of the ProvisioningService.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`SubscriptionDTO`](SubscriptionDTO.md)<`T`\> |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `cryptoHelperService` | [`CryptoHelperService`](CryptoHelperService.md) | Service for cryptographic operations. |
| `eventConnector` | [`EventConnector`](EventConnector.md) | Event Connector provided by consumer to invoke publish on. |
| `webhookSecretRepo` | [`WebhookSecretRepository`](WebhookSecretRepository.md) | Repository for webhook secrets. |
| `tenantRepository` | [`TenantRepository`](TenantRepository.md) | - |
| `logger` | `ILogger` | Logger service for logging messages. |

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:26](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L26)

## Properties

### cryptoHelperService

• `Private` **cryptoHelperService**: [`CryptoHelperService`](CryptoHelperService.md)

Service for cryptographic operations.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:28](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L28)

___

### eventConnector

• `Private` **eventConnector**: [`EventConnector`](EventConnector.md)

Event Connector provided by consumer to invoke publish on.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:30](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L30)

___

### logger

• `Private` **logger**: `ILogger`

Logger service for logging messages.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:36](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L36)

___

### tenantRepository

• `Private` **tenantRepository**: [`TenantRepository`](TenantRepository.md)

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:34](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L34)

___

### webhookSecretRepo

• `Private` **webhookSecretRepo**: [`WebhookSecretRepository`](WebhookSecretRepository.md)

Repository for webhook secrets.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:32](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L32)

## Methods

### provisionTenant

▸ **provisionTenant**(`tenant`, `subscription`): `Promise`<`void`\>

The `provisionTenant` function provisions a new tenant by generating a temporary token, retrieving
the subscription details, generating a random HMAC secret, starting a build process, and storing the
webhook secret and build context to later verify the webhook callback.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `tenant` | [`TenantWithRelations`](../modules.md#tenantwithrelations) | The `tenant` parameter is an object that represents a tenant. It likely contains information such as the tenant's ID, name, and other relevant details. |
| `subscription` | `T` | The `subscription` parameter is an object that contains the details of the subscription opted by the tenant. |

#### Returns

`Promise`<`void`\>

#### Implementation of

[IProvisioningService](../interfaces/IProvisioningService.md).[provisionTenant](../interfaces/IProvisioningService.md#provisiontenant)

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:48](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/provisioning.service.ts#L48)
