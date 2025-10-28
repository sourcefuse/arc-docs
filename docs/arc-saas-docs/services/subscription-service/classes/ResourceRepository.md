[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / ResourceRepository

# Class: ResourceRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Resource`](Resource.md) = [`Resource`](Resource.md) |

## Hierarchy

- `DefaultUserModifyCrudRepository`<`T`, typeof [`id`](Resource.md#id), [`ResourceRelations`](../interfaces/ResourceRelations.md)\>

  ↳ **`ResourceRepository`**

## Table of contents

### Constructors

- [constructor](ResourceRepository.md#constructor)

### Properties

- [getCurrentUser](ResourceRepository.md#getcurrentuser)
- [resource](ResourceRepository.md#resource)

## Constructors

### constructor

• **new ResourceRepository**<`T`\>(`dataSource`, `getCurrentUser`, `resource`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`Resource`](Resource.md)<`T`\> = [`Resource`](Resource.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `resource` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  T,
  typeof Resource.prototype.id,
  ResourceRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/resource.repository.ts:18](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/resource.repository.ts#L18)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/resource.repository.ts:22](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/resource.repository.ts#L22)

___

### resource

• `Private` `Readonly` **resource**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/subscription-service/src/repositories/resource.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/repositories/resource.repository.ts#L24)
