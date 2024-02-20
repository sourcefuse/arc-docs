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

[services/video-conferencing-service/src/component.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L60)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/video-conferencing-service/src/component.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L62)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/video-conferencing-service/src/component.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L127)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/video-conferencing-service/src/component.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L144)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L139)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/video-conferencing-service/src/component.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L125)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/video-conferencing-service/src/component.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L133)

___

### videoChatConfig

• `Private` `Optional` `Readonly` **videoChatConfig**: `IServiceConfig`

#### Defined in

[services/video-conferencing-service/src/component.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L64)

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

[services/video-conferencing-service/src/component.ts:151](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/component.ts#L151)
