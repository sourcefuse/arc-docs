[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / ReportingServiceComponent

# Class: ReportingServiceComponent

## Table of contents

### Constructors

- [constructor](ReportingServiceComponent.md#constructor)

### Properties

- [application](ReportingServiceComponent.md#application)
- [bindings](ReportingServiceComponent.md#bindings)
- [controllers](ReportingServiceComponent.md#controllers)
- [logger](ReportingServiceComponent.md#logger)
- [models](ReportingServiceComponent.md#models)
- [providers](ReportingServiceComponent.md#providers)
- [repositories](ReportingServiceComponent.md#repositories)
- [services](ReportingServiceComponent.md#services)

## Constructors

### constructor

• **new ReportingServiceComponent**(`application`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |

#### Defined in

[services/reporting-service/src/component.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L77)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[services/reporting-service/src/component.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L79)

___

### bindings

• `Optional` **bindings**: `Binding`<`any`\>[] = `[]`

#### Defined in

[services/reporting-service/src/component.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L73)

___

### controllers

• `Optional` **controllers**: `ControllerClass`<`any`\>[]

#### Defined in

[services/reporting-service/src/component.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L50)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/reporting-service/src/component.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L75)

___

### models

• `Optional` **models**: `Class`<`Model`\>[] = `[]`

#### Defined in

[services/reporting-service/src/component.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L58)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Defined in

[services/reporting-service/src/component.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L74)

___

### repositories

• **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[services/reporting-service/src/component.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L59)

___

### services

• **services**: (typeof [`DataSetsService`](DataSetsService.md) \| typeof [`IngestionMappingsService`](IngestionMappingsService.md) \| typeof `DefaultListenerService` \| typeof [`StateTrackingService`](StateTrackingService.md))[]

#### Defined in

[services/reporting-service/src/component.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/component.ts#L67)
