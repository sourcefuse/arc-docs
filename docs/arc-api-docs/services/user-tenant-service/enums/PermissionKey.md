[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / PermissionKey

# Enumeration: PermissionKey

## Table of contents

### Enumeration Members

- [AddMemberToUserGroup](PermissionKey.md#addmembertousergroup)
- [AddMemberToUserGroupNum](PermissionKey.md#addmembertousergroupnum)
- [CreateGroup](PermissionKey.md#creategroup)
- [CreateGroupNum](PermissionKey.md#creategroupnum)
- [CreateMultipleUserGroup](PermissionKey.md#createmultipleusergroup)
- [CreateMultipleUserGroupNum](PermissionKey.md#createmultipleusergroupnum)
- [CreateRoles](PermissionKey.md#createroles)
- [CreateRolesNum](PermissionKey.md#createrolesnum)
- [CreateTenant](PermissionKey.md#createtenant)
- [CreateTenantNum](PermissionKey.md#createtenantnum)
- [CreateTenantUser](PermissionKey.md#createtenantuser)
- [CreateTenantUserNum](PermissionKey.md#createtenantusernum)
- [CreateUser](PermissionKey.md#createuser)
- [CreateUserGroup](PermissionKey.md#createusergroup)
- [CreateUserGroupNum](PermissionKey.md#createusergroupnum)
- [CreateUserInvitation](PermissionKey.md#createuserinvitation)
- [CreateUserPermissions](PermissionKey.md#createuserpermissions)
- [CreateUserTenant](PermissionKey.md#createusertenant)
- [CreateUserTenantPreference](PermissionKey.md#createusertenantpreference)
- [CreateUserTenantPreferenceNum](PermissionKey.md#createusertenantpreferencenum)
- [DeleteGroup](PermissionKey.md#deletegroup)
- [DeleteGroupNum](PermissionKey.md#deletegroupnum)
- [DeleteRoles](PermissionKey.md#deleteroles)
- [DeleteRolesNum](PermissionKey.md#deleterolesnum)
- [DeleteSubscriptions](PermissionKey.md#deletesubscriptions)
- [DeleteSubscriptionsNum](PermissionKey.md#deletesubscriptionsnum)
- [DeleteTenant](PermissionKey.md#deletetenant)
- [DeleteTenantNum](PermissionKey.md#deletetenantnum)
- [DeleteTenantUser](PermissionKey.md#deletetenantuser)
- [DeleteTenantUserNum](PermissionKey.md#deletetenantusernum)
- [DeleteUser](PermissionKey.md#deleteuser)
- [DeleteUserGroup](PermissionKey.md#deleteusergroup)
- [DeleteUserGroupNum](PermissionKey.md#deleteusergroupnum)
- [DeleteUserInvitation](PermissionKey.md#deleteuserinvitation)
- [DeleteUserTenant](PermissionKey.md#deleteusertenant)
- [DeleteUserTenantPreference](PermissionKey.md#deleteusertenantpreference)
- [DeleteUserTenantPreferenceNum](PermissionKey.md#deleteusertenantpreferencenum)
- [LeaveUserGroup](PermissionKey.md#leaveusergroup)
- [LeaveUserGroupNum](PermissionKey.md#leaveusergroupnum)
- [NotAllowed](PermissionKey.md#notallowed)
- [NotAllowedNum](PermissionKey.md#notallowednum)
- [RemoveMemberFromUserGroup](PermissionKey.md#removememberfromusergroup)
- [RemoveMemberFromUserGroupNum](PermissionKey.md#removememberfromusergroupnum)
- [SuperAdmin](PermissionKey.md#superadmin)
- [UpdateGroup](PermissionKey.md#updategroup)
- [UpdateGroupNum](PermissionKey.md#updategroupnum)
- [UpdateMemberInUserGroup](PermissionKey.md#updatememberinusergroup)
- [UpdateMemberInUserGroupNum](PermissionKey.md#updatememberinusergroupnum)
- [UpdateRoles](PermissionKey.md#updateroles)
- [UpdateRolesNum](PermissionKey.md#updaterolesnum)
- [UpdateTenant](PermissionKey.md#updatetenant)
- [UpdateTenantNum](PermissionKey.md#updatetenantnum)
- [UpdateTenantUser](PermissionKey.md#updatetenantuser)
- [UpdateTenantUserNum](PermissionKey.md#updatetenantusernum)
- [UpdateTenantUserRestricted](PermissionKey.md#updatetenantuserrestricted)
- [UpdateUser](PermissionKey.md#updateuser)
- [UpdateUserGroup](PermissionKey.md#updateusergroup)
- [UpdateUserGroupNum](PermissionKey.md#updateusergroupnum)
- [UpdateUserInvitation](PermissionKey.md#updateuserinvitation)
- [UpdateUserPermissions](PermissionKey.md#updateuserpermissions)
- [UpdateUserTenant](PermissionKey.md#updateusertenant)
- [UpdateUserTenantPreference](PermissionKey.md#updateusertenantpreference)
- [UpdateUserTenantPreferenceNum](PermissionKey.md#updateusertenantpreferencenum)
- [ViewAllTenantOfSelf](PermissionKey.md#viewalltenantofself)
- [ViewAnyUserNum](PermissionKey.md#viewanyusernum)
- [ViewGroupList](PermissionKey.md#viewgrouplist)
- [ViewGroupListNum](PermissionKey.md#viewgrouplistnum)
- [ViewRoles](PermissionKey.md#viewroles)
- [ViewRolesNum](PermissionKey.md#viewrolesnum)
- [ViewTenant](PermissionKey.md#viewtenant)
- [ViewTenantNum](PermissionKey.md#viewtenantnum)
- [ViewTenantUser](PermissionKey.md#viewtenantuser)
- [ViewTenantUserNum](PermissionKey.md#viewtenantusernum)
- [ViewUser](PermissionKey.md#viewuser)
- [ViewUserCredential](PermissionKey.md#viewusercredential)
- [ViewUserCredentialNum](PermissionKey.md#viewusercredentialnum)
- [ViewUserGroupList](PermissionKey.md#viewusergrouplist)
- [ViewUserGroupListNum](PermissionKey.md#viewusergrouplistnum)
- [ViewUserInvitation](PermissionKey.md#viewuserinvitation)
- [ViewUserInvitations](PermissionKey.md#viewuserinvitations)
- [ViewUserInvitationsNum](PermissionKey.md#viewuserinvitationsnum)
- [ViewUserPermissions](PermissionKey.md#viewuserpermissions)
- [ViewUserPermissionsNum](PermissionKey.md#viewuserpermissionsnum)
- [ViewUserTenant](PermissionKey.md#viewusertenant)
- [ViewUserTenantById](PermissionKey.md#viewusertenantbyid)
- [ViewUserTenantPreference](PermissionKey.md#viewusertenantpreference)
- [ViewUserTenantPreferenceNum](PermissionKey.md#viewusertenantpreferencenum)

## Enumeration Members

### AddMemberToUserGroup

• **AddMemberToUserGroup** = ``"AddMemberToUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L32)

___

### AddMemberToUserGroupNum

• **AddMemberToUserGroupNum** = ``"20"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L77)

___

### CreateGroup

• **CreateGroup** = ``"CreateGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L13)

___

### CreateGroupNum

• **CreateGroupNum** = ``"32"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L89)

___

### CreateMultipleUserGroup

• **CreateMultipleUserGroup** = ``"CreateMultipleUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L9)

___

### CreateMultipleUserGroupNum

• **CreateMultipleUserGroupNum** = ``"31"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L88)

___

### CreateRoles

• **CreateRoles** = ``"CreateRoles"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L20)

___

### CreateRolesNum

• **CreateRolesNum** = ``"8"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L65)

___

### CreateTenant

• **CreateTenant** = ``"CreateTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L28)

___

### CreateTenantNum

• **CreateTenantNum** = ``"16"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L73)

___

### CreateTenantUser

• **CreateTenantUser** = ``"CreateTenantUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L24)

___

### CreateTenantUserNum

• **CreateTenantUserNum** = ``"13"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L70)

___

### CreateUser

• **CreateUser** = ``"CreateUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L45)

___

### CreateUserGroup

• **CreateUserGroup** = ``"CreateUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L8)

___

### CreateUserGroupNum

• **CreateUserGroupNum** = ``"1"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L58)

___

### CreateUserInvitation

• **CreateUserInvitation** = ``"CreateUserInvitation"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L49)

___

### CreateUserPermissions

• **CreateUserPermissions** = ``"CreateUserPermissions"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L56)

___

### CreateUserTenant

• **CreateUserTenant** = ``"CreateUserTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L41)

___

### CreateUserTenantPreference

• **CreateUserTenantPreference** = ``"CreateUserTenantPreference"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L36)

___

### CreateUserTenantPreferenceNum

• **CreateUserTenantPreferenceNum** = ``"29"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L86)

___

### DeleteGroup

• **DeleteGroup** = ``"DeleteGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L16)

___

### DeleteGroupNum

• **DeleteGroupNum** = ``"35"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L92)

___

### DeleteRoles

• **DeleteRoles** = ``"DeleteRoles"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L22)

___

### DeleteRolesNum

• **DeleteRolesNum** = ``"10"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L67)

___

### DeleteSubscriptions

• **DeleteSubscriptions** = ``"DeleteSubscriptions"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L17)

___

### DeleteSubscriptionsNum

• **DeleteSubscriptionsNum** = ``"5"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L62)

___

### DeleteTenant

• **DeleteTenant** = ``"DeleteTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L31)

___

### DeleteTenantNum

• **DeleteTenantNum** = ``"19"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L76)

___

### DeleteTenantUser

• **DeleteTenantUser** = ``"DeleteTenantUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L27)

___

### DeleteTenantUserNum

• **DeleteTenantUserNum** = ``"15"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L72)

___

### DeleteUser

• **DeleteUser** = ``"DeleteUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L47)

___

### DeleteUserGroup

• **DeleteUserGroup** = ``"DeleteUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L12)

___

### DeleteUserGroupNum

• **DeleteUserGroupNum** = ``"4"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L61)

___

### DeleteUserInvitation

• **DeleteUserInvitation** = ``"DeleteUserInvitation"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L51)

___

### DeleteUserTenant

• **DeleteUserTenant** = ``"DeleteUserTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L43)

___

### DeleteUserTenantPreference

• **DeleteUserTenantPreference** = ``"DeleteUserTenantPreference"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L39)

___

### DeleteUserTenantPreferenceNum

• **DeleteUserTenantPreferenceNum** = ``"30"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L87)

___

### LeaveUserGroup

• **LeaveUserGroup** = ``"LeaveUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L35)

___

### LeaveUserGroupNum

• **LeaveUserGroupNum** = ``"23"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L80)

___

### NotAllowed

• **NotAllowed** = ``"NotAllowed"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L19)

___

### NotAllowedNum

• **NotAllowedNum** = ``"7"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L64)

___

### RemoveMemberFromUserGroup

• **RemoveMemberFromUserGroup** = ``"RemoveMemberFromUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L34)

___

### RemoveMemberFromUserGroupNum

• **RemoveMemberFromUserGroupNum** = ``"22"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L79)

___

### SuperAdmin

• **SuperAdmin** = ``"SuperAdmin"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L7)

___

### UpdateGroup

• **UpdateGroup** = ``"UpdateGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L15)

___

### UpdateGroupNum

• **UpdateGroupNum** = ``"34"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L91)

___

### UpdateMemberInUserGroup

• **UpdateMemberInUserGroup** = ``"UpdateMemberInUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L33)

___

### UpdateMemberInUserGroupNum

• **UpdateMemberInUserGroupNum** = ``"21"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L78)

___

### UpdateRoles

• **UpdateRoles** = ``"UpdateRoles"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L21)

___

### UpdateRolesNum

• **UpdateRolesNum** = ``"9"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L66)

___

### UpdateTenant

• **UpdateTenant** = ``"UpdateTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L30)

___

### UpdateTenantNum

• **UpdateTenantNum** = ``"18"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L75)

___

### UpdateTenantUser

• **UpdateTenantUser** = ``"UpdateTenantUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L25)

___

### UpdateTenantUserNum

• **UpdateTenantUserNum** = ``"14"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L71)

___

### UpdateTenantUserRestricted

• **UpdateTenantUserRestricted** = ``"UpdateTenantUserRestricted"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L26)

___

### UpdateUser

• **UpdateUser** = ``"UpdateUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L46)

___

### UpdateUserGroup

• **UpdateUserGroup** = ``"UpdateUserGroup"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L11)

___

### UpdateUserGroupNum

• **UpdateUserGroupNum** = ``"3"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L60)

___

### UpdateUserInvitation

• **UpdateUserInvitation** = ``"UpdateUserInvitation"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L50)

___

### UpdateUserPermissions

• **UpdateUserPermissions** = ``"UpdateUserPermissions"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L57)

___

### UpdateUserTenant

• **UpdateUserTenant** = ``"UpdateUserTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L42)

___

### UpdateUserTenantPreference

• **UpdateUserTenantPreference** = ``"UpdateUserTenantPreference"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L37)

___

### UpdateUserTenantPreferenceNum

• **UpdateUserTenantPreferenceNum** = ``"24"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L81)

___

### ViewAllTenantOfSelf

• **ViewAllTenantOfSelf** = ``"ViewAllTenantOfSelf"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L6)

___

### ViewAnyUserNum

• **ViewAnyUserNum** = ``"11"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L68)

___

### ViewGroupList

• **ViewGroupList** = ``"ViewGroupList"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L14)

___

### ViewGroupListNum

• **ViewGroupListNum** = ``"33"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L90)

___

### ViewRoles

• **ViewRoles** = ``"ViewRoles"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L18)

___

### ViewRolesNum

• **ViewRolesNum** = ``"6"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L63)

___

### ViewTenant

• **ViewTenant** = ``"ViewTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L29)

___

### ViewTenantNum

• **ViewTenantNum** = ``"17"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L74)

___

### ViewTenantUser

• **ViewTenantUser** = ``"ViewTenantUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L23)

___

### ViewTenantUserNum

• **ViewTenantUserNum** = ``"12"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L69)

___

### ViewUser

• **ViewUser** = ``"ViewUser"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L44)

___

### ViewUserCredential

• **ViewUserCredential** = ``"ViewUserCredential"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L53)

___

### ViewUserCredentialNum

• **ViewUserCredentialNum** = ``"26"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L83)

___

### ViewUserGroupList

• **ViewUserGroupList** = ``"ViewUserGroupList"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L10)

___

### ViewUserGroupListNum

• **ViewUserGroupListNum** = ``"2"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L59)

___

### ViewUserInvitation

• **ViewUserInvitation** = ``"ViewUserInvitation"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L48)

___

### ViewUserInvitations

• **ViewUserInvitations** = ``"ViewUserInvitations"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L54)

___

### ViewUserInvitationsNum

• **ViewUserInvitationsNum** = ``"27"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L84)

___

### ViewUserPermissions

• **ViewUserPermissions** = ``"ViewUserPermissions"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L55)

___

### ViewUserPermissionsNum

• **ViewUserPermissionsNum** = ``"28"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L85)

___

### ViewUserTenant

• **ViewUserTenant** = ``"ViewUserTenant"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L40)

___

### ViewUserTenantById

• **ViewUserTenantById** = ``"ViewUserTenantById"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L52)

___

### ViewUserTenantPreference

• **ViewUserTenantPreference** = ``"ViewUserTenantPreference"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L38)

___

### ViewUserTenantPreferenceNum

• **ViewUserTenantPreferenceNum** = ``"25"``

#### Defined in

[services/user-tenant-service/src/enums/permission-key.enum.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/enums/permission-key.enum.ts#L82)
