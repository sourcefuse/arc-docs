[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / Resource

# Class: Resource<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ResourceData`](../modules.md#resourcedata)[``"metadata"``] = [`ResourceData`](../modules.md#resourcedata)[``"metadata"``] |

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Resource`**

## Implements

- [`ResourceData`](../modules.md#resourcedata)

## Table of contents

### Constructors

- [constructor](Resource.md#constructor)

### Properties

- [externalIdentifier](Resource.md#externalidentifier)
- [id](Resource.md#id)
- [metadata](Resource.md#metadata)
- [tenantId](Resource.md#tenantid)
- [type](Resource.md#type)

## Constructors

### constructor

• **new Resource**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Object` = { `bucket`: `string` ; `path`: `string`  } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Resource`](Resource.md)<`T`\>\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:58](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/resource.model.ts#L58)

## Properties

### externalIdentifier

• **externalIdentifier**: `string`

#### Implementation of

ResourceData.externalIdentifier

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:30](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/resource.model.ts#L30)

___

### id

• **id**: `string`

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:21](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/resource.model.ts#L21)

___

### metadata

• **metadata**: `T`

#### Implementation of

ResourceData.metadata

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:46](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/resource.model.ts#L46)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:56](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/resource.model.ts#L56)

___

### type

• **type**: [`BUCKET`](../enums/ResourceTypes.md#bucket)

#### Implementation of

ResourceData.type

#### Defined in

[services/tenant-management-service/src/models/resource.model.ts:38](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/resource.model.ts#L38)
