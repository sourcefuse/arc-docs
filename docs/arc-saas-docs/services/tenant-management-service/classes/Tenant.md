[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / Tenant

# Class: Tenant

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Tenant`**

## Table of contents

### Constructors

- [constructor](Tenant.md#constructor)

### Properties

- [addressId](Tenant.md#addressid)
- [contacts](Tenant.md#contacts)
- [domains](Tenant.md#domains)
- [id](Tenant.md#id)
- [key](Tenant.md#key)
- [leadId](Tenant.md#leadid)
- [name](Tenant.md#name)
- [resources](Tenant.md#resources)
- [spocUserId](Tenant.md#spocuserid)
- [status](Tenant.md#status)

## Constructors

### constructor

• **new Tenant**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Tenant`](Tenant.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:95](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L95)

## Properties

### addressId

• **addressId**: `string`

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:93](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L93)

___

### contacts

• **contacts**: [`Contact`](Contact.md)[]

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:75](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L75)

___

### domains

• **domains**: `string`[]

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:70](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L70)

___

### id

• **id**: `string`

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:21](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L21)

___

### key

• **key**: `string`

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:51](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L51)

___

### leadId

• `Optional` **leadId**: `string`

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:87](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L87)

___

### name

• **name**: `string`

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:28](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L28)

___

### resources

• **resources**: [`Resource`](Resource.md)<{ `bucket`: `string` ; `path`: `string`  }\>[]

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:80](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L80)

___

### spocUserId

• `Optional` **spocUserId**: `string`

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:59](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L59)

___

### status

• **status**: [`TenantStatus`](../enums/TenantStatus.md)

#### Defined in

[services/tenant-management-service/src/models/tenant.model.ts:39](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/tenant.model.ts#L39)
