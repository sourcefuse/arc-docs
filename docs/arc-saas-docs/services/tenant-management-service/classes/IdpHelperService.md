[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / IdpHelperService

# Class: IdpHelperService

## Table of contents

### Constructors

- [constructor](IdpHelperService.md#constructor)

### Properties

- [idpAuth0Provider](IdpHelperService.md#idpauth0provider)
- [idpKeycloakProvider](IdpHelperService.md#idpkeycloakprovider)

### Methods

- [configureIdp](IdpHelperService.md#configureidp)

## Constructors

### constructor

• **new IdpHelperService**(`idpKeycloakProvider`, `idpAuth0Provider`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `idpKeycloakProvider` | [`ConfigureIdpFunc`](../modules.md#configureidpfunc)<[`IdpResp`](../interfaces/IdpResp.md)\> |
| `idpAuth0Provider` | [`ConfigureIdpFunc`](../modules.md#configureidpfunc)<[`IdpResp`](../interfaces/IdpResp.md)\> |

#### Defined in

[services/tenant-management-service/src/services/idp-helper.service.ts:8](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/idp-helper.service.ts#L8)

## Properties

### idpAuth0Provider

• `Private` `Readonly` **idpAuth0Provider**: [`ConfigureIdpFunc`](../modules.md#configureidpfunc)<[`IdpResp`](../interfaces/IdpResp.md)\>

#### Defined in

[services/tenant-management-service/src/services/idp-helper.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/idp-helper.service.ts#L12)

___

### idpKeycloakProvider

• `Private` `Readonly` **idpKeycloakProvider**: [`ConfigureIdpFunc`](../modules.md#configureidpfunc)<[`IdpResp`](../interfaces/IdpResp.md)\>

#### Defined in

[services/tenant-management-service/src/services/idp-helper.service.ts:10](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/idp-helper.service.ts#L10)

## Methods

### configureIdp

▸ **configureIdp**(`payload`): `Promise`<[`IdpResp`](../interfaces/IdpResp.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `payload` | `IdpDetailsDTO` |

#### Returns

`Promise`<[`IdpResp`](../interfaces/IdpResp.md)\>

#### Defined in

[services/tenant-management-service/src/services/idp-helper.service.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/services/idp-helper.service.ts#L15)
