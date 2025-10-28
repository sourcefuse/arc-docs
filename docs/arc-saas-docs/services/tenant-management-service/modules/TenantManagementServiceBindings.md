[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / TenantManagementServiceBindings

# Namespace: TenantManagementServiceBindings

## Table of contents

### Variables

- [Config](TenantManagementServiceBindings.md#config)
- [IDP\_AUTH0](TenantManagementServiceBindings.md#idp_auth0)
- [IDP\_KEYCLOAK](TenantManagementServiceBindings.md#idp_keycloak)

## Variables

### Config

• `Const` **Config**: `BindingKey`<[`ITenantManagementServiceConfig`](../interfaces/ITenantManagementServiceConfig.md)\>

#### Defined in

[services/tenant-management-service/src/keys.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L24)

___

### IDP\_AUTH0

• `Const` **IDP\_AUTH0**: `BindingKey`<[`ConfigureIdpFunc`](../modules.md#configureidpfunc)<[`IdpResp`](../interfaces/IdpResp.md)\>\>

Binding key for the Idp Auth0 provider.

#### Defined in

[services/tenant-management-service/src/keys.ts:36](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L36)

___

### IDP\_KEYCLOAK

• `Const` **IDP\_KEYCLOAK**: `BindingKey`<[`ConfigureIdpFunc`](../modules.md#configureidpfunc)<[`IdpResp`](../interfaces/IdpResp.md)\>\>

Binding key for the Idp keycloak provider.

#### Defined in

[services/tenant-management-service/src/keys.ts:30](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/keys.ts#L30)
