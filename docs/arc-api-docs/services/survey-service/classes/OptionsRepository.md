[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / OptionsRepository

# Class: OptionsRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Options`](Options.md), typeof [`id`](Options.md#id), [`OptionsRelations`](../interfaces/OptionsRelations.md)\>

  ↳ **`OptionsRepository`**

## Table of contents

### Constructors

- [constructor](OptionsRepository.md#constructor)

### Properties

- [followupQuestion](OptionsRepository.md#followupquestion)
- [getCurrentUser](OptionsRepository.md#getcurrentuser)
- [question](OptionsRepository.md#question)
- [questionRepositoryGetter](OptionsRepository.md#questionrepositorygetter)

### Methods

- [create](OptionsRepository.md#create)
- [createAll](OptionsRepository.md#createall)
- [replaceById](OptionsRepository.md#replacebyid)
- [save](OptionsRepository.md#save)
- [update](OptionsRepository.md#update)
- [updateAll](OptionsRepository.md#updateall)
- [updateById](OptionsRepository.md#updatebyid)

## Constructors

### constructor

• **new OptionsRepository**(`dataSource`, `questionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](QuestionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Options,
  typeof Options.prototype.id,
  OptionsRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/options.repository.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/options.repository.ts#L27)

## Properties

### followupQuestion

• `Readonly` **followupQuestion**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/options.repository.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/options.repository.ts#L22)

___

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/options.repository.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/options.repository.ts#L32)

___

### question

• `Readonly` **question**: `BelongsToAccessor`<[`Question`](Question.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/options.repository.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/options.repository.ts#L17)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/options.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/options.repository.ts#L30)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Options`](Options.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Options`](Options.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Options`](Options.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Options`](Options.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Options`](Options.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Options`](Options.md)[]\>

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
| `data` | `DataObject`<[`Options`](Options.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Options`](Options.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Options`](Options.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Options`](Options.md)\>

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
| `entity` | [`Options`](Options.md) |
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
| `data` | `DataObject`<[`Options`](Options.md)\> |
| `where?` | `Where`<[`Options`](Options.md)\> |
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
| `data` | `DataObject`<[`Options`](Options.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
