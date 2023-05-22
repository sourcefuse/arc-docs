[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserLevelResourceRepository

# Class: UserLevelResourceRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserLevelResource`](UserLevelResource.md), typeof [`id`](UserLevelResource.md#id)\>

  ↳ **`UserLevelResourceRepository`**

## Table of contents

### Constructors

- [constructor](UserLevelResourceRepository.md#constructor)

### Properties

- [getCurrentUser](UserLevelResourceRepository.md#getcurrentuser)
- [userTenant](UserLevelResourceRepository.md#usertenant)
- [userTenantRepositoryGetter](UserLevelResourceRepository.md#usertenantrepositorygetter)

### Methods

- [create](UserLevelResourceRepository.md#create)
- [createAll](UserLevelResourceRepository.md#createall)
- [replaceById](UserLevelResourceRepository.md#replacebyid)
- [save](UserLevelResourceRepository.md#save)
- [update](UserLevelResourceRepository.md#update)
- [updateAll](UserLevelResourceRepository.md#updateall)
- [updateById](UserLevelResourceRepository.md#updatebyid)

## Constructors

### constructor

• **new UserLevelResourceRepository**(`dataSource`, `getCurrentUser`, `userTenantRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `userTenantRepositoryGetter` | `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserLevelResource,
  typeof UserLevelResource.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/authentication-service/src/repositories/user-level-resource.repository.ts#L27)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/authentication-service/src/repositories/user-level-resource.repository.ts#L31)

___

### userTenant

• `Readonly` **userTenant**: `BelongsToAccessor`<[`UserTenant`](UserTenant.md), `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/authentication-service/src/repositories/user-level-resource.repository.ts#L22)

___

### userTenantRepositoryGetter

• `Protected` **userTenantRepositoryGetter**: `Getter`<[`UserTenantRepository`](UserTenantRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-level-resource.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/authentication-service/src/repositories/user-level-resource.repository.ts#L35)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserLevelResource`](UserLevelResource.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserLevelResource`](UserLevelResource.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserLevelResource`](UserLevelResource.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserLevelResource`](UserLevelResource.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserLevelResource`](UserLevelResource.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserLevelResource`](UserLevelResource.md)[]\>

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
| `data` | `DataObject`<[`UserLevelResource`](UserLevelResource.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserLevelResource`](UserLevelResource.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserLevelResource`](UserLevelResource.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserLevelResource`](UserLevelResource.md)\>

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
| `entity` | [`UserLevelResource`](UserLevelResource.md) |
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
| `data` | `DataObject`<[`UserLevelResource`](UserLevelResource.md)\> |
| `where?` | `Where`<[`UserLevelResource`](UserLevelResource.md)\> |
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
| `data` | `DataObject`<[`UserLevelResource`](UserLevelResource.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
