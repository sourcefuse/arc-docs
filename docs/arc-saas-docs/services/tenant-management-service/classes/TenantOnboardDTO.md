[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / TenantOnboardDTO

# Class: TenantOnboardDTO

## Hierarchy

- `Model`

  ↳ **`TenantOnboardDTO`**

## Table of contents

### Constructors

- [constructor](TenantOnboardDTO.md#constructor)

### Properties

- [address](TenantOnboardDTO.md#address)
- [city](TenantOnboardDTO.md#city)
- [contact](TenantOnboardDTO.md#contact)
- [country](TenantOnboardDTO.md#country)
- [domains](TenantOnboardDTO.md#domains)
- [key](TenantOnboardDTO.md#key)
- [name](TenantOnboardDTO.md#name)
- [state](TenantOnboardDTO.md#state)
- [zip](TenantOnboardDTO.md#zip)

## Constructors

### constructor

• **new TenantOnboardDTO**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`TenantOnboardDTO`](TenantOnboardDTO.md)\> |

#### Overrides

Model.constructor

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:78](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L78)

## Properties

### address

• `Optional` **address**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L29)

___

### city

• `Optional` **city**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:35](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L35)

___

### contact

• **contact**: `Omit`<[`Contact`](Contact.md), ``"id"`` \| ``"tenantId"``\>

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:17](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L17)

___

### country

• `Optional` **country**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:53](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L53)

___

### domains

• **domains**: `string`[]

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:76](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L76)

___

### key

• **key**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:63](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L63)

___

### name

• **name**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:23](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L23)

___

### state

• `Optional` **state**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:41](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L41)

___

### zip

• `Optional` **zip**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts:47](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/tenant-onboard-dto.model.ts#L47)
