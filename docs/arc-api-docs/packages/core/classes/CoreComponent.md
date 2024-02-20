[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreComponent

# Class: CoreComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](CoreComponent.md#constructor)

### Properties

- [application](CoreComponent.md#application)
- [bindings](CoreComponent.md#bindings)
- [coreConfig](CoreComponent.md#coreconfig)
- [expressMiddlewares](CoreComponent.md#expressmiddlewares)
- [localeObj](CoreComponent.md#localeobj)
- [providers](CoreComponent.md#providers)

### Methods

- [\_setupSwaggerStats](CoreComponent.md#_setupswaggerstats)

## Constructors

### constructor

• **new CoreComponent**(`application`, `coreConfig`, `expressMiddlewares`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |
| `coreConfig` | [`CoreConfig`](../interfaces/CoreConfig.md) |
| `expressMiddlewares` | `ExpressRequestHandler`[] |

#### Defined in

[packages/core/src/component.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L30)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[packages/core/src/component.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L32)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[packages/core/src/component.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L143)

___

### coreConfig

• `Private` `Readonly` **coreConfig**: [`CoreConfig`](../interfaces/CoreConfig.md)

#### Defined in

[packages/core/src/component.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L34)

___

### expressMiddlewares

• `Private` `Readonly` **expressMiddlewares**: `ExpressRequestHandler`[]

#### Defined in

[packages/core/src/component.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L36)

___

### localeObj

• **localeObj**: `i18nAPI`

#### Defined in

[packages/core/src/component.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L139)

___

### providers

• `Optional` **providers**: `ProviderMap` = `{}`

#### Implementation of

Component.providers

#### Defined in

[packages/core/src/component.ts:141](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L141)

## Methods

### \_setupSwaggerStats

▸ `Private` **_setupSwaggerStats**(): `undefined` \| `ExpressRequestHandler`

#### Returns

`undefined` \| `ExpressRequestHandler`

#### Defined in

[packages/core/src/component.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/component.ts#L93)
