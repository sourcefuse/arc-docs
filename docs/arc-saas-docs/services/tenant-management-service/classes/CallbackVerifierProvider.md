[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / CallbackVerifierProvider

# Class: CallbackVerifierProvider

## Implements

- `Provider`<`Interceptor`\>

## Table of contents

### Constructors

- [constructor](CallbackVerifierProvider.md#constructor)

### Properties

- [logger](CallbackVerifierProvider.md#logger)
- [setCurrentUser](CallbackVerifierProvider.md#setcurrentuser)
- [systemUser](CallbackVerifierProvider.md#systemuser)
- [webhookSecretRepo](CallbackVerifierProvider.md#webhooksecretrepo)

### Methods

- [intercept](CallbackVerifierProvider.md#intercept)
- [value](CallbackVerifierProvider.md#value)

## Constructors

### constructor

• **new CallbackVerifierProvider**(`logger`, `webhookSecretRepo`, `setCurrentUser`, `systemUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `logger` | `ILogger` |
| `webhookSecretRepo` | [`WebhookSecretRepository`](WebhookSecretRepository.md)<[`WebhookSecret`](WebhookSecret.md)\> |
| `setCurrentUser` | `Setter`<`IAuthUser`\> |
| `systemUser` | `IAuthUser` |

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:20](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L20)

## Properties

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L22)

___

### setCurrentUser

• `Private` `Readonly` **setCurrentUser**: `Setter`<`IAuthUser`\>

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:26](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L26)

___

### systemUser

• `Private` `Readonly` **systemUser**: `IAuthUser`

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:28](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L28)

___

### webhookSecretRepo

• `Private` `Readonly` **webhookSecretRepo**: [`WebhookSecretRepository`](WebhookSecretRepository.md)<[`WebhookSecret`](WebhookSecret.md)\>

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L24)

## Methods

### intercept

▸ **intercept**<`T`\>(`invocationCtx`, `next`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `invocationCtx` | `InvocationContext` |
| `next` | () => `ValueOrPromise`<`T`\> |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:35](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L35)

___

### value

▸ **value**(): <T\>(`invocationCtx`: `InvocationContext`, `next`: () => `ValueOrPromise`<`T`\>) => `Promise`<`T`\>

#### Returns

`fn`

▸ <`T`\>(`invocationCtx`, `next`): `Promise`<`T`\>

##### Type parameters

| Name |
| :------ |
| `T` |

##### Parameters

| Name | Type |
| :------ | :------ |
| `invocationCtx` | `InvocationContext` |
| `next` | () => `ValueOrPromise`<`T`\> |

##### Returns

`Promise`<`T`\>

#### Implementation of

Provider.value

#### Defined in

[services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts:31](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/interceptors/callback-verifier.interceptor.ts#L31)
