[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / GroupTenantInterceptor

# Class: GroupTenantInterceptor

This class will be bound to the application as an `Interceptor` during
`boot`

## Implements

- `Provider`<`Interceptor`\>

## Table of contents

### Constructors

- [constructor](GroupTenantInterceptor.md#constructor)

### Properties

- [currentUser](GroupTenantInterceptor.md#currentuser)
- [groupRepository](GroupTenantInterceptor.md#grouprepository)
- [BINDING\_KEY](GroupTenantInterceptor.md#binding_key)

### Methods

- [intercept](GroupTenantInterceptor.md#intercept)
- [value](GroupTenantInterceptor.md#value)

## Constructors

### constructor

• **new GroupTenantInterceptor**(`groupRepository`, `currentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `groupRepository` | [`GroupRepository`](GroupRepository.md) |
| `currentUser` | `IAuthUserWithPermissions`<`string`, `string`, `string`\> |

#### Defined in

[services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts#L30)

## Properties

### currentUser

• `Protected` **currentUser**: `IAuthUserWithPermissions`<`string`, `string`, `string`\>

#### Defined in

[services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts#L33)

___

### groupRepository

• `Protected` **groupRepository**: [`GroupRepository`](GroupRepository.md)

#### Defined in

[services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts#L31)

___

### BINDING\_KEY

▪ `Static` `Readonly` **BINDING\_KEY**: ``"interceptors.GroupTenantInterceptor"``

#### Defined in

[services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts#L28)

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

[services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts#L51)

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

[services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/interceptors/group-tenant.interceptor.ts#L42)
