[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / LeadTokenVerifierProvider

# Class: LeadTokenVerifierProvider

## Implements

- `Provider`<`VerifyFunction.BearerFn`<[`LeadUser`](../modules.md#leaduser)\>\>

## Table of contents

### Constructors

- [constructor](LeadTokenVerifierProvider.md#constructor)

### Properties

- [leadTokenRepository](LeadTokenVerifierProvider.md#leadtokenrepository)

### Methods

- [value](LeadTokenVerifierProvider.md#value)

## Constructors

### constructor

• **new LeadTokenVerifierProvider**(`leadTokenRepository`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `leadTokenRepository` | [`LeadTokenRepository`](LeadTokenRepository.md) |

#### Defined in

[services/tenant-management-service/src/providers/lead-token-verify.provider.ts:11](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/providers/lead-token-verify.provider.ts#L11)

## Properties

### leadTokenRepository

• **leadTokenRepository**: [`LeadTokenRepository`](LeadTokenRepository.md)

#### Defined in

[services/tenant-management-service/src/providers/lead-token-verify.provider.ts:13](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/providers/lead-token-verify.provider.ts#L13)

## Methods

### value

▸ **value**(): `ValueOrPromise`<`BearerFn`<[`LeadUser`](../modules.md#leaduser)\>\>

#### Returns

`ValueOrPromise`<`BearerFn`<[`LeadUser`](../modules.md#leaduser)\>\>

#### Implementation of

Provider.value

#### Defined in

[services/tenant-management-service/src/providers/lead-token-verify.provider.ts:15](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/providers/lead-token-verify.provider.ts#L15)
