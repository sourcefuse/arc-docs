[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / TenantConfigRepository

# Class: TenantConfigRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`TenantConfig`](TenantConfig.md), typeof [`id`](TenantConfig.md#id), [`TenantConfigRelations`](../interfaces/TenantConfigRelations.md)\>

  ↳ **`TenantConfigRepository`**

## Table of contents

### Constructors

- [constructor](TenantConfigRepository.md#constructor)

### Properties

- [getCurrentUser](TenantConfigRepository.md#getcurrentuser)
- [tenant](TenantConfigRepository.md#tenant)
- [tenantRepositoryGetter](TenantConfigRepository.md#tenantrepositorygetter)

### Methods

- [create](TenantConfigRepository.md#create)
- [createAll](TenantConfigRepository.md#createall)
- [replaceById](TenantConfigRepository.md#replacebyid)
- [save](TenantConfigRepository.md#save)
- [update](TenantConfigRepository.md#update)
- [updateAll](TenantConfigRepository.md#updateall)
- [updateById](TenantConfigRepository.md#updatebyid)

## Constructors

### constructor

• **new TenantConfigRepository**(`dataSource`, `tenantRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `tenantRepositoryGetter` | `Getter`<[`TenantRepository`](TenantRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  TenantConfig,
  typeof TenantConfig.prototype.id,
  TenantConfigRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L28)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L34)

___

### tenant

• `Readonly` **tenant**: `BelongsToAccessor`<[`Tenant`](Tenant.md), `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L23)

___

### tenantRepositoryGetter

• `Protected` **tenantRepositoryGetter**: `Getter`<[`TenantRepository`](TenantRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/tenant-config.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/tenant-config.repository.ts#L32)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`TenantConfig`](TenantConfig.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`TenantConfig`](TenantConfig.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`TenantConfig`](TenantConfig.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`TenantConfig`](TenantConfig.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`TenantConfig`](TenantConfig.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`TenantConfig`](TenantConfig.md)[]\>

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
| `data` | `DataObject`<[`TenantConfig`](TenantConfig.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`TenantConfig`](TenantConfig.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`TenantConfig`](TenantConfig.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`TenantConfig`](TenantConfig.md)\>

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
| `entity` | [`TenantConfig`](TenantConfig.md) |
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
| `data` | `DataObject`<[`TenantConfig`](TenantConfig.md)\> |
| `where?` | `Where`<[`TenantConfig`](TenantConfig.md)\> |
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
| `data` | `DataObject`<[`TenantConfig`](TenantConfig.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
