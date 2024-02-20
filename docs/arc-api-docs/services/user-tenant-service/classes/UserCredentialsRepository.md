[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserCredentialsRepository

# Class: UserCredentialsRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserCredentials`](UserCredentials.md), typeof [`id`](UserCredentials.md#id), [`UserCredentialsRelations`](../interfaces/UserCredentialsRelations.md)\>

  ↳ **`UserCredentialsRepository`**

## Table of contents

### Constructors

- [constructor](UserCredentialsRepository.md#constructor)

### Properties

- [getCurrentUser](UserCredentialsRepository.md#getcurrentuser)
- [user](UserCredentialsRepository.md#user)
- [userRepositoryGetter](UserCredentialsRepository.md#userrepositorygetter)

### Methods

- [create](UserCredentialsRepository.md#create)
- [createAll](UserCredentialsRepository.md#createall)
- [replaceById](UserCredentialsRepository.md#replacebyid)
- [save](UserCredentialsRepository.md#save)
- [update](UserCredentialsRepository.md#update)
- [updateAll](UserCredentialsRepository.md#updateall)
- [updateById](UserCredentialsRepository.md#updatebyid)

## Constructors

### constructor

• **new UserCredentialsRepository**(`dataSource`, `userRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserCredentials,
  typeof UserCredentials.prototype.id,
  UserCredentialsRelations
\&gt;.constructor

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L26)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L32)

___

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L21)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/user-tenant-service/src/repositories/user-credentials.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/repositories/user-credentials.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserCredentials`](UserCredentials.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserCredentials`](UserCredentials.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserCredentials`](UserCredentials.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserCredentials`](UserCredentials.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserCredentials`](UserCredentials.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserCredentials`](UserCredentials.md)[]\>

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
| `data` | `DataObject`<[`UserCredentials`](UserCredentials.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserCredentials`](UserCredentials.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserCredentials`](UserCredentials.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserCredentials`](UserCredentials.md)\>

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
| `entity` | [`UserCredentials`](UserCredentials.md) |
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
| `data` | `DataObject`<[`UserCredentials`](UserCredentials.md)\> |
| `where?` | `Where`<[`UserCredentials`](UserCredentials.md)\> |
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
| `data` | `DataObject`<[`UserCredentials`](UserCredentials.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
