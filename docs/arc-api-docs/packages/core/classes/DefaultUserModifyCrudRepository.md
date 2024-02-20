[@sourceloop/core](../README.md) / [Exports](../modules.md) / DefaultUserModifyCrudRepository

# Class: DefaultUserModifyCrudRepository<T, ID, Relations\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`UserModifiableEntity`](UserModifiableEntity.md) |
| `ID` | `ID` |
| `Relations` | extends `object` = {} |

## Hierarchy

- `SoftCrudRepository`<`T`, `ID`, `Relations`\>

  ↳ **`DefaultUserModifyCrudRepository`**

## Table of contents

### Constructors

- [constructor](DefaultUserModifyCrudRepository.md#constructor)

### Properties

- [getCurrentUser](DefaultUserModifyCrudRepository.md#getcurrentuser)

### Methods

- [create](DefaultUserModifyCrudRepository.md#create)
- [createAll](DefaultUserModifyCrudRepository.md#createall)
- [replaceById](DefaultUserModifyCrudRepository.md#replacebyid)
- [save](DefaultUserModifyCrudRepository.md#save)
- [update](DefaultUserModifyCrudRepository.md#update)
- [updateAll](DefaultUserModifyCrudRepository.md#updateall)
- [updateById](DefaultUserModifyCrudRepository.md#updatebyid)

## Constructors

### constructor

• **new DefaultUserModifyCrudRepository**<`T`, `ID`, `Relations`\>(`entityClass`, `dataSource`, `getCurrentUser`)

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

SoftCrudRepository&lt;T, ID, Relations\&gt;.constructor

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L26)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| [`IAuthUserWithPermissions`](../interfaces/IAuthUserWithPermissions.md)<`string`, `string`, `string`\>\>

#### Inherited from

SoftCrudRepository.getCurrentUser

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L31)

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

SoftCrudRepository.create

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L38)

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

SoftCrudRepository.createAll

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L50)

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

SoftCrudRepository.replaceById

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L113)

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

SoftCrudRepository.save

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L64)

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

SoftCrudRepository.update

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L74)

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

SoftCrudRepository.updateAll

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L84)

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

SoftCrudRepository.updateById

#### Defined in

[packages/core/src/repositories/default-user-modify-crud.repository.base.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/repositories/default-user-modify-crud.repository.base.ts#L99)
