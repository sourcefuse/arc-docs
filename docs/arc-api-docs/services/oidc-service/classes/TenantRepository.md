[@sourceloop/oidc-service](../README.md) / [Exports](../modules.md) / TenantRepository

# Class: TenantRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Tenant`](Tenant.md), typeof [`id`](Tenant.md#id)\>

  ↳ **`TenantRepository`**

## Table of contents

### Constructors

- [constructor](TenantRepository.md#constructor)

### Properties

- [getCurrentUser](TenantRepository.md#getcurrentuser)
- [tenantConfigRepositoryGetter](TenantRepository.md#tenantconfigrepositorygetter)
- [tenantConfigs](TenantRepository.md#tenantconfigs)

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

• **new TenantRepository**(`dataSource`, `getCurrentUser`, `tenantConfigRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `tenantConfigRepositoryGetter` | `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Tenant,
  typeof Tenant.prototype.id
\&gt;.constructor

#### Defined in

[services/oidc-service/src/repositories/tenant.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/tenant.repository.ts#L30)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/oidc-service/src/repositories/tenant.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/tenant.repository.ts#L33)

___

### tenantConfigRepositoryGetter

• `Protected` **tenantConfigRepositoryGetter**: `Getter`<[`TenantConfigRepository`](TenantConfigRepository.md)\>

#### Defined in

[services/oidc-service/src/repositories/tenant.repository.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/tenant.repository.ts#L37)

___

### tenantConfigs

• `Readonly` **tenantConfigs**: `HasManyRepositoryFactory`<[`TenantConfig`](TenantConfig.md), `undefined` \| `string`\>

#### Defined in

[services/oidc-service/src/repositories/tenant.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/oidc-service/src/repositories/tenant.repository.ts#L25)

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
