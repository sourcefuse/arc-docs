[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserGroupService

# Class: UserGroupService

## Table of contents

### Constructors

- [constructor](UserGroupService.md#constructor)

### Properties

- [currentUser](UserGroupService.md#currentuser)
- [groupRepository](UserGroupService.md#grouprepository)
- [userGroupRepository](UserGroupService.md#usergrouprepository)
- [userTenantRepository](UserGroupService.md#usertenantrepository)

### Methods

- [create](UserGroupService.md#create)
- [createAll](UserGroupService.md#createall)
- [deleteAllBygroupIds](UserGroupService.md#deleteallbygroupids)
- [deleteById](UserGroupService.md#deletebyid)
- [updateById](UserGroupService.md#updatebyid)

## Constructors

### constructor

• **new UserGroupService**(`groupRepository`, `userGroupRepository`, `userTenantRepository`, `currentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `groupRepository` | [`GroupRepository`](GroupRepository.md) |
| `userGroupRepository` | [`UserGroupRepository`](UserGroupRepository.md) |
| `userTenantRepository` | [`UserTenantRepository`](UserTenantRepository.md) |
| `currentUser` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L21)

## Properties

### currentUser

• `Private` `Readonly` **currentUser**: `IAuthUserWithPermissions`<`string`, `string`, `string`\>

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L29)

___

### groupRepository

• **groupRepository**: [`GroupRepository`](GroupRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L23)

___

### userGroupRepository

• **userGroupRepository**: [`UserGroupRepository`](UserGroupRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L25)

___

### userTenantRepository

• **userTenantRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L27)

## Methods

### create

▸ **create**(`userGroupToCreate`): `Promise`<[`UserGroup`](UserGroup.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userGroupToCreate` | `Partial`<[`UserGroup`](UserGroup.md)\> |

#### Returns

`Promise`<[`UserGroup`](UserGroup.md)\>

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L32)

___

### createAll

▸ **createAll**(`userTenantIdArray`, `groupId`): `Promise`<[`UserGroup`](UserGroup.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userTenantIdArray` | `UserTenantIds` |
| `groupId` | `string` |

#### Returns

`Promise`<[`UserGroup`](UserGroup.md)[]\>

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L61)

___

### deleteAllBygroupIds

▸ **deleteAllBygroupIds**(`groupIds`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `groupIds` | `string`[] |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L122)

___

### deleteById

▸ **deleteById**(`userGroupId`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userGroupId` | `string` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:117](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L117)

___

### updateById

▸ **updateById**(`userGroupId`, `userGroupToUpdate`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `userGroupId` | `string` |
| `userGroupToUpdate` | `Partial`<[`UserGroup`](UserGroup.md)\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/user-tenant-service/src/services/user-group.service.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/services/user-group.service.ts#L56)
