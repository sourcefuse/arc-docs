[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / ResourceRepository

# Class: ResourceRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Resource`](Resource.md), typeof [`id`](Resource.md#id), [`ResourceRelations`](../interfaces/ResourceRelations.md)\>

  ↳ **`ResourceRepository`**

## Table of contents

### Constructors

- [constructor](ResourceRepository.md#constructor)

### Properties

- [getCurrentUser](ResourceRepository.md#getcurrentuser)

## Constructors

### constructor

• **new ResourceRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Resource,
  typeof Resource.prototype.id,
  ResourceRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/resource.repository.ts:16](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/resource.repository.ts#L16)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/resource.repository.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/subscription-service/src/repositories/resource.repository.ts#L20)
