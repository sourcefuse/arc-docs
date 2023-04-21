[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VideoChatSessionRepository

# Class: VideoChatSessionRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`VideoChatSession`](VideoChatSession.md), typeof [`id`](VideoChatSession.md#id)\>

  ↳ **`VideoChatSessionRepository`**

## Table of contents

### Constructors

- [constructor](VideoChatSessionRepository.md#constructor)

### Properties

- [getCurrentUser](VideoChatSessionRepository.md#getcurrentuser)

### Methods

- [create](VideoChatSessionRepository.md#create)
- [createAll](VideoChatSessionRepository.md#createall)
- [replaceById](VideoChatSessionRepository.md#replacebyid)
- [save](VideoChatSessionRepository.md#save)
- [update](VideoChatSessionRepository.md#update)
- [updateAll](VideoChatSessionRepository.md#updateall)
- [updateById](VideoChatSessionRepository.md#updatebyid)

## Constructors

### constructor

• **new VideoChatSessionRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  VideoChatSession,
  typeof VideoChatSession.prototype.id
\&gt;.constructor

#### Defined in

[services/video-conferencing-service/src/repositories/video-chat-session.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/repositories/video-chat-session.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/video-conferencing-service/src/repositories/video-chat-session.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/video-conferencing-service/src/repositories/video-chat-session.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`VideoChatSession`](VideoChatSession.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`VideoChatSession`](VideoChatSession.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`VideoChatSession`](VideoChatSession.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`VideoChatSession`](VideoChatSession.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`VideoChatSession`](VideoChatSession.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`VideoChatSession`](VideoChatSession.md)[]\>

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
| `id` | `undefined` \| `number` |
| `data` | `DataObject`<[`VideoChatSession`](VideoChatSession.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`VideoChatSession`](VideoChatSession.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`VideoChatSession`](VideoChatSession.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`VideoChatSession`](VideoChatSession.md)\>

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
| `entity` | [`VideoChatSession`](VideoChatSession.md) |
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
| `data` | `DataObject`<[`VideoChatSession`](VideoChatSession.md)\> |
| `where?` | `Where`<[`VideoChatSession`](VideoChatSession.md)\> |
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
| `id` | `undefined` \| `number` |
| `data` | `DataObject`<[`VideoChatSession`](VideoChatSession.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
