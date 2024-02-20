[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / InMailServiceComponent

# Class: InMailServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](InMailServiceComponent.md#constructor)

### Properties

- [application](InMailServiceComponent.md#application)
- [bindings](InMailServiceComponent.md#bindings)
- [controllers](InMailServiceComponent.md#controllers)
- [inMailConfig](InMailServiceComponent.md#inmailconfig)
- [models](InMailServiceComponent.md#models)
- [repositories](InMailServiceComponent.md#repositories)

### Methods

- [setupSequence](InMailServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new InMailServiceComponent**(`application`, `inMailConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `inMailConfig?` | [`IInMailServiceConfig`](../interfaces/IInMailServiceConfig.md) |

#### Defined in

[services/in-mail-service/src/component.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L59)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/in-mail-service/src/component.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L61)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[]

#### Implementation of

Component.bindings

#### Defined in

[services/in-mail-service/src/component.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L58)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/in-mail-service/src/component.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L57)

___

### inMailConfig

• `Private` `Optional` `Readonly` **inMailConfig**: [`IInMailServiceConfig`](../interfaces/IInMailServiceConfig.md)

#### Defined in

[services/in-mail-service/src/component.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L63)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/in-mail-service/src/component.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L52)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/in-mail-service/src/component.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L46)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/in-mail-service/src/component.ts:115](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/component.ts#L115)
