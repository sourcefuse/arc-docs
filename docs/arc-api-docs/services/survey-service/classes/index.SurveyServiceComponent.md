[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyServiceComponent

# Class: SurveyServiceComponent

[index](../modules/index.md).SurveyServiceComponent

## Hierarchy

- **`SurveyServiceComponent`**

  ↳ [`SurveyServiceComponent`](sequelize_index.SurveyServiceComponent.md)

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](index.SurveyServiceComponent.md#constructor)

### Properties

- [application](index.SurveyServiceComponent.md#application)
- [bindings](index.SurveyServiceComponent.md#bindings)
- [controllers](index.SurveyServiceComponent.md#controllers)
- [models](index.SurveyServiceComponent.md#models)
- [providers](index.SurveyServiceComponent.md#providers)
- [repositories](index.SurveyServiceComponent.md#repositories)
- [services](index.SurveyServiceComponent.md#services)
- [surveyConfig](index.SurveyServiceComponent.md#surveyconfig)

### Methods

- [setupSequence](index.SurveyServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SurveyServiceComponent**(`application`, `surveyConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `surveyConfig?` | [`ISurveyServiceConfig`](../interfaces/index.ISurveyServiceConfig.md) |

#### Defined in

[services/survey-service/src/component.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L85)

## Properties

### application

• `Readonly` **application**: `RestApplication`

#### Defined in

[services/survey-service/src/component.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L87)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[services/survey-service/src/component.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L176)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Implementation of

Component.controllers

#### Defined in

[services/survey-service/src/component.ts:194](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L194)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Defined in

[services/survey-service/src/component.ts:189](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L189)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[services/survey-service/src/component.ts:175](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L175)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Defined in

[services/survey-service/src/component.ts:182](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L182)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Implementation of

Component.services

#### Defined in

[services/survey-service/src/component.ts:183](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L183)

___

### surveyConfig

• `Optional` `Readonly` **surveyConfig**: [`ISurveyServiceConfig`](../interfaces/index.ISurveyServiceConfig.md)

#### Defined in

[services/survey-service/src/component.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L89)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Defined in

[services/survey-service/src/component.ts:201](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L201)
