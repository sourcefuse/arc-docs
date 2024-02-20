[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / UserTaskRepository

# Class: UserTaskRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`UserTask`](UserTask.md), typeof [`id`](UserTask.md#id)\>

  ↳ **`UserTaskRepository`**

## Table of contents

### Constructors

- [constructor](UserTaskRepository.md#constructor)

### Properties

- [getCurrentUser](UserTaskRepository.md#getcurrentuser)
- [userGetter](UserTaskRepository.md#usergetter)
- [userTask](UserTaskRepository.md#usertask)

### Methods

- [create](UserTaskRepository.md#create)
- [createAll](UserTaskRepository.md#createall)
- [replaceById](UserTaskRepository.md#replacebyid)
- [save](UserTaskRepository.md#save)
- [update](UserTaskRepository.md#update)
- [updateAll](UserTaskRepository.md#updateall)
- [updateById](UserTaskRepository.md#updatebyid)

## Constructors

### constructor

• **new UserTaskRepository**(`dataSource`, `userGetter`, `userTask`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `userGetter` | `Getter`<`IAuthUserWithPermissions`<`string`\>\> |
| `userTask` | typeof `Entity` & { `prototype`: [`UserTask`](UserTask.md)  } |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  UserTask,
  typeof UserTask.prototype.id
\&gt;.constructor

#### Defined in

[services/task-service/src/repositories/user-task.repository.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/user-task.repository.ts#L13)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:7

___

### userGetter

• `Private` **userGetter**: `Getter`<`IAuthUserWithPermissions`<`string`\>\>

#### Defined in

[services/task-service/src/repositories/user-task.repository.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/user-task.repository.ts#L17)

___

### userTask

• `Private` `Readonly` **userTask**: typeof `Entity` & { `prototype`: [`UserTask`](UserTask.md)  }

#### Defined in

[services/task-service/src/repositories/user-task.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/repositories/user-task.repository.ts#L19)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`UserTask`](UserTask.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`UserTask`](UserTask.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTask`](UserTask.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`UserTask`](UserTask.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`UserTask`](UserTask.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTask`](UserTask.md)[]\>

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
| `data` | `DataObject`<[`UserTask`](UserTask.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`UserTask`](UserTask.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`UserTask`](UserTask.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`UserTask`](UserTask.md)\>

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
| `entity` | [`UserTask`](UserTask.md) |
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
| `data` | `DataObject`<[`UserTask`](UserTask.md)\> |
| `where?` | `Where`<[`UserTask`](UserTask.md)\> |
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
| `data` | `DataObject`<[`UserTask`](UserTask.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
