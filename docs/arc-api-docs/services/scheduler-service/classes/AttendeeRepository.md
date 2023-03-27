[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / AttendeeRepository

# Class: AttendeeRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Attendee`](Attendee.md), typeof [`id`](Attendee.md#id), [`AttendeeRelations`](../interfaces/AttendeeRelations.md)\>

  ↳ **`AttendeeRepository`**

## Table of contents

### Constructors

- [constructor](AttendeeRepository.md#constructor)

### Properties

- [event](AttendeeRepository.md#event)
- [eventRepositoryGetter](AttendeeRepository.md#eventrepositorygetter)
- [getCurrentUser](AttendeeRepository.md#getcurrentuser)

### Methods

- [create](AttendeeRepository.md#create)
- [createAll](AttendeeRepository.md#createall)
- [replaceById](AttendeeRepository.md#replacebyid)
- [save](AttendeeRepository.md#save)
- [update](AttendeeRepository.md#update)
- [updateAll](AttendeeRepository.md#updateall)
- [updateById](AttendeeRepository.md#updatebyid)

## Constructors

### constructor

• **new AttendeeRepository**(`dataSource`, `getCurrentUser`, `eventRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `eventRepositoryGetter` | `Getter`<[`EventRepository`](EventRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Attendee,
  typeof Attendee.prototype.id,
  AttendeeRelations
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/attendee.repository.ts#L23)

## Properties

### event

• `Readonly` **event**: `BelongsToAccessor`<[`Event`](Event.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/attendee.repository.ts#L21)

___

### eventRepositoryGetter

• `Protected` **eventRepositoryGetter**: `Getter`<[`EventRepository`](EventRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/attendee.repository.ts#L31)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/attendee.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/attendee.repository.ts#L27)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Attendee`](Attendee.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Attendee`](Attendee.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Attendee`](Attendee.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Attendee`](Attendee.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Attendee`](Attendee.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Attendee`](Attendee.md)[]\>

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
| `data` | `DataObject`<[`Attendee`](Attendee.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Attendee`](Attendee.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Attendee`](Attendee.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Attendee`](Attendee.md)\>

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
| `entity` | [`Attendee`](Attendee.md) |
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
| `data` | `DataObject`<[`Attendee`](Attendee.md)\> |
| `where?` | `Where`<[`Attendee`](Attendee.md)\> |
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
| `data` | `DataObject`<[`Attendee`](Attendee.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
