[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyServiceComponent

# Class: SurveyServiceComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](SurveyServiceComponent.md#constructor)

### Properties

- [application](SurveyServiceComponent.md#application)
- [bindings](SurveyServiceComponent.md#bindings)
- [controllers](SurveyServiceComponent.md#controllers)
- [models](SurveyServiceComponent.md#models)
- [providers](SurveyServiceComponent.md#providers)
- [repositories](SurveyServiceComponent.md#repositories)
- [services](SurveyServiceComponent.md#services)
- [surveyConfig](SurveyServiceComponent.md#surveyconfig)

### Methods

- [setupSequence](SurveyServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SurveyServiceComponent**(`application`, `surveyConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `surveyConfig?` | [`ISurveyServiceConfig`](../interfaces/ISurveyServiceConfig.md) |

#### Defined in

[services/survey-service/src/component.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L101)

## Properties

### application

• `Readonly` **application**: `RestApplication`

#### Defined in

[services/survey-service/src/component.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L103)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/survey-service/src/component.ts:210](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L210)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/survey-service/src/component.ts:228](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L228)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/survey-service/src/component.ts:223](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L223)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/survey-service/src/component.ts:209](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L209)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/survey-service/src/component.ts:216](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L216)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/survey-service/src/component.ts:217](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L217)

___

### surveyConfig

• `Optional` `Readonly` **surveyConfig**: [`ISurveyServiceConfig`](../interfaces/ISurveyServiceConfig.md)

#### Defined in

[services/survey-service/src/component.ts:105](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L105)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/survey-service/src/component.ts:235](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/survey-service/src/component.ts#L235)
