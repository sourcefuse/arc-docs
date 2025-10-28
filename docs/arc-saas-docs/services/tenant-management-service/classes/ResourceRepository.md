[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / ResourceRepository

# Class: ResourceRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`ResourceData`](../modules.md#resourcedata)[``"metadata"``] = [`ResourceData`](../modules.md#resourcedata)[``"metadata"``] |

## Hierarchy

- `DefaultTransactionalUserModifyRepository`<[`Resource`](Resource.md)<`T`\>, typeof `Resource.prototype.id`, [`ResourceRelations`](../interfaces/ResourceRelations.md)\>

  ↳ **`ResourceRepository`**

## Table of contents

### Constructors

- [constructor](ResourceRepository.md#constructor)

### Properties

- [getCurrentUser](ResourceRepository.md#getcurrentuser)
- [resource](ResourceRepository.md#resource)
- [tenant](ResourceRepository.md#tenant)
- [tenantRepositoryGetter](ResourceRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new ResourceRepository**<`T`\>(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`, `resource`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Object` = { `bucket`: `string` ; `path`: `string`  } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\> |
| `resource` | typeof `Entity` & { `prototype`: [`Resource`](Resource.md)<`T`\>  } |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  Resource&lt;T\&gt;,
  typeof Resource.prototype.id,
  ResourceRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/resource.repository.ts#L30)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:34](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/resource.repository.ts#L34)

___

### resource

• `Private` `Readonly` **resource**: typeof `Entity` & { `prototype`: [`Resource`](Resource.md)<`T`\>  }

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:38](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/resource.repository.ts#L38)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/resource.repository.ts#L25)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)<[`Tenant`](Tenant.md)\>\>

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:36](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/resource.repository.ts#L36)
