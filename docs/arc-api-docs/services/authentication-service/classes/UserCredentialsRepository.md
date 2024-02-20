[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserCredentialsRepository

# Class: UserCredentialsRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`UserCredentials`](UserCredentials.md), typeof [`id`](UserCredentials.md#id), [`UserCredentialsRelations`](../interfaces/UserCredentialsRelations.md)\>

  ↳ **`UserCredentialsRepository`**

## Table of contents

### Constructors

- [constructor](UserCredentialsRepository.md#constructor)

### Properties

- [user](UserCredentialsRepository.md#user)
- [userRepositoryGetter](UserCredentialsRepository.md#userrepositorygetter)

## Constructors

### constructor

• **new UserCredentialsRepository**(`dataSource`, `userRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userRepositoryGetter` | `Getter`<[`UserRepository`](UserRepository.md)\> |

#### Overrides

DefaultSoftCrudRepository&lt;
  UserCredentials,
  typeof UserCredentials.prototype.id,
  UserCredentialsRelations
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/user-credentials.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-credentials.repository.ts#L23)

## Properties

### user

• `Readonly` **user**: `BelongsToAccessor`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/authentication-service/src/repositories/user-credentials.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-credentials.repository.ts#L18)

___

### userRepositoryGetter

• `Protected` **userRepositoryGetter**: `Getter`<[`UserRepository`](UserRepository.md)\>

#### Defined in

[services/authentication-service/src/repositories/user-credentials.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/user-credentials.repository.ts#L27)
