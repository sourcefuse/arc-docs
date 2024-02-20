[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / QuestionTemplateRepository

# Class: QuestionTemplateRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`QuestionTemplate`](QuestionTemplate.md), typeof [`id`](QuestionTemplatesDto.md#id)\>

  ↳ **`QuestionTemplateRepository`**

## Table of contents

### Constructors

- [constructor](QuestionTemplateRepository.md#constructor)

### Properties

- [getCurrentUser](QuestionTemplateRepository.md#getcurrentuser)

### Methods

- [create](QuestionTemplateRepository.md#create)
- [createAll](QuestionTemplateRepository.md#createall)
- [replaceById](QuestionTemplateRepository.md#replacebyid)
- [save](QuestionTemplateRepository.md#save)
- [update](QuestionTemplateRepository.md#update)
- [updateAll](QuestionTemplateRepository.md#updateall)
- [updateById](QuestionTemplateRepository.md#updatebyid)

## Constructors

### constructor

• **new QuestionTemplateRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  QuestionTemplate,
  typeof QuestionTemplate.prototype.id
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/question-template.repository.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/question-template.repository.ts#L15)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/question-template.repository.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/question-template.repository.ts#L18)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>[]\>

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
| `data` | `DataObject`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\>

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
| `entity` | [`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\> |
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
| `data` | `DataObject`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
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
| `data` | `DataObject`<[`QuestionTemplate`](QuestionTemplate.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
