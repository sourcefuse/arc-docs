[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / TaskRepository

# Class: TaskRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Task`](Task.md), typeof `Task.prototype.id`\>

  ↳ **`TaskRepository`**

## Table of contents

### Constructors

- [constructor](TaskRepository.md#constructor)

### Properties

- [getCurrentUser](TaskRepository.md#getcurrentuser)
- [task](TaskRepository.md#task)
- [userGetter](TaskRepository.md#usergetter)
- [userTasks](TaskRepository.md#usertasks)

### Methods

- [create](TaskRepository.md#create)
- [createAll](TaskRepository.md#createall)
- [replaceById](TaskRepository.md#replacebyid)
- [save](TaskRepository.md#save)
- [update](TaskRepository.md#update)
- [updateAll](TaskRepository.md#updateall)
- [updateById](TaskRepository.md#updatebyid)

## Constructors

### constructor

• **new TaskRepository**(`dataSource`, `userTaskRepo`, `userGetter`, `task`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userTaskRepo` | `Getter`<[`UserTaskRepository`](UserTaskRepository.md)\> |
| `userGetter` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `task` | typeof `Entity` & { `prototype`: [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Task,
  typeof Task.prototype.id
\&gt;.constructor

#### Defined in

[services/task-service/src/repositories/task.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task.repository.ts#L25)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:7

___

### task

• `Private` `Readonly` **task**: typeof `Entity` & { `prototype`: [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>  }

#### Defined in

[services/task-service/src/repositories/task.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task.repository.ts#L33)

___

### userGetter

• `Private` **userGetter**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/task-service/src/repositories/task.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task.repository.ts#L31)

___

### userTasks

• `Readonly` **userTasks**: `HasManyRepositoryFactory`<[`UserTask`](UserTask.md), `undefined` \| `string`\>

#### Defined in

[services/task-service/src/repositories/task.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/task.repository.ts#L21)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>[]\>

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
| `data` | `DataObject`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\>

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
| `entity` | [`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\> |
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
| `data` | `DataObject`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |
| `where?` | `Where`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |
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
| `data` | `DataObject`<[`Task`](Task.md)<[`TaskStatus`](../enums/TaskStatus.md)\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
