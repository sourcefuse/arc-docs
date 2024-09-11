[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / ServiceRepository

# Class: ServiceRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Service`](Service.md), typeof [`id`](Service.md#id), [`ServiceRelations`](../interfaces/ServiceRelations.md)\>

  ↳ **`ServiceRepository`**

## Table of contents

### Constructors

- [constructor](ServiceRepository.md#constructor)

### Properties

- [getCurrentUser](ServiceRepository.md#getcurrentuser)

## Constructors

### constructor

• **new ServiceRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Service,
  typeof Service.prototype.id,
  ServiceRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/service.repository.ts:16](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/service.repository.ts#L16)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/service.repository.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/service.repository.ts#L20)
