[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / EventWorkflowRepository

# Class: EventWorkflowRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`EventWorkflow`](EventWorkflow.md), typeof [`id`](EventWorkflow.md#id)\>

  ↳ **`EventWorkflowRepository`**

## Table of contents

### Constructors

- [constructor](EventWorkflowRepository.md#constructor)

### Properties

- [eventWorkflow](EventWorkflowRepository.md#eventworkflow)
- [getCurrentUser](EventWorkflowRepository.md#getcurrentuser)
- [userGetter](EventWorkflowRepository.md#usergetter)

### Methods

- [create](EventWorkflowRepository.md#create)
- [createAll](EventWorkflowRepository.md#createall)
- [replaceById](EventWorkflowRepository.md#replacebyid)
- [save](EventWorkflowRepository.md#save)
- [update](EventWorkflowRepository.md#update)
- [updateAll](EventWorkflowRepository.md#updateall)
- [updateById](EventWorkflowRepository.md#updatebyid)

## Constructors

### constructor

• **new EventWorkflowRepository**(`dataSource`, `userGetter`, `eventWorkflow`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userGetter` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `eventWorkflow` | typeof `Entity` & { `prototype`: [`EventWorkflow`](EventWorkflow.md)  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  EventWorkflow,
  typeof EventWorkflow.prototype.id
\&gt;.constructor

#### Defined in

[services/task-service/src/repositories/event-workflow.repository.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/event-workflow.repository.ts#L15)

## Properties

### eventWorkflow

• `Private` `Readonly` **eventWorkflow**: typeof `Entity` & { `prototype`: [`EventWorkflow`](EventWorkflow.md)  }

#### Defined in

[services/task-service/src/repositories/event-workflow.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/event-workflow.repository.ts#L21)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:7

___

### userGetter

• `Private` **userGetter**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/task-service/src/repositories/event-workflow.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/event-workflow.repository.ts#L19)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`EventWorkflow`](EventWorkflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`EventWorkflow`](EventWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`EventWorkflow`](EventWorkflow.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`EventWorkflow`](EventWorkflow.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`EventWorkflow`](EventWorkflow.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`EventWorkflow`](EventWorkflow.md)[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`EventWorkflow`](EventWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`EventWorkflow`](EventWorkflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`EventWorkflow`](EventWorkflow.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`EventWorkflow`](EventWorkflow.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`EventWorkflow`](EventWorkflow.md) |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`EventWorkflow`](EventWorkflow.md)\> |
| `where?` | `Where`<[`EventWorkflow`](EventWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`EventWorkflow`](EventWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
