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

- [codeBuildService](ProvisioningService.md#codebuildservice)
- [cryptoHelperService](ProvisioningService.md#cryptohelperservice)
- [logger](ProvisioningService.md#logger)
- [pipelines](ProvisioningService.md#pipelines)
- [tenantRepository](ProvisioningService.md#tenantrepository)
- [webhookSecretRepo](ProvisioningService.md#webhooksecretrepo)

### Methods

- [\_buildEnvVars](ProvisioningService.md#_buildenvvars)
- [\_sanitizeTenantName](ProvisioningService.md#_sanitizetenantname)
- [provisionTenant](ProvisioningService.md#provisiontenant)

## Constructors

### constructor

• **new ProvisioningService**<`T`\>(`cryptoHelperService`, `codeBuildService`, `webhookSecretRepo`, `tenantRepository`, `logger`, `pipelines`)

Constructs a new instance of the ProvisioningService.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`SubscriptionDTO`](SubscriptionDTO.md)<`T`\> |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `cryptoHelperService` | [`CryptoHelperService`](CryptoHelperService.md) | Service for cryptographic operations. |
| `codeBuildService` | [`CodeBuildService`](CodeBuildService.md) | Service for AWS CodeBuild related operations. |
| `webhookSecretRepo` | [`WebhookSecretRepository`](WebhookSecretRepository.md) | Repository for webhook secrets. |
| `tenantRepository` | [`TenantRepository`](TenantRepository.md) | - |
| `logger` | `ILogger` | Logger service for logging messages. |
| `pipelines` | `Record`<[`PlanTier`](../enums/PlanTier.md), `string`\> | - |

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:25](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L25)

## Properties

### codeBuildService

• `Private` **codeBuildService**: [`CodeBuildService`](CodeBuildService.md)

Service for AWS CodeBuild related operations.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:29](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L29)

___

### cryptoHelperService

• `Private` **cryptoHelperService**: [`CryptoHelperService`](CryptoHelperService.md)

Service for cryptographic operations.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:27](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L27)

___

### logger

• `Private` **logger**: `ILogger`

Logger service for logging messages.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:35](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L35)

___

### pipelines

• `Private` **pipelines**: `Record`<[`PlanTier`](../enums/PlanTier.md), `string`\>

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:37](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L37)

___

### tenantRepository

• `Private` **tenantRepository**: [`TenantRepository`](TenantRepository.md)

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:33](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L33)

___

### webhookSecretRepo

• `Private` **webhookSecretRepo**: [`WebhookSecretRepository`](WebhookSecretRepository.md)

Repository for webhook secrets.

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:31](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L31)

## Methods

### \_buildEnvVars

▸ `Private` **_buildEnvVars**(`planItems`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `planItems` | [`IPlanItem`](../interfaces/IPlanItem.md)[] |

#### Returns

`Object`

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:113](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L113)

___

### \_sanitizeTenantName

▸ `Private` **_sanitizeTenantName**(`name`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `name` | `string` |

#### Returns

`string`

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:123](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L123)

___

### provisionTenant

▸ **provisionTenant**(`tenant`, `dto`): `Promise`<`void`\>

The `provisionTenant` function provisions a new tenant by generating a temporary token, retrieving
the subscription details, generating a random HMAC secret, starting a build process, and storing the
webhook secret and build context to later verify the webhook callback.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `tenant` | [`TenantWithRelations`](../modules.md#tenantwithrelations) | The `tenant` parameter is an object that represents a tenant. It likely contains information such as the tenant's ID, name, and other relevant details. |
| `dto` | `T` | - |

#### Returns

`Promise`<`void`\>

#### Implementation of

[IProvisioningService](../interfaces/IProvisioningService.md).[provisionTenant](../interfaces/IProvisioningService.md#provisiontenant)

#### Defined in

[services/tenant-management-service/src/services/provisioning.service.ts:49](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/provisioning.service.ts#L49)
