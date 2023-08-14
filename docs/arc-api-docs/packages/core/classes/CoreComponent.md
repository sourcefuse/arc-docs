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

[src/component.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L28)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[src/component.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L30)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[src/component.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L114)

___

### coreConfig

• `Private` `Readonly` **coreConfig**: [`CoreConfig`](../interfaces/CoreConfig.md)

#### Defined in

[src/component.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L32)

___

### expressMiddlewares

• `Private` `Readonly` **expressMiddlewares**: `ExpressRequestHandler`[]

#### Defined in

[src/component.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L34)

___

### localeObj

• **localeObj**: `i18nAPI`

#### Defined in

[src/component.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L110)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[src/component.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/packages/core/src/component.ts#L112)
