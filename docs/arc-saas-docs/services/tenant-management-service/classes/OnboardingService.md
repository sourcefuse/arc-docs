[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / OnboardingService

# Class: OnboardingService

Helper service for onboarding tenants.

## Table of contents

### Constructors

- [constructor](OnboardingService.md#constructor)

### Properties

- [addressRepository](OnboardingService.md#addressrepository)
- [contactRepository](OnboardingService.md#contactrepository)
- [leadAuthenticator](OnboardingService.md#leadauthenticator)
- [leadRepository](OnboardingService.md#leadrepository)
- [logger](OnboardingService.md#logger)
- [tenantRepository](OnboardingService.md#tenantrepository)

### Methods

- [addLead](OnboardingService.md#addlead)
- [onboard](OnboardingService.md#onboard)
- [onboardForLead](OnboardingService.md#onboardforlead)

## Constructors

### constructor

• **new OnboardingService**(`leadRepository`, `tenantRepository`, `contactRepository`, `addressRepository`, `leadAuthenticator`, `logger`)

Constructs a new instance of the OnboardingService.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `leadRepository` | [`LeadRepository`](LeadRepository.md) | Repository for managing leads. |
| `tenantRepository` | [`TenantRepository`](TenantRepository.md) | Repository for managing tenants. |
| `contactRepository` | [`ContactRepository`](ContactRepository.md) | Repository for managing contacts. |
| `addressRepository` | [`AddressRepository`](AddressRepository.md) | Repository for managing addresses. |
| `leadAuthenticator` | [`LeadAuthenticator`](LeadAuthenticator.md) | Service for authenticating leads. |
| `logger` | `ILogger` | Logger service for logging messages. |

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:32](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L32)

## Properties

### addressRepository

• `Private` **addressRepository**: [`AddressRepository`](AddressRepository.md)

Repository for managing addresses.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:40](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L40)

___

### contactRepository

• `Private` **contactRepository**: [`ContactRepository`](ContactRepository.md)

Repository for managing contacts.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:38](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L38)

___

### leadAuthenticator

• `Private` **leadAuthenticator**: [`LeadAuthenticator`](LeadAuthenticator.md)

Service for authenticating leads.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:42](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L42)

___

### leadRepository

• `Private` **leadRepository**: [`LeadRepository`](LeadRepository.md)

Repository for managing leads.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:34](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L34)

___

### logger

• `Private` **logger**: `ILogger`

Logger service for logging messages.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:44](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L44)

___

### tenantRepository

• `Private` **tenantRepository**: [`TenantRepository`](TenantRepository.md)

Repository for managing tenants.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:36](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L36)

## Methods

### addLead

▸ **addLead**(`lead`): `Promise`<{ `id`: `string` = newLead.id; `key`: `string`  }\>

The addLead function creates a new lead, triggers a validation email, and
returns the new lead.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `lead` | `Omit`<[`CreateLeadDTO`](CreateLeadDTO.md), ``"id"`` \| ``"addressId"`` \| ``"isValidated"``\> | The `lead` parameter is an object of type `Lead` with the `id` property omitted. |

#### Returns

`Promise`<{ `id`: `string` = newLead.id; `key`: `string`  }\>

The `addLead` function is returning the newly created lead object.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:53](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L53)

___

### onboard

▸ **onboard**(`dto`, `lead?`): `Promise`<[`Tenant`](Tenant.md)\>

The `setupTenant` function creates a new tenant with the provided information and an optional lead,
and returns the created tenant.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dto` | [`TenantOnboardDTO`](TenantOnboardDTO.md) | The `dto` parameter is an object of type `TenantOnboardDTO` which contains the necessary information to onboard a new tenant. It includes properties such as `key`, `country`, `address`, `city`, `state`, `zip`, and `name`. |
| `lead?` | [`Lead`](Lead.md) | The `lead` parameter is an optional parameter of type `Lead`. It represents the lead associated with the tenant being onboarded. If a lead is provided, their information will be used to create a contact for the tenant. If no lead is provided, the contact will not be created. |

#### Returns

`Promise`<[`Tenant`](Tenant.md)\>

a Promise that resolves to a Tenant object.

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:143](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L143)

___

### onboardForLead

▸ **onboardForLead**(`dto`, `lead`): `Promise`<[`Tenant`](Tenant.md)\>

The startOnboarding function checks if a lead user exists and is validated, and
if not, updates the lead user's validation status and triggers tenant creation.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `dto` | `Omit`<[`TenantOnboardDTO`](TenantOnboardDTO.md), ``"contact"``\> | - |
| `lead` | [`LeadUser`](../modules.md#leaduser) | The `lead` parameter is an object of type `LeadUser`. It represents a lead user who is going through the onboarding process. |

#### Returns

`Promise`<[`Tenant`](Tenant.md)\>

#### Defined in

[services/tenant-management-service/src/services/onboarding.service.ts:97](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/onboarding.service.ts#L97)
