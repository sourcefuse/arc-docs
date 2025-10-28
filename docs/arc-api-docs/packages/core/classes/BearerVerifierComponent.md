[@sourceloop/core](../README.md) / [Exports](../modules.md) / BearerVerifierComponent

# Class: BearerVerifierComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](BearerVerifierComponent.md#constructor)

### Properties

- [bindings](BearerVerifierComponent.md#bindings)
- [config](BearerVerifierComponent.md#config)
- [logger](BearerVerifierComponent.md#logger)
- [models](BearerVerifierComponent.md#models)
- [providers](BearerVerifierComponent.md#providers)
- [repositories](BearerVerifierComponent.md#repositories)

## Constructors

### constructor

• **new BearerVerifierComponent**(`config`, `logger`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`BearerVerifierConfig`](../interfaces/BearerVerifierConfig.md) |
| `logger` | [`ILogger`](../interfaces/ILogger.md) |

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L22)

## Properties

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L51)

___

### config

• `Private` `Readonly` **config**: [`BearerVerifierConfig`](../interfaces/BearerVerifierConfig.md)

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L24)

___

### logger

• **logger**: [`ILogger`](../interfaces/ILogger.md)

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L25)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L63)

___

### providers

• `Optional` **providers**: `ProviderMap`

#### Implementation of

Component.providers

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L50)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/bearer-verifier/component.ts#L57)
