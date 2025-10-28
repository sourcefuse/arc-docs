[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreComponent

# Class: CoreComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](CoreComponent.md#constructor)

### Properties

- [application](CoreComponent.md#application)
- [bindings](CoreComponent.md#bindings)
- [coreConfig](CoreComponent.md#coreconfig)
- [expressMiddlewares](CoreComponent.md#expressmiddlewares)
- [localeObj](CoreComponent.md#localeobj)
- [providers](CoreComponent.md#providers)
- [services](CoreComponent.md#services)

### Methods

- [\_buildMiddlewareConfig](CoreComponent.md#_buildmiddlewareconfig)
- [\_getSanitizedSpec](CoreComponent.md#_getsanitizedspec)
- [\_getSwaggerAuthHandler](CoreComponent.md#_getswaggerauthhandler)
- [\_setupSwaggerStats](CoreComponent.md#_setupswaggerstats)

## Constructors

### constructor

• **new CoreComponent**(`application`, `coreConfig`, `expressMiddlewares`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `coreConfig` | [`CoreConfig`](../interfaces/CoreConfig.md) |
| `expressMiddlewares` | `ExpressRequestHandler`[] |

#### Defined in

[packages/core/src/component.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L36)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[packages/core/src/component.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L38)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[packages/core/src/component.ts:217](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L217)

___

### coreConfig

• `Private` `Readonly` **coreConfig**: [`CoreConfig`](../interfaces/CoreConfig.md)

#### Defined in

[packages/core/src/component.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L40)

___

### expressMiddlewares

• `Private` `Readonly` **expressMiddlewares**: `ExpressRequestHandler`[]

#### Defined in

[packages/core/src/component.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L42)

___

### localeObj

• **localeObj**: `i18nAPI`

#### Defined in

[packages/core/src/component.ts:213](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L213)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[packages/core/src/component.ts:215](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L215)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[packages/core/src/component.ts:219](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L219)

## Methods

### \_buildMiddlewareConfig

▸ `Private` **_buildMiddlewareConfig**(`sanitizedSpec`): `AnyObject`

The function `_buildMiddlewareConfig` constructs a configuration object for middleware based on
input specifications and core configuration settings.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `sanitizedSpec` | `Object` | The `sanitizedSpec` parameter is an object that contains the `paths` property. It is used to build a middleware configuration object in the `_buildMiddlewareConfig` method. This method combines various configurations such as `name`, `uriPath`, `swaggerSpec`, `authentication`, and `on @returns The function `_buildMiddlewareConfig` is returning an object `config` that contains the following properties: |
| `sanitizedSpec.paths` | `AnyObject` | - |

#### Returns

`AnyObject`

#### Defined in

[packages/core/src/component.ts:165](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L165)

___

### \_getSanitizedSpec

▸ `Private` **_getSanitizedSpec**(): `Object`

This function retrieves a sanitized OpenAPI specification by potentially modifying path definitions
based on a provided configuration.

#### Returns

`Object`

The `_getSanitizedSpec` method returns a sanitized OpenAPI specification object with
modified path definitions based on the `modifyPathDefinition` function provided in the
`coreConfig`. If the `modifyPathDefinition` function is not provided or returns `null` for a path,
that path is removed from the specification.

| Name | Type |
| :------ | :------ |
| `paths` | `AnyObject` |

#### Defined in

[packages/core/src/component.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L135)

___

### \_getSwaggerAuthHandler

▸ `Private` **_getSwaggerAuthHandler**(): (`req`: `any`, `username`: `string`, `password`: `string`) => `boolean`

The function returns a handler function for Swagger authentication in TypeScript.

#### Returns

`fn`

A function is being returned that takes three parameters: `req`, `username`, and
`password`, and returns a boolean value. If `this.coreConfig.swaggerAuthenticate` is truthy, it
returns that value. Otherwise, it returns a function that checks if the `username` and `password`
match the values stored in `this.coreConfig.swaggerUsername` and `this.coreConfig.swaggerPassword`

▸ (`req`, `username`, `password`): `boolean`

The function returns a handler function for Swagger authentication in TypeScript.

##### Parameters

| Name | Type |
| :------ | :------ |
| `req` | `any` |
| `username` | `string` |
| `password` | `string` |

##### Returns

`boolean`

A function is being returned that takes three parameters: `req`, `username`, and
`password`, and returns a boolean value. If `this.coreConfig.swaggerAuthenticate` is truthy, it
returns that value. Otherwise, it returns a function that checks if the `username` and `password`
match the values stored in `this.coreConfig.swaggerUsername` and `this.coreConfig.swaggerPassword`

#### Defined in

[packages/core/src/component.ts:198](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L198)

___

### \_setupSwaggerStats

▸ `Private` **_setupSwaggerStats**(): `undefined` \| `ExpressRequestHandler`

The function `_setupSwaggerStats` sets up Swagger stats middleware based on configuration and
sanitized OpenAPI spec.

#### Returns

`undefined` \| `ExpressRequestHandler`

The `_setupSwaggerStats` function returns an Express request handler or `undefined`.

#### Defined in

[packages/core/src/component.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/component.ts#L110)
