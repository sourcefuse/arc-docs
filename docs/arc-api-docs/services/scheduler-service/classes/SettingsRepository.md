[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / SettingsRepository

# Class: SettingsRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Settings`](Settings.md), typeof [`id`](Settings.md#id)\>

  ↳ **`SettingsRepository`**

## Table of contents

### Constructors

- [constructor](SettingsRepository.md#constructor)

### Properties

- [getCurrentUser](SettingsRepository.md#getcurrentuser)

### Methods

- [create](SettingsRepository.md#create)
- [createAll](SettingsRepository.md#createall)
- [replaceById](SettingsRepository.md#replacebyid)
- [save](SettingsRepository.md#save)
- [update](SettingsRepository.md#update)
- [updateAll](SettingsRepository.md#updateall)
- [updateById](SettingsRepository.md#updatebyid)

## Constructors

### constructor

• **new SettingsRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Settings,
  typeof Settings.prototype.id
\&gt;.constructor

#### Defined in

[services/scheduler-service/src/repositories/settings.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/settings.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/scheduler-service/src/repositories/settings.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/scheduler-service/src/repositories/settings.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Settings`](Settings.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Settings`](Settings.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Settings`](Settings.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Settings`](Settings.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Settings`](Settings.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Settings`](Settings.md)[]\>

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
| `data` | `DataObject`<[`Settings`](Settings.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Settings`](Settings.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Settings`](Settings.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Settings`](Settings.md)\>

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
| `entity` | [`Settings`](Settings.md) |
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
| `data` | `DataObject`<[`Settings`](Settings.md)\> |
| `where?` | `Where`<[`Settings`](Settings.md)\> |
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
| `data` | `DataObject`<[`Settings`](Settings.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
