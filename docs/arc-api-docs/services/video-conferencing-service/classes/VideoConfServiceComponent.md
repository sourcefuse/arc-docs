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

[services/video-conferencing-service/src/component.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L53)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/video-conferencing-service/src/component.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L55)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/video-conferencing-service/src/component.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L114)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/video-conferencing-service/src/component.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L131)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L126)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/video-conferencing-service/src/component.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L112)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L120)

___

### videChatConfig

• `Private` `Optional` `Readonly` **videChatConfig**: `IServiceConfig`

#### Defined in

[services/video-conferencing-service/src/component.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L57)

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

[services/video-conferencing-service/src/component.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/component.ts#L138)
