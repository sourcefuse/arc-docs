[@sourceloop/chat-service](../README.md) / [Exports](../modules.md) / ChatServiceComponent

# Class: ChatServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](ChatServiceComponent.md#constructor)

### Properties

- [application](ChatServiceComponent.md#application)
- [bindings](ChatServiceComponent.md#bindings)
- [chatConfig](ChatServiceComponent.md#chatconfig)
- [controllers](ChatServiceComponent.md#controllers)
- [models](ChatServiceComponent.md#models)
- [providers](ChatServiceComponent.md#providers)
- [repositories](ChatServiceComponent.md#repositories)

### Methods

- [setupSequence](ChatServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new ChatServiceComponent**(`application`, `chatConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `chatConfig?` | [`IChatServiceConfig`](../interfaces/IChatServiceConfig.md) |

#### Defined in

[services/chat-service/src/component.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L53)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/chat-service/src/component.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L55)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/chat-service/src/component.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L106)

___

### chatConfig

• `Private` `Optional` `Readonly` **chatConfig**: [`IChatServiceConfig`](../interfaces/IChatServiceConfig.md)

#### Defined in

[services/chat-service/src/component.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L57)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/chat-service/src/component.ts:123](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L123)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/chat-service/src/component.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L118)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/chat-service/src/component.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L105)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/chat-service/src/component.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L112)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/chat-service/src/component.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/chat-service/src/component.ts#L130)
