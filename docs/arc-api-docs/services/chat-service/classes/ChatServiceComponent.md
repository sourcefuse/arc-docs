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

[services/chat-service/src/component.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L58)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/chat-service/src/component.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L60)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/chat-service/src/component.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L119)

___

### chatConfig

• `Private` `Optional` `Readonly` **chatConfig**: [`IChatServiceConfig`](../interfaces/IChatServiceConfig.md)

#### Defined in

[services/chat-service/src/component.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L62)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/chat-service/src/component.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L136)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/chat-service/src/component.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L131)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/chat-service/src/component.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L118)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/chat-service/src/component.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L125)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/chat-service/src/component.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/chat-service/src/component.ts#L143)
