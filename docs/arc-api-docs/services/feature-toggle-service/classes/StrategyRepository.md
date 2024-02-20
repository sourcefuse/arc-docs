[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / StrategyRepository

# Class: StrategyRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Strategy`](Strategy.md), typeof [`name`](Strategy.md#name)\>

  ↳ **`StrategyRepository`**

## Table of contents

### Constructors

- [constructor](StrategyRepository.md#constructor)

### Properties

- [getCurrentUser](StrategyRepository.md#getcurrentuser)

### Methods

- [create](StrategyRepository.md#create)
- [createAll](StrategyRepository.md#createall)
- [replaceById](StrategyRepository.md#replacebyid)
- [save](StrategyRepository.md#save)
- [update](StrategyRepository.md#update)
- [updateAll](StrategyRepository.md#updateall)
- [updateById](StrategyRepository.md#updatebyid)

## Constructors

### constructor

• **new StrategyRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Strategy,
  typeof Strategy.prototype.name
\&gt;.constructor

#### Defined in

[services/feature-toggle-service/src/repositories/strategy.repository.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/repositories/strategy.repository.ts#L19)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/feature-toggle-service/src/repositories/strategy.repository.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/feature-toggle-service/src/repositories/strategy.repository.ts#L23)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Strategy`](Strategy.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Strategy`](Strategy.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Strategy`](Strategy.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Strategy`](Strategy.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Strategy`](Strategy.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Strategy`](Strategy.md)[]\>

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
| `id` | `string` |
| `data` | `DataObject`<[`Strategy`](Strategy.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Strategy`](Strategy.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Strategy`](Strategy.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Strategy`](Strategy.md)\>

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
| `entity` | [`Strategy`](Strategy.md) |
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
| `data` | `DataObject`<[`Strategy`](Strategy.md)\> |
| `where?` | `Where`<[`Strategy`](Strategy.md)\> |
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
| `id` | `string` |
| `data` | `DataObject`<[`Strategy`](Strategy.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
