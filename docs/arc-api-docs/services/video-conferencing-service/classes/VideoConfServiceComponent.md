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
- [videoChatConfig](VideoConfServiceComponent.md#videochatconfig)

### Methods

- [setupSequence](VideoConfServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new VideoConfServiceComponent**(`application`, `videoChatConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `videoChatConfig?` | `IServiceConfig` |

#### Defined in

[services/video-conferencing-service/src/component.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L62)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/video-conferencing-service/src/component.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L64)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/video-conferencing-service/src/component.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L131)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/video-conferencing-service/src/component.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L148)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L143)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/video-conferencing-service/src/component.ts:129](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L129)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L137)

___

### videoChatConfig

• `Private` `Optional` `Readonly` **videoChatConfig**: `IServiceConfig`

#### Defined in

[services/video-conferencing-service/src/component.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L66)

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

[services/video-conferencing-service/src/component.ts:155](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/video-conferencing-service/src/component.ts#L155)
