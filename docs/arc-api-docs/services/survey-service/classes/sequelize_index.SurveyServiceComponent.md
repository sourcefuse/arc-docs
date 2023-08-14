[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [sequelize.index](../modules/sequelize_index.md) / SurveyServiceComponent

# Class: SurveyServiceComponent

[sequelize.index](../modules/sequelize_index.md).SurveyServiceComponent

## Hierarchy

- [`SurveyServiceComponent`](index.SurveyServiceComponent.md)

  ↳ **`SurveyServiceComponent`**

## Table of contents

### Constructors

- [constructor](sequelize_index.SurveyServiceComponent.md#constructor)

### Properties

- [application](sequelize_index.SurveyServiceComponent.md#application)
- [bindings](sequelize_index.SurveyServiceComponent.md#bindings)
- [controllers](sequelize_index.SurveyServiceComponent.md#controllers)
- [models](sequelize_index.SurveyServiceComponent.md#models)
- [providers](sequelize_index.SurveyServiceComponent.md#providers)
- [repositories](sequelize_index.SurveyServiceComponent.md#repositories)
- [services](sequelize_index.SurveyServiceComponent.md#services)
- [surveyConfig](sequelize_index.SurveyServiceComponent.md#surveyconfig)

### Methods

- [setupSequence](sequelize_index.SurveyServiceComponent.md#setupsequence)

## Constructors

### constructor

• **new SurveyServiceComponent**(`application`, `surveyConfig?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `surveyConfig?` | [`ISurveyServiceConfig`](../interfaces/index.ISurveyServiceConfig.md) |

#### Overrides

[SurveyServiceComponent](index.SurveyServiceComponent.md).[constructor](index.SurveyServiceComponent.md#constructor)

#### Defined in

[services/survey-service/src/sequelize.component.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/sequelize.component.ts#L42)

## Properties

### application

• **application**: `RestApplication`

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[application](index.SurveyServiceComponent.md#application)

#### Defined in

[services/survey-service/src/sequelize.component.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/sequelize.component.ts#L44)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[bindings](index.SurveyServiceComponent.md#bindings)

#### Defined in

[services/survey-service/src/component.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L176)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

An array of controller classes

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[controllers](index.SurveyServiceComponent.md#controllers)

#### Defined in

[services/survey-service/src/component.ts:194](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L194)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

An optional list of Model classes to bind for dependency injection
via `app.model()` API.

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[models](index.SurveyServiceComponent.md#models)

#### Defined in

[services/survey-service/src/component.ts:189](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L189)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[providers](index.SurveyServiceComponent.md#providers)

#### Defined in

[services/survey-service/src/component.ts:175](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L175)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

An optional list of Repository classes to bind for dependency injection
via `app.repository()` API.

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[repositories](index.SurveyServiceComponent.md#repositories)

#### Defined in

[services/survey-service/src/component.ts:182](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L182)

___

### services

• `Optional` **services**: `ServiceOrProviderClass`<`any`\>[]

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[services](index.SurveyServiceComponent.md#services)

#### Defined in

[services/survey-service/src/component.ts:183](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L183)

___

### surveyConfig

• `Optional` `Readonly` **surveyConfig**: [`ISurveyServiceConfig`](../interfaces/index.ISurveyServiceConfig.md)

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[surveyConfig](index.SurveyServiceComponent.md#surveyconfig)

#### Defined in

[services/survey-service/src/sequelize.component.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/sequelize.component.ts#L46)

## Methods

### setupSequence

▸ **setupSequence**(): `void`

Setup ServiceSequence by default if no other sequnce provided

#### Returns

`void`

#### Inherited from

[SurveyServiceComponent](index.SurveyServiceComponent.md).[setupSequence](index.SurveyServiceComponent.md#setupsequence)

#### Defined in

[services/survey-service/src/component.ts:201](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/component.ts#L201)
