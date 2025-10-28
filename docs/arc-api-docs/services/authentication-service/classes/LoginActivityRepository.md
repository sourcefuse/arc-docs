[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / LoginActivityRepository

# Class: LoginActivityRepository

## Hierarchy

- `DefaultCrudRepository`<[`LoginActivity`](LoginActivity.md), typeof [`id`](LoginActivity.md#id)\>

  ↳ **`LoginActivityRepository`**

## Table of contents

### Constructors

- [constructor](LoginActivityRepository.md#constructor)

### Properties

- [getCurrentUser](LoginActivityRepository.md#getcurrentuser)

## Constructors

### constructor

• **new LoginActivityRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`UserInToken`\> |

#### Overrides

DefaultCrudRepository&lt;
  LoginActivity,
  typeof LoginActivity.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/login-activity.repository.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/login-activity.repository.ts#L12)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`UserInToken`\>

#### Defined in

[services/authentication-service/src/repositories/login-activity.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/login-activity.repository.ts#L16)
