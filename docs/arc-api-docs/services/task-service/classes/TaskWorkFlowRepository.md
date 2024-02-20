[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskWorkFlowRepository

# Class: TaskWorkFlowRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`TaskWorkflow`](TaskWorkflow.md), typeof [`id`](TaskWorkflow.md#id)\>

  ↳ **`TaskWorkFlowRepository`**

## Table of contents

### Constructors

- [constructor](TaskWorkFlowRepository.md#constructor)

### Properties

- [getCurrentUser](TaskWorkFlowRepository.md#getcurrentuser)
- [taskWorkflow](TaskWorkFlowRepository.md#taskworkflow)
- [userGetter](TaskWorkFlowRepository.md#usergetter)

### Methods

- [create](TaskWorkFlowRepository.md#create)
- [createAll](TaskWorkFlowRepository.md#createall)
- [replaceById](TaskWorkFlowRepository.md#replacebyid)
- [save](TaskWorkFlowRepository.md#save)
- [update](TaskWorkFlowRepository.md#update)
- [updateAll](TaskWorkFlowRepository.md#updateall)
- [updateById](TaskWorkFlowRepository.md#updatebyid)

## Constructors

### constructor

• **new TaskWorkFlowRepository**(`dataSource`, `userGetter`, `taskWorkflow`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userGetter` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `taskWorkflow` | typeof `Entity` & { `prototype`: [`TaskWorkflow`](TaskWorkflow.md)  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  TaskWorkflow,
  typeof TaskWorkflow.prototype.id
\&gt;.constructor

#### Defined in

[services/task-service/src/repositories/task-workflow.repository.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task-workflow.repository.ts#L15)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:7

___

### taskWorkflow

• `Private` `Readonly` **taskWorkflow**: typeof `Entity` & { `prototype`: [`TaskWorkflow`](TaskWorkflow.md)  }

#### Defined in

[services/task-service/src/repositories/task-workflow.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task-workflow.repository.ts#L21)

___

### userGetter

• `Private` **userGetter**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/task-service/src/repositories/task-workflow.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task-workflow.repository.ts#L19)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`TaskWorkflow`](TaskWorkflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`TaskWorkflow`](TaskWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`TaskWorkflow`](TaskWorkflow.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`TaskWorkflow`](TaskWorkflow.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`TaskWorkflow`](TaskWorkflow.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`TaskWorkflow`](TaskWorkflow.md)[]\>

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
| `data` | `DataObject`<[`TaskWorkflow`](TaskWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`TaskWorkflow`](TaskWorkflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`TaskWorkflow`](TaskWorkflow.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`TaskWorkflow`](TaskWorkflow.md)\>

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
| `entity` | [`TaskWorkflow`](TaskWorkflow.md) |
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
| `data` | `DataObject`<[`TaskWorkflow`](TaskWorkflow.md)\> |
| `where?` | `Where`<[`TaskWorkflow`](TaskWorkflow.md)\> |
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
| `data` | `DataObject`<[`TaskWorkflow`](TaskWorkflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
