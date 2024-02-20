[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / TenantInterceptorInterceptor

# Class: TenantInterceptorInterceptor

This class will be bound to the application as an `Interceptor` during
`boot`

## Implements

- `Provider`<`Interceptor`\>

## Table of contents

### Constructors

- [constructor](TenantInterceptorInterceptor.md#constructor)

### Properties

- [currentUser](TenantInterceptorInterceptor.md#currentuser)
- [BINDING\_KEY](TenantInterceptorInterceptor.md#binding_key)

### Methods

- [intercept](TenantInterceptorInterceptor.md#intercept)
- [value](TenantInterceptorInterceptor.md#value)

## Constructors

### constructor

• **new TenantInterceptorInterceptor**(`currentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `currentUser` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Defined in

[services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts#L29)

## Properties

### currentUser

• `Protected` **currentUser**: `IAuthUserWithPermissions`<`string`, `string`, `string`\>

#### Defined in

[services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts#L31)

___

### BINDING\_KEY

▪ `Static` `Readonly` **BINDING\_KEY**: ``"interceptors.TenantInterceptorInterceptor"``

#### Defined in

[services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts#L26)

## Methods

### intercept

▸ **intercept**(`invocationCtx`, `next`): `Promise`<`any`\>

The logic to intercept an invocation

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `invocationCtx` | `InvocationContext` | Invocation context |
| `next` | () => `any` | A function to invoke next interceptor or the target method |

#### Returns

`Promise`<`any`\>

#### Defined in

[services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts#L49)

___

### value

▸ **value**(): (`invocationCtx`: `InvocationContext`, `next`: () => `any`) => `Promise`<`any`\>

This method is used by LoopBack context to produce an interceptor function
for the binding.

#### Returns

`fn`

An interceptor function

▸ (`invocationCtx`, `next`): `Promise`<`any`\>

The logic to intercept an invocation

##### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `invocationCtx` | `InvocationContext` | Invocation context |
| `next` | () => `any` | A function to invoke next interceptor or the target method |

##### Returns

`Promise`<`any`\>

#### Implementation of

Provider.value

#### Defined in

[services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/tenant-interceptor.interceptor.ts#L40)
