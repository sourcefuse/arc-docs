[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / TenantRepository

# Class: TenantRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Tenant`](Tenant.md), typeof [`id`](Tenant.md#id), [`TenantRelations`](../interfaces/TenantRelations.md)\>

  ↳ **`TenantRepository`**

## Table of contents

### Constructors

- [constructor](TenantRepository.md#constructor)

### Properties

- [getCurrentUser](TenantRepository.md#getcurrentuser)
- [groupRepositoryGetter](TenantRepository.md#grouprepositorygetter)
- [groups](TenantRepository.md#groups)
- [roleRepositoryGetter](TenantRepository.md#rolerepositorygetter)
- [roles](TenantRepository.md#roles)
- [tenantConfigRepositoryGetter](TenantRepository.md#tenantconfigrepositorygetter)
- [tenantConfigs](TenantRepository.md#tenantconfigs)
- [userRepositoryGetter](TenantRepository.md#userrepositorygetter)
- [userTenantRepositoryGetter](TenantRepository.md#usertenantrepositorygetter)
- [userTenants](TenantRepository.md#usertenants)
- [users](TenantRepository.md#users)

### Methods

- [create](TenantRepository.md#create)
- [createAll](TenantRepository.md#createall)
- [replaceById](TenantRepository.md#replacebyid)
- [save](TenantRepository.md#save)
- [update](TenantRepository.md#update)
- [updateAll](TenantRepository.md#updateall)
- [updateById](TenantRepository.md#updatebyid)

## Constructors

### constructor

• **new TenantRepository**(`dataSource`, `tenantConfigRepositoryGetter`, `userTenantRepositoryGetter`, `userRepositoryGetter`, `roleRepositoryGetter`, `groupRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantConfigRepositoryGetter` | `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `roleRepositoryGetter` | `Getter`<[`RoleRepository`](RoleRepository.md)\> |
| `groupRepositoryGetter` | `Getter`<[`GroupRepository`](GroupRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Tenant,
  typeof Tenant.prototype.id,
  TenantRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L62)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L76)

___

### groupRepositoryGetter

• `Protected` **groupRepositoryGetter**: `Getter`<[`GroupRepository`](GroupRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L74)

___

### groups

• `Readonly` **groups**: `HasManyRepositoryFactory`<[`Group`](Group.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L57)

___

### roleRepositoryGetter

• `Protected` **roleRepositoryGetter**: `Getter`<[`RoleRepository`](RoleRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L72)

___

### roles

• `Readonly` **roles**: `HasManyRepositoryFactory`<[`Role`](Role.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L52)

___

### tenantConfigRepositoryGetter

• `Protected` **tenantConfigRepositoryGetter**: `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L66)

___

### tenantConfigs

• `Readonly` **tenantConfigs**: `HasManyRepositoryFactory`<[`TenantConfig`](TenantConfig.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L37)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L70)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L68)

___

### userTenants

• `Readonly` **userTenants**: `HasManyRepositoryFactory`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L42)

___

### users

• `Readonly` **users**: `HasManyRepositoryFactory`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant.repository.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant.repository.ts#L47)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Tenant`](Tenant.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Tenant`](Tenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Tenant`](Tenant.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Tenant`](Tenant.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Tenant`](Tenant.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Tenant`](Tenant.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Tenant`](Tenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Tenant`](Tenant.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Tenant`](Tenant.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Tenant`](Tenant.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Tenant`](Tenant.md) |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`Tenant`](Tenant.md)\> |
| `where?` | `Where`<[`Tenant`](Tenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Tenant`](Tenant.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
