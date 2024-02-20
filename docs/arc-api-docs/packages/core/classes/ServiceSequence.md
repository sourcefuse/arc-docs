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

- [\_rejectErrors](ServiceSequence.md#_rejecterrors)
- [handle](ServiceSequence.md#handle)

## Constructors

### constructor

• **new ServiceSequence**(`findRoute`, `parseParams`, `invoke`, `send`, `reject`, `logger`, `authenticateRequest`, `checkAuthorisation`, `i18n`)

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
| `i18n` | `i18nAPI` |

#### Defined in

[packages/core/src/service-sequence.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L54)

## Properties

### authenticateRequest

• `Protected` **authenticateRequest**: `AuthenticateFn`<[`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\>

#### Defined in

[packages/core/src/service-sequence.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L65)

___

### checkAuthorisation

• `Protected` **checkAuthorisation**: `AuthorizeFn`

#### Defined in

[packages/core/src/service-sequence.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L67)

___

### expressMiddlewares

• `Protected` **expressMiddlewares**: `ExpressRequestHandler`[] = `[]`

#### Defined in

[packages/core/src/service-sequence.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L52)

___

### findRoute

• `Protected` **findRoute**: `FindRoute`

#### Defined in

[packages/core/src/service-sequence.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L56)

___

### i18n

• `Protected` **i18n**: `i18nAPI`

#### Defined in

[packages/core/src/service-sequence.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L69)

___

### invoke

• `Protected` **invoke**: `InvokeMethod`

#### Defined in

[packages/core/src/service-sequence.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L60)

___

### invokeMiddleware

• `Protected` **invokeMiddleware**: `InvokeMiddleware`

Optional invoker for registered middleware in a chain.
To be injected via SequenceActions.INVOKE_MIDDLEWARE.

#### Defined in

[packages/core/src/service-sequence.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L50)

___

### logger

• **logger**: [`ILogger`](../interfaces/ILogger.md)

#### Defined in

[packages/core/src/service-sequence.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L63)

___

### parseParams

• `Protected` **parseParams**: `ParseParams`

#### Defined in

[packages/core/src/service-sequence.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L58)

___

### reject

• **reject**: `Reject`

#### Defined in

[packages/core/src/service-sequence.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L62)

___

### send

• **send**: `Send`

#### Defined in

[packages/core/src/service-sequence.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L61)

## Methods

### \_rejectErrors

▸ `Private` **_rejectErrors**(`err`): `Error`

#### Parameters

| Name | Type |
| :------ | :------ |
| `err` | `any` |

#### Returns

`Error`

#### Defined in

[packages/core/src/service-sequence.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L160)

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

[packages/core/src/service-sequence.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/service-sequence.ts#L72)
