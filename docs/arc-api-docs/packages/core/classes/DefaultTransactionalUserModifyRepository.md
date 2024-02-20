[@sourceloop/core](../README.md) / [Exports](../modules.md) / DefaultTransactionalUserModifyRepository

# Class: DefaultTransactionalUserModifyRepository<T, ID, Relations\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`UserModifiableEntity`](UserModifiableEntity.md) |
| `ID` | `ID` |
| `Relations` | extends `object` = {} |

## Hierarchy

- `DefaultTransactionSoftCrudRepository`<`T`, `ID`, `Relations`\>

  ↳ **`DefaultTransactionalUserModifyRepository`**

## Table of contents

### Constructors

- [constructor](DefaultTransactionalUserModifyRepository.md#constructor)

### Properties

- [getCurrentUser](DefaultTransactionalUserModifyRepository.md#getcurrentuser)

### Methods

- [create](DefaultTransactionalUserModifyRepository.md#create)
- [createAll](DefaultTransactionalUserModifyRepository.md#createall)
- [replaceById](DefaultTransactionalUserModifyRepository.md#replacebyid)
- [save](DefaultTransactionalUserModifyRepository.md#save)
- [update](DefaultTransactionalUserModifyRepository.md#update)
- [updateAll](DefaultTransactionalUserModifyRepository.md#updateall)
- [updateById](DefaultTransactionalUserModifyRepository.md#updatebyid)

## Constructors

### constructor

• **new DefaultTransactionalUserModifyRepository**<`T`, `ID`, `Relations`\>(`entityClass`, `dataSource`, `getCurrentUser`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`UserModifiableEntity`](UserModifiableEntity.md)<`DataObject`<`Model`\>, `T`\> |
| `ID` | `ID` |
| `Relations` | extends `object` = {} |

#### Parameters

| Name | Type |
| :------ | :------ |
| `entityClass` | typeof `Entity` & { `prototype`: `T`  } |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| [`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\> |

#### Overrides

DefaultTransactionSoftCrudRepository&lt;T, ID, Relations\&gt;.constructor

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L25)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| [`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\>

#### Inherited from

DefaultTransactionSoftCrudRepository.getCurrentUser

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<`T`\> |
| `options?` | `Options` |

#### Returns

`Promise`<`T`\>

#### Overrides

DefaultTransactionSoftCrudRepository.create

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L37)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<`T`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<`T`\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<`T`[]\>

#### Overrides

DefaultTransactionSoftCrudRepository.createAll

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L49)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `DataObject`<`T`\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Overrides

DefaultTransactionSoftCrudRepository.replaceById

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L113)

___

### save

▸ **save**(`entity`, `options?`): `Promise`<`T`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |
| `options?` | `Options` |

#### Returns

`Promise`<`T`\>

#### Overrides

DefaultTransactionSoftCrudRepository.save

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L63)

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `T` |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Overrides

DefaultTransactionSoftCrudRepository.update

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:73](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L73)

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<`T`\> |
| `where?` | `Where`<`T`\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Overrides

DefaultTransactionSoftCrudRepository.updateAll

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L83)

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `ID` |
| `data` | `DataObject`<`T`\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Overrides

DefaultTransactionSoftCrudRepository.updateById

#### Defined in

[packages/core/src/repositories/default-transactional-user-modify-repository.base.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-transactional-user-modify-repository.base.ts#L98)
