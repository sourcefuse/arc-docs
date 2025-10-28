[@sourceloop/core](../README.md) / [Exports](../modules.md) / ServiceSequence

# Class: ServiceSequence

## Implements

- `SequenceHandler`

## Table of contents

### Constructors

- [constructor](ServiceSequence.md#constructor)

### Properties

- [authenticateRequest](ServiceSequence.md#authenticaterequest)
- [checkAuthorisation](ServiceSequence.md#checkauthorisation)
- [coreConfig](ServiceSequence.md#coreconfig)
- [expressMiddlewares](ServiceSequence.md#expressmiddlewares)
- [findRoute](ServiceSequence.md#findroute)
- [i18n](ServiceSequence.md#i18n)
- [invoke](ServiceSequence.md#invoke)
- [invokeMiddleware](ServiceSequence.md#invokemiddleware)
- [logger](ServiceSequence.md#logger)
- [parseParams](ServiceSequence.md#parseparams)
- [reject](ServiceSequence.md#reject)
- [send](ServiceSequence.md#send)

### Methods

- [\_handleErrorMessage](ServiceSequence.md#_handleerrormessage)
- [\_rejectErrors](ServiceSequence.md#_rejecterrors)
- [handle](ServiceSequence.md#handle)

## Constructors

### constructor

• **new ServiceSequence**(`findRoute`, `parseParams`, `invoke`, `send`, `reject`, `logger`, `authenticateRequest`, `checkAuthorisation`, `coreConfig`, `i18n`)

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
| `checkAuthorisation` | `AuthorizeFn` |
| `coreConfig` | [`CoreConfig`](../interfaces/CoreConfig.md) |
| `i18n` | `i18nAPI` |

#### Defined in

[packages/core/src/service-sequence.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L57)

## Properties

### authenticateRequest

• `Protected` **authenticateRequest**: `AuthenticateFn`<[`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\>

#### Defined in

[packages/core/src/service-sequence.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L68)

___

### checkAuthorisation

• `Protected` **checkAuthorisation**: `AuthorizeFn`

#### Defined in

[packages/core/src/service-sequence.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L70)

___

### coreConfig

• `Private` `Readonly` **coreConfig**: [`CoreConfig`](../interfaces/CoreConfig.md)

#### Defined in

[packages/core/src/service-sequence.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L72)

___

### expressMiddlewares

• `Protected` **expressMiddlewares**: `ExpressRequestHandler`[] = `[]`

#### Defined in

[packages/core/src/service-sequence.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L56)

___

### findRoute

• `Protected` **findRoute**: `FindRoute`

#### Defined in

[packages/core/src/service-sequence.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L59)

___

### i18n

• `Protected` **i18n**: `i18nAPI`

#### Defined in

[packages/core/src/service-sequence.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L74)

___

### invoke

• `Protected` **invoke**: `InvokeMethod`

#### Defined in

[packages/core/src/service-sequence.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L63)

___

### invokeMiddleware

• `Protected` **invokeMiddleware**: `InvokeMiddleware`

Optional invoker for registered middleware in a chain.
To be injected via SequenceActions.INVOKE_MIDDLEWARE.

#### Defined in

[packages/core/src/service-sequence.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L54)

___

### logger

• **logger**: [`ILogger`](../interfaces/ILogger.md)

#### Defined in

[packages/core/src/service-sequence.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L66)

___

### parseParams

• `Protected` **parseParams**: `ParseParams`

#### Defined in

[packages/core/src/service-sequence.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L61)

___

### reject

• **reject**: `Reject`

#### Defined in

[packages/core/src/service-sequence.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L65)

___

### send

• **send**: `Send`

#### Defined in

[packages/core/src/service-sequence.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L64)

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

[packages/core/src/service-sequence.ts:186](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L186)

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

[packages/core/src/service-sequence.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L144)

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

[packages/core/src/service-sequence.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/service-sequence.ts#L77)
