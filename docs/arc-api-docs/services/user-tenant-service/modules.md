[@sourceloop/user-tenant-service](README.md) / Exports

# @sourceloop/user-tenant-service

## Table of contents

### Namespaces

- [UserTenantServiceComponentBindings](modules/UserTenantServiceComponentBindings.md)
- [UserTenantServiceKey](modules/UserTenantServiceKey.md)

### Enumerations

- [AuthProvider](enums/AuthProvider.md)
- [PermissionKey](enums/PermissionKey.md)
- [STATUS\_CODE](enums/STATUS_CODE.md)
- [TenantStatus](enums/TenantStatus.md)
- [UserConfigKey](enums/UserConfigKey.md)
- [UserTenantGroupType](enums/UserTenantGroupType.md)

### Classes

- [AuthClient](classes/AuthClient.md)
- [AuthClientRepository](classes/AuthClientRepository.md)
- [Group](classes/Group.md)
- [GroupRepository](classes/GroupRepository.md)
- [GroupTenantInterceptor](classes/GroupTenantInterceptor.md)
- [Role](classes/Role.md)
- [RoleRepository](classes/RoleRepository.md)
- [Tenant](classes/Tenant.md)
- [TenantConfig](classes/TenantConfig.md)
- [TenantConfigRepository](classes/TenantConfigRepository.md)
- [TenantInterceptorInterceptor](classes/TenantInterceptorInterceptor.md)
- [TenantRepository](classes/TenantRepository.md)
- [User](classes/User.md)
- [UserCredentials](classes/UserCredentials.md)
- [UserCredentialsRepository](classes/UserCredentialsRepository.md)
- [UserDto](classes/UserDto.md)
- [UserGroup](classes/UserGroup.md)
- [UserGroupProjection](classes/UserGroupProjection.md)
- [UserGroupRepository](classes/UserGroupRepository.md)
- [UserGroupService](classes/UserGroupService.md)
- [UserInvitation](classes/UserInvitation.md)
- [UserInvitationRepository](classes/UserInvitationRepository.md)
- [UserLevelPermission](classes/UserLevelPermission.md)
- [UserLevelPermissionRepository](classes/UserLevelPermissionRepository.md)
- [UserOperationsService](classes/UserOperationsService.md)
- [UserRepository](classes/UserRepository.md)
- [UserTenant](classes/UserTenant.md)
- [UserTenantInterceptorInterceptor](classes/UserTenantInterceptorInterceptor.md)
- [UserTenantPrefs](classes/UserTenantPrefs.md)
- [UserTenantPrefsRepository](classes/UserTenantPrefsRepository.md)
- [UserTenantRepository](classes/UserTenantRepository.md)
- [UserTenantServiceComponent](classes/UserTenantServiceComponent.md)
- [UserView](classes/UserView.md)
- [UserViewRepository](classes/UserViewRepository.md)

### Interfaces

- [GroupRelations](interfaces/GroupRelations.md)
- [IUserServiceConfig](interfaces/IUserServiceConfig.md)
- [RoleRelations](interfaces/RoleRelations.md)
- [TenantConfigRelations](interfaces/TenantConfigRelations.md)
- [TenantRelations](interfaces/TenantRelations.md)
- [UserCredentialsRelations](interfaces/UserCredentialsRelations.md)
- [UserGroupRelations](interfaces/UserGroupRelations.md)
- [UserRelations](interfaces/UserRelations.md)
- [UserTenantRelations](interfaces/UserTenantRelations.md)
- [UserTenantServiceComponentOptions](interfaces/UserTenantServiceComponentOptions.md)

### Type Aliases

- [GroupWithRelations](modules.md#groupwithrelations)
- [RoleWithRelations](modules.md#rolewithrelations)
- [TenantConfigWithRelations](modules.md#tenantconfigwithrelations)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [UserCredentialsWithRelations](modules.md#usercredentialswithrelations)
- [UserGroupWithRelations](modules.md#usergroupwithrelations)
- [UserTenantWithRelations](modules.md#usertenantwithrelations)
- [UserWithRelations](modules.md#userwithrelations)

### Variables

- [DEFAULT\_USER\_SERVICE\_OPTIONS](modules.md#default_user_service_options)
- [ErrorCodes](modules.md#errorcodes)
- [UserTenantCacheSourceName](modules.md#usertenantcachesourcename)
- [UserTenantDataSourceName](modules.md#usertenantdatasourcename)

## Type Aliases

### GroupWithRelations

Ƭ **GroupWithRelations**: [`Group`](classes/Group.md) & [`GroupRelations`](interfaces/GroupRelations.md)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/group.model.ts#L63)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md) & [`RoleRelations`](interfaces/RoleRelations.md)

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/role.model.ts#L82)

___

### TenantConfigWithRelations

Ƭ **TenantConfigWithRelations**: [`TenantConfig`](classes/TenantConfig.md) & [`TenantConfigRelations`](interfaces/TenantConfigRelations.md)

#### Defined in

[services/user-tenant-service/src/models/tenant-config.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant-config.model.ts#L46)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md) & [`TenantRelations`](interfaces/TenantRelations.md)

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/tenant.model.ts#L102)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-credentials.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-credentials.model.ts#L65)

___

### UserGroupWithRelations

Ƭ **UserGroupWithRelations**: [`UserGroup`](classes/UserGroup.md) & [`UserGroupRelations`](interfaces/UserGroupRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-group.model.ts#L50)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-tenant.model.ts#L88)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user.model.ts#L147)

## Variables

### DEFAULT\_USER\_SERVICE\_OPTIONS

• `Const` **DEFAULT\_USER\_SERVICE\_OPTIONS**: [`UserTenantServiceComponentOptions`](interfaces/UserTenantServiceComponentOptions.md) = `{}`

Default options for the component

#### Defined in

[services/user-tenant-service/src/types.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/types.ts#L16)

___

### ErrorCodes

• `Const` **ErrorCodes**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `400` | { `description`: `string` = 'The syntax of the request entity is incorrect.' } |
| `400.description` | `string` |
| `401` | { `description`: `string` = 'Invalid Credentials.' } |
| `401.description` | `string` |
| `404` | { `description`: `string` = 'The entity requested does not exist.' } |
| `404.description` | `string` |
| `422` | { `description`: `string` = 'The syntax of the request entity is incorrect' } |
| `422.description` | `string` |

#### Defined in

[services/user-tenant-service/src/enums/status-codes.enum.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/status-codes.enum.ts#L63)

___

### UserTenantCacheSourceName

• `Const` **UserTenantCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/user-tenant-service/src/keys.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/keys.ts#L23)

___

### UserTenantDataSourceName

• `Const` **UserTenantDataSourceName**: ``"AuthDB"``

#### Defined in

[services/user-tenant-service/src/keys.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/keys.ts#L22)
