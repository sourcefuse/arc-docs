[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / EventRepository

# Class: EventRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Event`](Event.md), typeof [`id`](Event.md#id), [`EventRelations`](../interfaces/EventRelations.md)\>

  ↳ **`EventRepository`**

## Table of contents

### Constructors

- [constructor](EventRepository.md#constructor)

### Properties

- [attachmentRepositoryGetter](EventRepository.md#attachmentrepositorygetter)
- [attachments](EventRepository.md#attachments)
- [attendeeRepositoryGetter](EventRepository.md#attendeerepositorygetter)
- [attendees](EventRepository.md#attendees)
- [calendar](EventRepository.md#calendar)
- [calendarRepositoryGetter](EventRepository.md#calendarrepositorygetter)
- [getCurrentUser](EventRepository.md#getcurrentuser)
- [parentEvent](EventRepository.md#parentevent)

### Methods

- [create](EventRepository.md#create)
- [createAll](EventRepository.md#createall)
- [replaceById](EventRepository.md#replacebyid)
- [save](EventRepository.md#save)
- [update](EventRepository.md#update)
- [updateAll](EventRepository.md#updateall)
- [updateById](EventRepository.md#updatebyid)

## Constructors

### constructor

• **new EventRepository**(`dataSource`, `getCurrentUser`, `calendarRepositoryGetter`, `attendeeRepositoryGetter`, `attachmentRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `calendarRepositoryGetter` | `Getter`<[`CalendarRepository`](CalendarRepository.md)\> |
| `attendeeRepositoryGetter` | `Getter`<[`AttendeeRepository`](AttendeeRepository.md)\> |
| `attachmentRepositoryGetter` | `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Event,
  typeof Event.prototype.id,
  EventRelations
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L48)

## Properties

### attachmentRepositoryGetter

• `Protected` **attachmentRepositoryGetter**: `Getter`<[`AttachmentRepository`](AttachmentRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L60)

___

### attachments

• `Readonly` **attachments**: `HasManyRepositoryFactory`<[`Attachment`](Attachment.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L43)

___

### attendeeRepositoryGetter

• `Protected` **attendeeRepositoryGetter**: `Getter`<[`AttendeeRepository`](AttendeeRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L58)

___

### attendees

• `Readonly` **attendees**: `HasManyRepositoryFactory`<[`Attendee`](Attendee.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L38)

___

### calendar

• `Readonly` **calendar**: `BelongsToAccessor`<[`Calendar`](Calendar.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L28)

___

### calendarRepositoryGetter

• `Protected` **calendarRepositoryGetter**: `Getter`<[`CalendarRepository`](CalendarRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L56)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L52)

___

### parentEvent

• `Readonly` **parentEvent**: `BelongsToAccessor`<[`Event`](Event.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/event.repository.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/event.repository.ts#L33)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Event`](Event.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Event`](Event.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Event`](Event.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Event`](Event.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Event`](Event.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Event`](Event.md)[]\>

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
| `data` | `DataObject`<[`Event`](Event.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Event`](Event.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Event`](Event.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Event`](Event.md)\>

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
| `entity` | [`Event`](Event.md) |
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
| `data` | `DataObject`<[`Event`](Event.md)\> |
| `where?` | `Where`<[`Event`](Event.md)\> |
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
| `data` | `DataObject`<[`Event`](Event.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
