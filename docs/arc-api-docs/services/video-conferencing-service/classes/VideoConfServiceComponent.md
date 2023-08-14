[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoConfServiceComponent

# Class: VideoConfServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](VideoConfServiceComponent.md#constructor)

### Properties

- [application](VideoConfServiceComponent.md#application)
- [bindings](VideoConfServiceComponent.md#bindings)
- [controllers](VideoConfServiceComponent.md#controllers)
- [models](VideoConfServiceComponent.md#models)
- [providers](VideoConfServiceComponent.md#providers)
- [repositories](VideoConfServiceComponent.md#repositories)
- [videChatConfig](VideoConfServiceComponent.md#videchatconfig)

### Methods

- [setupSequence](VideoConfServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new VideoConfServiceComponent**(`application`, `videChatConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `videChatConfig?` | `IServiceConfig` |

#### Defined in

[services/video-conferencing-service/src/component.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L54)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/video-conferencing-service/src/component.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L56)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/video-conferencing-service/src/component.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L115)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/video-conferencing-service/src/component.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L132)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L127)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/video-conferencing-service/src/component.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L113)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L121)

___

### videChatConfig

• `Private` `Optional` `Readonly` **videChatConfig**: `IServiceConfig`

#### Defined in

[services/video-conferencing-service/src/component.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L58)

## Methods

### setupSequence

▸ **setupSequence**(`bindings`): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `bindings` | `Binding`<`any`\>[] | Binding array |

#### Returns

`void`

#### Defined in

[services/video-conferencing-service/src/component.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/video-conferencing-service/src/component.ts#L139)
