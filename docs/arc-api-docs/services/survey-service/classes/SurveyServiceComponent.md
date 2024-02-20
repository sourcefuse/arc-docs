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

[services/survey-service/src/component.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L99)

## Properties

### application

• `Readonly` **application**: `RestApplication`

#### Defined in

[services/survey-service/src/component.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L101)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/survey-service/src/component.ts:206](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L206)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/survey-service/src/component.ts:224](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L224)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/survey-service/src/component.ts:219](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L219)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/survey-service/src/component.ts:205](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L205)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/survey-service/src/component.ts:212](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L212)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/survey-service/src/component.ts:213](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L213)

___

### surveyConfig

• `Optional` `Readonly` **surveyConfig**: [`ISurveyServiceConfig`](../interfaces/ISurveyServiceConfig.md)

#### Defined in

[services/survey-service/src/component.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L103)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/survey-service/src/component.ts:231](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/component.ts#L231)
