[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventAttendeeViewRepository

# Class: EventAttendeeViewRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`EventAttendeeView`](EventAttendeeView.md), typeof [`id`](Event.md#id), [`EventAttendeeView`](EventAttendeeView.md)\>

  ↳ **`EventAttendeeViewRepository`**

## Table of contents

### Constructors

- [constructor](EventAttendeeViewRepository.md#constructor)

### Properties

- [getCurrentUser](EventAttendeeViewRepository.md#getcurrentuser)

### Methods

- [create](EventAttendeeViewRepository.md#create)
- [createAll](EventAttendeeViewRepository.md#createall)
- [replaceById](EventAttendeeViewRepository.md#replacebyid)
- [save](EventAttendeeViewRepository.md#save)
- [update](EventAttendeeViewRepository.md#update)
- [updateAll](EventAttendeeViewRepository.md#updateall)
- [updateById](EventAttendeeViewRepository.md#updatebyid)

## Constructors

### constructor

• **new EventAttendeeViewRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  EventAttendeeView,
  typeof EventAttendeeView.prototype.id,
  EventAttendeeView
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/event-attendee-view.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/event-attendee-view.repository.ts#L21)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/event-attendee-view.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/event-attendee-view.repository.ts#L25)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`EventAttendeeView`](EventAttendeeView.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`EventAttendeeView`](EventAttendeeView.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`EventAttendeeView`](EventAttendeeView.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`EventAttendeeView`](EventAttendeeView.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`EventAttendeeView`](EventAttendeeView.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`EventAttendeeView`](EventAttendeeView.md)[]\>

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
| `data` | `DataObject`<[`EventAttendeeView`](EventAttendeeView.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`EventAttendeeView`](EventAttendeeView.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`EventAttendeeView`](EventAttendeeView.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`EventAttendeeView`](EventAttendeeView.md)\>

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
| `entity` | [`EventAttendeeView`](EventAttendeeView.md) |
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
| `data` | `DataObject`<[`EventAttendeeView`](EventAttendeeView.md)\> |
| `where?` | `Where`<[`EventAttendeeView`](EventAttendeeView.md)\> |
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
| `data` | `DataObject`<[`EventAttendeeView`](EventAttendeeView.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
