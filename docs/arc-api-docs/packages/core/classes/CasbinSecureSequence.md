[@sourceloop/core](../README.md) / [Exports](../modules.md) / CasbinSecureSequence

# Class: CasbinSecureSequence

## Implements

- `SequenceHandler`

## Table of contents

### Constructors

- [constructor](CasbinSecureSequence.md#constructor)

### Properties

- [authenticateClientRequest](CasbinSecureSequence.md#authenticateclientrequest)
- [authenticateRequest](CasbinSecureSequence.md#authenticaterequest)
- [casbinResModifierFn](CasbinSecureSequence.md#casbinresmodifierfn)
- [checkAuthorisation](CasbinSecureSequence.md#checkauthorisation)
- [expressMiddlewares](CasbinSecureSequence.md#expressmiddlewares)
- [findRoute](CasbinSecureSequence.md#findroute)
- [helmetAction](CasbinSecureSequence.md#helmetaction)
- [helmetConfig](CasbinSecureSequence.md#helmetconfig)
- [i18n](CasbinSecureSequence.md#i18n)
- [invoke](CasbinSecureSequence.md#invoke)
- [invokeMiddleware](CasbinSecureSequence.md#invokemiddleware)
- [logger](CasbinSecureSequence.md#logger)
- [parseParams](CasbinSecureSequence.md#parseparams)
- [rateLimitAction](CasbinSecureSequence.md#ratelimitaction)
- [rateLimitConfig](CasbinSecureSequence.md#ratelimitconfig)
- [reject](CasbinSecureSequence.md#reject)
- [send](CasbinSecureSequence.md#send)

### Methods

- [\_handleErrorMessage](CasbinSecureSequence.md#_handleerrormessage)
- [\_rejectErrors](CasbinSecureSequence.md#_rejecterrors)
- [handle](CasbinSecureSequence.md#handle)

## Constructors

### constructor

• **new CasbinSecureSequence**(`findRoute`, `parseParams`, `invoke`, `send`, `reject`, `logger`, `authenticateRequest`, `authenticateClientRequest`, `checkAuthorisation`, `casbinResModifierFn`, `helmetAction`, `rateLimitAction`, `i18n`, `rateLimitConfig?`, `helmetConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `findRoute` | `FindRoute` |
| `parseParams` | `ParseParams` |
| `invoke` | `InvokeMethod` |
| `send` | `Send` |
| `reject` | `Reject` |
| `logger` | [`ILogger`](../interfaces/ILogger.md) |
| `authenticateRequest` | `AuthenticateFn`<[`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\> |
| `authenticateClientRequest` | `AuthenticateFn`<`IAuthClient`\> |
| `checkAuthorisation` | `CasbinAuthorizeFn` |
| `casbinResModifierFn` | `CasbinResourceModifierFn` |
| `helmetAction` | `HelmetAction` |
| `rateLimitAction` | `RateLimitAction` |
| `i18n` | `i18nAPI` |
| `rateLimitConfig?` | `object` |
| `helmetConfig?` | `object` |

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L60)

## Properties

### authenticateClientRequest

• `Protected` **authenticateClientRequest**: `AuthenticateFn`<`IAuthClient`\>

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L73)

___

### authenticateRequest

• `Protected` **authenticateRequest**: `AuthenticateFn`<[`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\>

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L71)

___

### casbinResModifierFn

• `Protected` **casbinResModifierFn**: `CasbinResourceModifierFn`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L77)

___

### checkAuthorisation

• `Protected` **checkAuthorisation**: `CasbinAuthorizeFn`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L75)

___

### expressMiddlewares

• `Protected` **expressMiddlewares**: `ExpressRequestHandler`[] = `[]`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L58)

___

### findRoute

• `Protected` **findRoute**: `FindRoute`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L62)

___

### helmetAction

• `Protected` **helmetAction**: `HelmetAction`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L79)

___

### helmetConfig

• `Private` `Optional` `Readonly` **helmetConfig**: `object`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L87)

___

### i18n

• `Protected` **i18n**: `i18nAPI`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L83)

___

### invoke

• `Protected` **invoke**: `InvokeMethod`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L66)

___

### invokeMiddleware

• `Protected` **invokeMiddleware**: `InvokeMiddleware`

Optional invoker for registered middleware in a chain.
To be injected via SequenceActions.INVOKE_MIDDLEWARE.

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L56)

___

### logger

• **logger**: [`ILogger`](../interfaces/ILogger.md)

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L69)

___

### parseParams

• `Protected` **parseParams**: `ParseParams`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L64)

___

### rateLimitAction

• `Protected` **rateLimitAction**: `RateLimitAction`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L81)

___

### rateLimitConfig

• `Private` `Optional` `Readonly` **rateLimitConfig**: `object`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L85)

___

### reject

• **reject**: `Reject`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L68)

___

### send

• **send**: `Send`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L67)

## Methods

### \_handleErrorMessage

▸ `Private` **_handleErrorMessage**(`error`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `error` | `Error` |

#### Returns

`void`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L164)

___

### \_rejectErrors

▸ `Private` **_rejectErrors**(`err`): `Error`

#### Parameters

| Name | Type |
| :------ | :------ |
| `err` | `any` |

#### Returns

`Error`

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L184)

___

### handle

▸ **handle**(`context`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `RequestContext` |

#### Returns

`Promise`<`void`\>

#### Implementation of

SequenceHandler.handle

#### Defined in

[packages/core/src/casbin-secure-sequence.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/casbin-secure-sequence.ts#L90)
