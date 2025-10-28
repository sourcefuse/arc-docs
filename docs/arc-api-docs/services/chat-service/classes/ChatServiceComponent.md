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

[services/chat-service/src/component.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L59)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/chat-service/src/component.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L61)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/chat-service/src/component.ts:122](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L122)

___

### chatConfig

• `Private` `Optional` `Readonly` **chatConfig**: [`IChatServiceConfig`](../interfaces/IChatServiceConfig.md)

#### Defined in

[services/chat-service/src/component.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L63)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/chat-service/src/component.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L139)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/chat-service/src/component.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L134)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/chat-service/src/component.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L121)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/chat-service/src/component.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L128)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/chat-service/src/component.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/chat-service/src/component.ts#L146)
