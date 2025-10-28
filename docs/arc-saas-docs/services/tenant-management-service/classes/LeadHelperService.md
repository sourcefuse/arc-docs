[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / LeadHelperService

# Class: LeadHelperService

## Table of contents

### Constructors

- [constructor](LeadHelperService.md#constructor)

### Properties

- [leadRepository](LeadHelperService.md#leadrepository)

### Methods

- [validateLead](LeadHelperService.md#validatelead)

## Constructors

### constructor

• **new LeadHelperService**(`leadRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `leadRepository` | [`LeadRepository`](LeadRepository.md)<[`Lead`](Lead.md)\> |

#### Defined in

[services/tenant-management-service/src/services/lead-helper.service.ts:10](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/lead-helper.service.ts#L10)

## Properties

### leadRepository

• `Private` `Readonly` **leadRepository**: [`LeadRepository`](LeadRepository.md)<[`Lead`](Lead.md)\>

#### Defined in

[services/tenant-management-service/src/services/lead-helper.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/lead-helper.service.ts#L12)

## Methods

### validateLead

▸ **validateLead**(`id`, `leadUser`): `Promise`<[`VerifyLeadResponseDTO`](VerifyLeadResponseDTO.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `string` |
| `leadUser` | [`LeadUserWithToken`](../modules.md#leaduserwithtoken) |

#### Returns

`Promise`<[`VerifyLeadResponseDTO`](VerifyLeadResponseDTO.md)\>

#### Defined in

[services/tenant-management-service/src/services/lead-helper.service.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/lead-helper.service.ts#L15)
