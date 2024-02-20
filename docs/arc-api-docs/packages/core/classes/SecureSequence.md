[@sourceloop/core](../README.md) / [Exports](../modules.md) / SecureSequence

# Class: SecureSequence

## Implements

- `SequenceHandler`

## Table of contents

### Constructors

- [constructor](SecureSequence.md#constructor)

### Properties

- [authenticateClientRequest](SecureSequence.md#authenticateclientrequest)
- [authenticateRequest](SecureSequence.md#authenticaterequest)
- [checkAuthorisation](SecureSequence.md#checkauthorisation)
- [expressMiddlewares](SecureSequence.md#expressmiddlewares)
- [findRoute](SecureSequence.md#findroute)
- [helmetAction](SecureSequence.md#helmetaction)
- [helmetConfig](SecureSequence.md#helmetconfig)
- [i18n](SecureSequence.md#i18n)
- [invoke](SecureSequence.md#invoke)
- [invokeMiddleware](SecureSequence.md#invokemiddleware)
- [logger](SecureSequence.md#logger)
- [parseParams](SecureSequence.md#parseparams)
- [rateLimitAction](SecureSequence.md#ratelimitaction)
- [rateLimitConfig](SecureSequence.md#ratelimitconfig)
- [reject](SecureSequence.md#reject)
- [send](SecureSequence.md#send)

### Methods

- [\_handleErrorMessage](SecureSequence.md#_handleerrormessage)
- [\_rejectErrors](SecureSequence.md#_rejecterrors)
- [handle](SecureSequence.md#handle)

## Constructors

### constructor

• **new SecureSequence**(`findRoute`, `parseParams`, `invoke`, `send`, `reject`, `logger`, `authenticateRequest`, `authenticateClientRequest`, `checkAuthorisation`, `helmetAction`, `rateLimitAction`, `i18n`, `rateLimitConfig?`, `helmetConfig?`)

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
| `checkAuthorisation` | `AuthorizeFn` |
| `helmetAction` | `HelmetAction` |
| `rateLimitAction` | `RateLimitAction` |
| `i18n` | `i18nAPI` |
| `rateLimitConfig?` | `object` |
| `helmetConfig?` | `object` |

#### Defined in

[packages/core/src/secure-sequence.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L59)

## Properties

### authenticateClientRequest

• `Protected` **authenticateClientRequest**: `AuthenticateFn`<`IAuthClient`\>

#### Defined in

[packages/core/src/secure-sequence.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L72)

___

### authenticateRequest

• `Protected` **authenticateRequest**: `AuthenticateFn`<[`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\>

#### Defined in

[packages/core/src/secure-sequence.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L70)

___

### checkAuthorisation

• `Protected` **checkAuthorisation**: `AuthorizeFn`

#### Defined in

[packages/core/src/secure-sequence.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L74)

___

### expressMiddlewares

• `Protected` **expressMiddlewares**: `ExpressRequestHandler`[] = `[]`

#### Defined in

[packages/core/src/secure-sequence.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L57)

___

### findRoute

• `Protected` **findRoute**: `FindRoute`

#### Defined in

[packages/core/src/secure-sequence.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L61)

___

### helmetAction

• `Protected` **helmetAction**: `HelmetAction`

#### Defined in

[packages/core/src/secure-sequence.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L76)

___

### helmetConfig

• `Private` `Optional` `Readonly` **helmetConfig**: `object`

#### Defined in

[packages/core/src/secure-sequence.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L84)

___

### i18n

• `Protected` **i18n**: `i18nAPI`

#### Defined in

[packages/core/src/secure-sequence.ts:80](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L80)

___

### invoke

• `Protected` **invoke**: `InvokeMethod`

#### Defined in

[packages/core/src/secure-sequence.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L65)

___

### invokeMiddleware

• `Protected` **invokeMiddleware**: `InvokeMiddleware`

Optional invoker for registered middleware in a chain.
To be injected via SequenceActions.INVOKE_MIDDLEWARE.

#### Defined in

[packages/core/src/secure-sequence.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L55)

___

### logger

• **logger**: [`ILogger`](../interfaces/ILogger.md)

#### Defined in

[packages/core/src/secure-sequence.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L68)

___

### parseParams

• `Protected` **parseParams**: `ParseParams`

#### Defined in

[packages/core/src/secure-sequence.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L63)

___

### rateLimitAction

• `Protected` **rateLimitAction**: `RateLimitAction`

#### Defined in

[packages/core/src/secure-sequence.ts:78](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L78)

___

### rateLimitConfig

• `Private` `Optional` `Readonly` **rateLimitConfig**: `object`

#### Defined in

[packages/core/src/secure-sequence.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L82)

___

### reject

• **reject**: `Reject`

#### Defined in

[packages/core/src/secure-sequence.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L67)

___

### send

• **send**: `Send`

#### Defined in

[packages/core/src/secure-sequence.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L66)

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

[packages/core/src/secure-sequence.ts:158](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L158)

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

[packages/core/src/secure-sequence.ts:178](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L178)

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

[packages/core/src/secure-sequence.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/secure-sequence.ts#L87)
