[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / CreateLeadDTO

# Class: CreateLeadDTO

## Hierarchy

- [`Lead`](Lead.md)

  ↳ **`CreateLeadDTO`**

## Table of contents

### Constructors

- [constructor](CreateLeadDTO.md#constructor)

### Properties

- [address](CreateLeadDTO.md#address)
- [addressId](CreateLeadDTO.md#addressid)
- [companyName](CreateLeadDTO.md#companyname)
- [email](CreateLeadDTO.md#email)
- [firstName](CreateLeadDTO.md#firstname)
- [id](CreateLeadDTO.md#id)
- [isValidated](CreateLeadDTO.md#isvalidated)
- [lastName](CreateLeadDTO.md#lastname)
- [tenant](CreateLeadDTO.md#tenant)

## Constructors

### constructor

• **new CreateLeadDTO**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`CreateLeadDTO`](CreateLeadDTO.md)\> |

#### Overrides

[Lead](Lead.md).[constructor](Lead.md#constructor)

#### Defined in

[services/tenant-management-service/src/models/dtos/create-lead-dto.model.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/create-lead-dto.model.ts#L20)

## Properties

### address

• `Optional` **address**: `Partial`<`Omit`<[`Address`](Address.md), ``"id"``\>\>

#### Defined in

[services/tenant-management-service/src/models/dtos/create-lead-dto.model.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/create-lead-dto.model.ts#L18)

___

### addressId

• **addressId**: `string`

#### Inherited from

[Lead](Lead.md).[addressId](Lead.md#addressid)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:66](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L66)

___

### companyName

• **companyName**: `string`

#### Inherited from

[Lead](Lead.md).[companyName](Lead.md#companyname)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:41](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L41)

___

### email

• **email**: `string`

#### Inherited from

[Lead](Lead.md).[email](Lead.md#email)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:48](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L48)

___

### firstName

• **firstName**: `string`

#### Inherited from

[Lead](Lead.md).[firstName](Lead.md#firstname)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L25)

___

### id

• **id**: `string`

#### Inherited from

[Lead](Lead.md).[id](Lead.md#id)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:17](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L17)

___

### isValidated

• **isValidated**: `boolean`

#### Inherited from

[Lead](Lead.md).[isValidated](Lead.md#isvalidated)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:57](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L57)

___

### lastName

• **lastName**: `string`

#### Inherited from

[Lead](Lead.md).[lastName](Lead.md#lastname)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:33](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L33)

___

### tenant

• **tenant**: [`Tenant`](Tenant.md)

#### Inherited from

[Lead](Lead.md).[tenant](Lead.md#tenant)

#### Defined in

[services/tenant-management-service/src/models/lead.model.ts:60](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/lead.model.ts#L60)
