[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / WorkingHourRepository

# Class: WorkingHourRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`WorkingHour`](WorkingHour.md), typeof [`id`](WorkingHour.md#id), [`WorkingHourRelations`](../interfaces/WorkingHourRelations.md)\>

  ↳ **`WorkingHourRepository`**

## Table of contents

### Constructors

- [constructor](WorkingHourRepository.md#constructor)

### Properties

- [calendar](WorkingHourRepository.md#calendar)
- [calendarRepositoryGetter](WorkingHourRepository.md#calendarrepositorygetter)
- [getCurrentUser](WorkingHourRepository.md#getcurrentuser)

### Methods

- [create](WorkingHourRepository.md#create)
- [createAll](WorkingHourRepository.md#createall)
- [replaceById](WorkingHourRepository.md#replacebyid)
- [save](WorkingHourRepository.md#save)
- [update](WorkingHourRepository.md#update)
- [updateAll](WorkingHourRepository.md#updateall)
- [updateById](WorkingHourRepository.md#updatebyid)

## Constructors

### constructor

• **new WorkingHourRepository**(`dataSource`, `getCurrentUser`, `calendarRepositoryGetter`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |
| `calendarRepositoryGetter` | `Getter`<[`CalendarRepository`](CalendarRepository.md)\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  WorkingHour,
  typeof WorkingHour.prototype.id,
  WorkingHourRelations
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/working-hour.repository.ts#L26)

## Properties

### calendar

• `Readonly` **calendar**: `BelongsToAccessor`<[`Calendar`](Calendar.md), `undefined` \| `string`\>

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/working-hour.repository.ts#L21)

___

### calendarRepositoryGetter

• `Protected` **calendarRepositoryGetter**: `Getter`<[`CalendarRepository`](CalendarRepository.md)\>

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/working-hour.repository.ts#L34)

___

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/working-hour.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/scheduler-service/src/repositories/working-hour.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`WorkingHour`](WorkingHour.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`WorkingHour`](WorkingHour.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`WorkingHour`](WorkingHour.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`WorkingHour`](WorkingHour.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`WorkingHour`](WorkingHour.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`WorkingHour`](WorkingHour.md)[]\>

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
| `data` | `DataObject`<[`WorkingHour`](WorkingHour.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`WorkingHour`](WorkingHour.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`WorkingHour`](WorkingHour.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`WorkingHour`](WorkingHour.md)\>

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
| `entity` | [`WorkingHour`](WorkingHour.md) |
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
| `data` | `DataObject`<[`WorkingHour`](WorkingHour.md)\> |
| `where?` | `Where`<[`WorkingHour`](WorkingHour.md)\> |
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
| `data` | `DataObject`<[`WorkingHour`](WorkingHour.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
