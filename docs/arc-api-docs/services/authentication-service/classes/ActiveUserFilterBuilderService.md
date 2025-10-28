[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / ActiveUserFilterBuilderService

# Class: ActiveUserFilterBuilderService

## Table of contents

### Constructors

- [constructor](ActiveUserFilterBuilderService.md#constructor)

### Properties

- [actorKey](ActiveUserFilterBuilderService.md#actorkey)
- [userRepo](ActiveUserFilterBuilderService.md#userrepo)
- [userTenantRepo](ActiveUserFilterBuilderService.md#usertenantrepo)

### Methods

- [buildActiveUsersFilter](ActiveUserFilterBuilderService.md#buildactiveusersfilter)

## Constructors

### constructor

• **new ActiveUserFilterBuilderService**(`actorKey`, `userRepo`, `userTenantRepo`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `actorKey` | [`ActorId`](../modules.md#actorid) |
| `userRepo` | [`UserRepository`](UserRepository.md) |
| `userTenantRepo` | [`UserTenantRepository`](UserTenantRepository.md) |

#### Defined in

[services/authentication-service/src/services/active-user-fliter-builder.service.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/active-user-fliter-builder.service.ts#L11)

## Properties

### actorKey

• `Private` `Readonly` **actorKey**: [`ActorId`](../modules.md#actorid)

#### Defined in

[services/authentication-service/src/services/active-user-fliter-builder.service.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/active-user-fliter-builder.service.ts#L13)

___

### userRepo

• **userRepo**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/services/active-user-fliter-builder.service.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/active-user-fliter-builder.service.ts#L15)

___

### userTenantRepo

• **userTenantRepo**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/services/active-user-fliter-builder.service.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/active-user-fliter-builder.service.ts#L17)

## Methods

### buildActiveUsersFilter

▸ **buildActiveUsersFilter**(`filter`): `Promise`<`AnyObject`\>

The function `buildActiveUsersFilter` asynchronously builds a filter based on active users,
considering different user identities and inclusion/exclusion criteria.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `filter` | [`ActiveUsersFilter`](ActiveUsersFilter.md) | The `buildActiveUsersFilter` function takes in a parameter `filter` of type `ActiveUsersFilter`. This filter object contains information about the users to be included or excluded from the filter. |

#### Returns

`Promise`<`AnyObject`\>

The function `buildActiveUsersFilter` returns an object with the key "actor" containing
an array of actor IDs based on the provided `ActiveUsersFilter` input. The array of actor IDs is
determined based on the conditions specified in the function, including the user identity type,
actor key, and inclusion/exclusion criteria.

#### Defined in

[services/authentication-service/src/services/active-user-fliter-builder.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/active-user-fliter-builder.service.ts#L31)
