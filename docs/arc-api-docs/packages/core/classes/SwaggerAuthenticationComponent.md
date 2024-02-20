[@sourceloop/core](../README.md) / [Exports](../modules.md) / SwaggerAuthenticationComponent

# Class: SwaggerAuthenticationComponent

## Implements

- `Component`

## Table of contents

### Constructors

- [constructor](SwaggerAuthenticationComponent.md#constructor)

### Properties

- [application](SwaggerAuthenticationComponent.md#application)
- [bindings](SwaggerAuthenticationComponent.md#bindings)
- [models](SwaggerAuthenticationComponent.md#models)
- [providers](SwaggerAuthenticationComponent.md#providers)
- [repositories](SwaggerAuthenticationComponent.md#repositories)

## Constructors

### constructor

• **new SwaggerAuthenticationComponent**(`application`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |

#### Defined in

[packages/core/src/components/swagger-authentication/component.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/component.ts#L23)

## Properties

### application

• `Private` `Readonly` **application**: `RestApplication`

#### Defined in

[packages/core/src/components/swagger-authentication/component.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/component.ts#L25)

___

### bindings

• **bindings**: `Binding`<`any`\>[] = `[]`

#### Implementation of

Component.bindings

#### Defined in

[packages/core/src/components/swagger-authentication/component.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/component.ts#L20)

___

### models

• `Optional` **models**: `Class`<`Model`\>[]

#### Defined in

[packages/core/src/components/swagger-authentication/component.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/component.ts#L22)

___

### providers

• `Optional` **providers**: `ProviderMap`

#### Implementation of

Component.providers

#### Defined in

[packages/core/src/components/swagger-authentication/component.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/component.ts#L19)

___

### repositories

• `Optional` **repositories**: `Class`<`Repository`<`Model`\>\>[]

#### Defined in

[packages/core/src/components/swagger-authentication/component.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/component.ts#L21)
