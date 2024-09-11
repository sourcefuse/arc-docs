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
- [tenant](ResourceRepository.md#tenant)
- [tenantRepositoryGetter](ResourceRepository.md#tenantrepositorygetter)

## Constructors

### constructor

• **new ResourceRepository**<`T`\>(`dataSource`, `getCurrentUser`, `tenantRepositoryGetter`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Object` = { `bucket`: `string` ; `path`: `string`  } |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |

#### Overrides

DefaultTransactionalUserModifyRepository&lt;
  Resource&lt;T\&gt;,
  typeof Resource.prototype.id,
  ResourceRelations
\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/resource.repository.ts#L25)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionalUserModifyRepository.getCurrentUser

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/resource.repository.ts#L29)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `string`\>

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/resource.repository.ts#L20)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/tenant-management-service/src/repositories/resource.repository.ts:31](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/repositories/resource.repository.ts#L31)
