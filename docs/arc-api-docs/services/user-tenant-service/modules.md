[@sourceloop/user-tenant-service](README.md) / Exports

# @sourceloop/user-tenant-service

## Table of contents

### Namespaces

- [UserTenantServiceComponentBindings](modules/UserTenantServiceComponentBindings.md)

### Enumerations

- [AuthProvider](enums/AuthProvider.md)
- [PermissionKey](enums/PermissionKey.md)
- [RoleKey](enums/RoleKey.md)
- [TenantStatus](enums/TenantStatus.md)
- [UserConfigKey](enums/UserConfigKey.md)
- [UserTenantGroupType](enums/UserTenantGroupType.md)

### Classes

- [AuditLog](classes/AuditLog.md)
- [AuditLogRepository](classes/AuditLogRepository.md)
- [AuthClient](classes/AuthClient.md)
- [AuthClientRepository](classes/AuthClientRepository.md)
- [Group](classes/Group.md)
- [GroupRepository](classes/GroupRepository.md)
- [GroupUserCountView](classes/GroupUserCountView.md)
- [NonRestrictedUserViewRepository](classes/NonRestrictedUserViewRepository.md)
- [Role](classes/Role.md)
- [RoleRepository](classes/RoleRepository.md)
- [Tenant](classes/Tenant.md)
- [TenantConfig](classes/TenantConfig.md)
- [TenantConfigRepository](classes/TenantConfigRepository.md)
- [TenantRepository](classes/TenantRepository.md)
- [User](classes/User.md)
- [UserCredentials](classes/UserCredentials.md)
- [UserCredentialsRepository](classes/UserCredentialsRepository.md)
- [UserDto](classes/UserDto.md)
- [UserGroup](classes/UserGroup.md)
- [UserGroupCountViewRepository](classes/UserGroupCountViewRepository.md)
- [UserGroupRepository](classes/UserGroupRepository.md)
- [UserGroupView](classes/UserGroupView.md)
- [UserGroupViewRepository](classes/UserGroupViewRepository.md)
- [UserLevelPermission](classes/UserLevelPermission.md)
- [UserLevelPermissionRepository](classes/UserLevelPermissionRepository.md)
- [UserRepository](classes/UserRepository.md)
- [UserSignupCheckDto](classes/UserSignupCheckDto.md)
- [UserTenant](classes/UserTenant.md)
- [UserTenantPrefs](classes/UserTenantPrefs.md)
- [UserTenantPrefsRepository](classes/UserTenantPrefsRepository.md)
- [UserTenantRepository](classes/UserTenantRepository.md)
- [UserTenantServiceComponent](classes/UserTenantServiceComponent.md)
- [UserView](classes/UserView.md)
- [UserViewRepository](classes/UserViewRepository.md)

### Interfaces

- [GroupRelations](interfaces/GroupRelations.md)
- [RoleRelations](interfaces/RoleRelations.md)
- [RoleTypeMapValue](interfaces/RoleTypeMapValue.md)
- [TenantConfigRelations](interfaces/TenantConfigRelations.md)
- [TenantRelations](interfaces/TenantRelations.md)
- [UserCredentialsRelations](interfaces/UserCredentialsRelations.md)
- [UserGroupRelations](interfaces/UserGroupRelations.md)
- [UserRelations](interfaces/UserRelations.md)
- [UserTenantRelations](interfaces/UserTenantRelations.md)
- [UserTenantServiceComponentOptions](interfaces/UserTenantServiceComponentOptions.md)

### Type Aliases

- [GroupWithRelations](modules.md#groupwithrelations)
- [RoleType](modules.md#roletype)
- [RoleWithRelations](modules.md#rolewithrelations)
- [TenantConfigWithRelations](modules.md#tenantconfigwithrelations)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [UserCredentialsWithRelations](modules.md#usercredentialswithrelations)
- [UserGroupWithRelations](modules.md#usergroupwithrelations)
- [UserTenantWithRelations](modules.md#usertenantwithrelations)
- [UserWithRelations](modules.md#userwithrelations)

### Variables

- [DEFAULT\_USER\_TENANT\_SERVICE\_OPTIONS](modules.md#default_user_tenant_service_options)
- [DisallowedRoles](modules.md#disallowedroles)
- [RoleTypeMap](modules.md#roletypemap)
- [UserTenantCacheSourceName](modules.md#usertenantcachesourcename)
- [UserTenantDataSourceName](modules.md#usertenantdatasourcename)

## Type Aliases

### GroupWithRelations

Ƭ **GroupWithRelations**: [`Group`](classes/Group.md) & [`GroupRelations`](interfaces/GroupRelations.md)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/group.model.ts#L61)

___

### RoleType

Ƭ **RoleType**: [`RoleKey`](enums/RoleKey.md) & `RoleTypes`

#### Defined in

[services/user-tenant-service/src/enums/role-type.enum.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/enums/role-type.enum.ts#L19)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md) & [`RoleRelations`](interfaces/RoleRelations.md)

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/role.model.ts#L70)

___

### TenantConfigWithRelations

Ƭ **TenantConfigWithRelations**: [`TenantConfig`](classes/TenantConfig.md) & [`TenantConfigRelations`](interfaces/TenantConfigRelations.md)

#### Defined in

[services/user-tenant-service/src/models/tenant-config.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/tenant-config.model.ts#L51)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md) & [`TenantRelations`](interfaces/TenantRelations.md)

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/tenant.model.ts#L112)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-credentials.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/user-credentials.model.ts#L69)

___

### UserGroupWithRelations

Ƭ **UserGroupWithRelations**: [`UserGroup`](classes/UserGroup.md) & [`UserGroupRelations`](interfaces/UserGroupRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/user-group.model.ts#L61)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/user-tenant.model.ts#L91)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/models/user.model.ts#L145)

## Variables

### DEFAULT\_USER\_TENANT\_SERVICE\_OPTIONS

• `Const` **DEFAULT\_USER\_TENANT\_SERVICE\_OPTIONS**: [`UserTenantServiceComponentOptions`](interfaces/UserTenantServiceComponentOptions.md) = `{}`

Default options for the component

#### Defined in

[services/user-tenant-service/src/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/types.ts#L18)

___

### DisallowedRoles

• `Const` **DisallowedRoles**: `RoleTypes`[]

#### Defined in

[services/user-tenant-service/src/enums/role-type.enum.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/enums/role-type.enum.ts#L21)

___

### RoleTypeMap

• `Const` **RoleTypeMap**: { [key in keyof RoleType]: RoleTypeMapValue }

#### Defined in

[services/user-tenant-service/src/enums/role-type.enum.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/enums/role-type.enum.ts#L27)

___

### UserTenantCacheSourceName

• `Const` **UserTenantCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/user-tenant-service/src/keys.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/keys.ts#L18)

___

### UserTenantDataSourceName

• `Const` **UserTenantDataSourceName**: ``"AuthDB"``

#### Defined in

[services/user-tenant-service/src/keys.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/user-tenant-service/src/keys.ts#L17)
