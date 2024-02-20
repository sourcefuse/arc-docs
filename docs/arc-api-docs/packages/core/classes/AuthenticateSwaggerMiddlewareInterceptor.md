[@sourceloop/core](../README.md) / [Exports](../modules.md) / AuthenticateSwaggerMiddlewareInterceptor

# Class: AuthenticateSwaggerMiddlewareInterceptor

## Implements

- `Provider`<`Middleware`\>

## Table of contents

### Constructors

- [constructor](AuthenticateSwaggerMiddlewareInterceptor.md#constructor)

### Properties

- [config](AuthenticateSwaggerMiddlewareInterceptor.md#config)
- [verifier](AuthenticateSwaggerMiddlewareInterceptor.md#verifier)

### Methods

- [decodeHeader](AuthenticateSwaggerMiddlewareInterceptor.md#decodeheader)
- [intercept](AuthenticateSwaggerMiddlewareInterceptor.md#intercept)
- [isOpenAPISpecRequest](AuthenticateSwaggerMiddlewareInterceptor.md#isopenapispecrequest)
- [isRequestContext](AuthenticateSwaggerMiddlewareInterceptor.md#isrequestcontext)
- [value](AuthenticateSwaggerMiddlewareInterceptor.md#value)

## Constructors

### constructor

• **new AuthenticateSwaggerMiddlewareInterceptor**(`verifier`, `config`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `verifier` | [`HttpAuthenticationVerifier`](../modules.md#httpauthenticationverifier) |
| `config` | `RestExplorerConfig` |

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L27)

## Properties

### config

• `Private` `Readonly` **config**: `RestExplorerConfig`

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L31)

___

### verifier

• `Private` `Readonly` **verifier**: [`HttpAuthenticationVerifier`](../modules.md#httpauthenticationverifier)

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L29)

## Methods

### decodeHeader

▸ `Private` **decodeHeader**(`request`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `request` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `password` | `string` |
| `username` | `undefined` \| `string` |

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L60)

___

### intercept

▸ **intercept**(`context`, `next`): `Promise`<`any`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `MiddlewareContext` |
| `next` | () => `any` |

#### Returns

`Promise`<`any`\>

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L37)

___

### isOpenAPISpecRequest

▸ `Private` **isOpenAPISpecRequest**(`request`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `request` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Returns

`boolean`

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L74)

___

### isRequestContext

▸ `Private` **isRequestContext**(`context?`): context is RequestContext

#### Parameters

| Name | Type |
| :------ | :------ |
| `context?` | `Context` |

#### Returns

context is RequestContext

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L82)

___

### value

▸ **value**(): (`context`: `MiddlewareContext`, `next`: () => `any`) => `Promise`<`any`\>

#### Returns

`fn`

▸ (`context`, `next`): `Promise`<`any`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `MiddlewareContext` |
| `next` | () => `any` |

##### Returns

`Promise`<`any`\>

#### Implementation of

Provider.value

#### Defined in

[packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/middlewares/authenticate-swagger.middleware.ts#L33)
