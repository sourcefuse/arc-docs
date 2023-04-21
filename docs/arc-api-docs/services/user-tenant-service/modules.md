[@sourceloop/user-tenant-service](README.md) / Exports

# @sourceloop/user-tenant-service

## Table of contents

### Namespaces

- [UserTenantServiceComponentBindings](modules/UserTenantServiceComponentBindings.md)

### Classes

- [AuthClient](classes/AuthClient.md)
- [Group](classes/Group.md)
- [GroupUserCountView](classes/GroupUserCountView.md)
- [Role](classes/Role.md)
- [Tenant](classes/Tenant.md)
- [TenantConfig](classes/TenantConfig.md)
- [User](classes/User.md)
- [UserCredentials](classes/UserCredentials.md)
- [UserDto](classes/UserDto.md)
- [UserGroup](classes/UserGroup.md)
- [UserGroupView](classes/UserGroupView.md)
- [UserLevelPermission](classes/UserLevelPermission.md)
- [UserSignupCheckDto](classes/UserSignupCheckDto.md)
- [UserTenant](classes/UserTenant.md)
- [UserTenantPrefs](classes/UserTenantPrefs.md)
- [UserTenantServiceComponent](classes/UserTenantServiceComponent.md)
- [UserView](classes/UserView.md)

### Interfaces

- [GroupRelations](interfaces/GroupRelations.md)
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

- [DEFAULT\_USER\_TENANT\_SERVICE\_OPTIONS](modules.md#default_user_tenant_service_options)
- [UserTenantCacheSourceName](modules.md#usertenantcachesourcename)
- [UserTenantDataSourceName](modules.md#usertenantdatasourcename)

## Type Aliases

### GroupWithRelations

Ƭ **GroupWithRelations**: [`Group`](classes/Group.md) & [`GroupRelations`](interfaces/GroupRelations.md)

#### Defined in

[services/user-tenant-service/src/models/group.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/group.model.ts#L61)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md) & [`RoleRelations`](interfaces/RoleRelations.md)

#### Defined in

[services/user-tenant-service/src/models/role.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/role.model.ts#L70)

___

### TenantConfigWithRelations

Ƭ **TenantConfigWithRelations**: [`TenantConfig`](classes/TenantConfig.md) & [`TenantConfigRelations`](interfaces/TenantConfigRelations.md)

#### Defined in

[services/user-tenant-service/src/models/tenant-config.model.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/tenant-config.model.ts#L51)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md) & [`TenantRelations`](interfaces/TenantRelations.md)

#### Defined in

[services/user-tenant-service/src/models/tenant.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/tenant.model.ts#L112)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-credentials.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-credentials.model.ts#L69)

___

### UserGroupWithRelations

Ƭ **UserGroupWithRelations**: [`UserGroup`](classes/UserGroup.md) & [`UserGroupRelations`](interfaces/UserGroupRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-group.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-group.model.ts#L61)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user-tenant.model.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user-tenant.model.ts#L91)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/user-tenant-service/src/models/user.model.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/models/user.model.ts#L145)

## Variables

### DEFAULT\_USER\_TENANT\_SERVICE\_OPTIONS

• `Const` **DEFAULT\_USER\_TENANT\_SERVICE\_OPTIONS**: [`UserTenantServiceComponentOptions`](interfaces/UserTenantServiceComponentOptions.md) = `{}`

Default options for the component

#### Defined in

[services/user-tenant-service/src/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/types.ts#L18)

___

### UserTenantCacheSourceName

• `Const` **UserTenantCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/user-tenant-service/src/keys.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/keys.ts#L18)

___

### UserTenantDataSourceName

• `Const` **UserTenantDataSourceName**: ``"AuthDB"``

#### Defined in

[services/user-tenant-service/src/keys.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/user-tenant-service/src/keys.ts#L17)
