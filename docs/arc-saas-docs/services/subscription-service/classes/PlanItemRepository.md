[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PlanItemRepository

# Class: PlanItemRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`PlanItem`](PlanItem.md), typeof [`id`](PlanItem.md#id), [`PlanItemRelations`](../interfaces/PlanItemRelations.md)\>

  ↳ **`PlanItemRepository`**

## Table of contents

### Constructors

- [constructor](PlanItemRepository.md#constructor)

### Properties

- [getCurrentUser](PlanItemRepository.md#getcurrentuser)
- [plan](PlanItemRepository.md#plan)
- [planRepositoryGetter](PlanItemRepository.md#planrepositorygetter)

## Constructors

### constructor

• **new PlanItemRepository**(`dataSource`, `getCurrentUser`, `planRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `planRepositoryGetter` | `Getter`<[`PlanRepository`](PlanRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  PlanItem,
  typeof PlanItem.prototype.id,
  PlanItemRelations
\&gt;.constructor

#### Defined in

[services/subscription-service/src/repositories/plan-item.repository.ts:19](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan-item.repository.ts#L19)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/subscription-service/src/repositories/plan-item.repository.ts:22](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan-item.repository.ts#L22)

___

### plan

• `Readonly` **plan**: `BelongsToAccessor`<[`Plan`](Plan.md), `string`\>

#### Defined in

[services/subscription-service/src/repositories/plan-item.repository.ts:17](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan-item.repository.ts#L17)

___

### planRepositoryGetter

• `Protected` **planRepositoryGetter**: `Getter`<[`PlanRepository`](PlanRepository.md)\>

#### Defined in

[services/subscription-service/src/repositories/plan-item.repository.ts:24](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/subscription-service/src/repositories/plan-item.repository.ts#L24)
