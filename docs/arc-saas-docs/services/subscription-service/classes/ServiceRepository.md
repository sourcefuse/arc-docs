[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / ServiceRepository

# Class: ServiceRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Service`](Service.md) = [`Service`](Service.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Service.md#id), [`ServiceRelations`](../interfaces/ServiceRelations.md)\>

  ↳ **`ServiceRepository`**

## Table of contents

### Constructors

- [constructor](ServiceRepository.md#constructor)

### Properties

- [getCurrentUser](ServiceRepository.md#getcurrentuser)
- [service](ServiceRepository.md#service)

## Constructors

### constructor

• **new ServiceRepository**<`T`\>(`dataSource`, `getCurrentUser`, `service`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Service`](Service.md)<`T`\> = [`Service`](Service.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `service` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof Service.prototype.id,
  ServiceRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/service.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/service.repository.ts#L18)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/service.repository.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/service.repository.ts#L22)

___

### service

• `Private` `Readonly` **service**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/service.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/service.repository.ts#L24)
