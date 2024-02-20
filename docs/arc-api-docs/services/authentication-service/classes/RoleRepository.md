[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / RoleRepository

# Class: RoleRepository

## Hierarchy

- `DefaultSoftCrudRepository`<[`Role`](Role.md), typeof [`id`](Role.md#id)\>

  ↳ **`RoleRepository`**

## Table of contents

### Constructors

- [constructor](RoleRepository.md#constructor)

### Properties

- [role](RoleRepository.md#role)

## Constructors

### constructor

• **new RoleRepository**(`dataSource`, `role`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `role` | typeof `Entity` & { `prototype`: [`Role`](Role.md)  } |

#### Overrides

DefaultSoftCrudRepository&lt;
  Role,
  typeof Role.prototype.id
\&gt;.constructor

#### Defined in

[services/authentication-service/src/repositories/role.repository.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/role.repository.ts#L16)

## Properties

### role

• `Private` `Readonly` **role**: typeof `Entity` & { `prototype`: [`Role`](Role.md)  }

#### Defined in

[services/authentication-service/src/repositories/role.repository.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/role.repository.ts#L20)
