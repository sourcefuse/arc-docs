[@sourceloop/in-mail-service](../README.md) / [Exports](../modules.md) / GroupRepository

# Class: GroupRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Group`](Group.md), typeof [`id`](Group.md#id)\>

  ↳ **`GroupRepository`**

## Table of contents

### Constructors

- [constructor](GroupRepository.md#constructor)

### Properties

- [getCurrentUser](GroupRepository.md#getcurrentuser)
- [message](GroupRepository.md#message)
- [thread](GroupRepository.md#thread)

### Methods

- [create](GroupRepository.md#create)
- [createAll](GroupRepository.md#createall)
- [replaceById](GroupRepository.md#replacebyid)
- [save](GroupRepository.md#save)
- [update](GroupRepository.md#update)
- [updateAll](GroupRepository.md#updateall)
- [updateById](GroupRepository.md#updatebyid)

## Constructors

### constructor

• **new GroupRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Group,
  typeof Group.prototype.id
\&gt;.constructor

#### Defined in

[services/in-mail-service/src/repositories/group.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/group.repository.ts#L26)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/in-mail-service/src/repositories/group.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/group.repository.ts#L30)

___

### message

• `Readonly` **message**: `BelongsToAccessor`<[`Message`](Message.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/group.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/group.repository.ts#L19)

___

### thread

• `Readonly` **thread**: `BelongsToAccessor`<[`Thread`](Thread.md), `undefined` \| `string`\>

#### Defined in

[services/in-mail-service/src/repositories/group.repository.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/in-mail-service/src/repositories/group.repository.ts#L24)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Group`](Group.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Group`](Group.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Group`](Group.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Group`](Group.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Group`](Group.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Group`](Group.md)[]\>

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
| `data` | `DataObject`<[`Group`](Group.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Group`](Group.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Group`](Group.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Group`](Group.md)\>

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
| `entity` | [`Group`](Group.md) |
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
| `data` | `DataObject`<[`Group`](Group.md)\> |
| `where?` | `Where`<[`Group`](Group.md)\> |
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
| `data` | `DataObject`<[`Group`](Group.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
