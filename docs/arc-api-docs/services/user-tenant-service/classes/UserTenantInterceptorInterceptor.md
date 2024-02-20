[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserTenantInterceptorInterceptor

# Class: UserTenantInterceptorInterceptor

This class will be bound to the application as an `Interceptor` during
`boot`

## Implements

- `Provider`<`Interceptor`\>

## Table of contents

### Constructors

- [constructor](UserTenantInterceptorInterceptor.md#constructor)

### Properties

- [currentUser](UserTenantInterceptorInterceptor.md#currentuser)
- [userTenantRepository](UserTenantInterceptorInterceptor.md#usertenantrepository)
- [BINDING\_KEY](UserTenantInterceptorInterceptor.md#binding_key)

### Methods

- [intercept](UserTenantInterceptorInterceptor.md#intercept)
- [value](UserTenantInterceptorInterceptor.md#value)

## Constructors

### constructor

• **new UserTenantInterceptorInterceptor**(`userTenantRepository`, `currentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `userTenantRepository` | [`UserTenantRepository`](UserTenantRepository.md) |
| `currentUser` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Defined in

[services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts#L31)

## Properties

### currentUser

• `Protected` **currentUser**: `IAuthUserWithPermissions`<`string`, `string`, `string`\>

#### Defined in

[services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts#L35)

___

### userTenantRepository

• `Protected` **userTenantRepository**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts#L33)

___

### BINDING\_KEY

▪ `Static` `Readonly` **BINDING\_KEY**: ``"interceptors.UserTenantInterceptorInterceptor"``

#### Defined in

[services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts#L28)

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

[services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts#L53)

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

[services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/user-tenant-interceptor.interceptor.ts#L44)
