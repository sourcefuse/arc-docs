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

[packages/core/src/components/bearer-verifier/component.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L23)

## Properties

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L54)

___

### config

• `Private` `Readonly` **config**: [`BearerVerifierConfig`](../interfaces/BearerVerifierConfig.md)

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L25)

___

### logger

• **logger**: [`ILogger`](../interfaces/ILogger.md)

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L26)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L66)

___

### providers

• `Optional` **providers**: `ProviderMap`

#### Implementation of

Component.providers

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L53)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[packages/core/src/components/bearer-verifier/component.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/component.ts#L60)
