[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / WebhookVerifierProvider

# Class: WebhookVerifierProvider

## Implements

- `Provider`<`Interceptor`\>

## Table of contents

### Constructors

- [constructor](WebhookVerifierProvider.md#constructor)

### Properties

- [cryptoHelperService](WebhookVerifierProvider.md#cryptohelperservice)
- [logger](WebhookVerifierProvider.md#logger)
- [setCurrentUser](WebhookVerifierProvider.md#setcurrentuser)
- [systemUser](WebhookVerifierProvider.md#systemuser)
- [webhookConfig](WebhookVerifierProvider.md#webhookconfig)
- [webhookSecretRepo](WebhookVerifierProvider.md#webhooksecretrepo)

### Methods

- [intercept](WebhookVerifierProvider.md#intercept)
- [value](WebhookVerifierProvider.md#value)

## Constructors

### constructor

• **new WebhookVerifierProvider**(`webhookConfig`, `cryptoHelperService`, `webhookSecretRepo`, `logger`, `setCurrentUser`, `systemUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `webhookConfig` | [`WebhookConfig`](../modules.md#webhookconfig) |
| `cryptoHelperService` | [`CryptoHelperService`](CryptoHelperService.md) |
| `webhookSecretRepo` | [`WebhookSecretRepository`](WebhookSecretRepository.md) |
| `logger` | `ILogger` |
| `setCurrentUser` | `Setter`<`IAuthUser`\> |
| `systemUser` | `IAuthUser` |

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:21](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L21)

## Properties

### cryptoHelperService

• `Private` `Readonly` **cryptoHelperService**: [`CryptoHelperService`](CryptoHelperService.md)

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L25)

___

### logger

• `Private` `Readonly` **logger**: `ILogger`

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:29](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L29)

___

### setCurrentUser

• `Private` `Readonly` **setCurrentUser**: `Setter`<`IAuthUser`\>

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:31](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L31)

___

### systemUser

• `Private` `Readonly` **systemUser**: `IAuthUser`

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:33](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L33)

___

### webhookConfig

• `Private` `Readonly` **webhookConfig**: [`WebhookConfig`](../modules.md#webhookconfig)

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:23](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L23)

___

### webhookSecretRepo

• `Private` `Readonly` **webhookSecretRepo**: [`WebhookSecretRepository`](WebhookSecretRepository.md)

#### Defined in

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:27](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L27)

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

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:40](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L40)

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

[services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts:36](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/interceptors/webhook-verifier.interceptor.ts#L36)
