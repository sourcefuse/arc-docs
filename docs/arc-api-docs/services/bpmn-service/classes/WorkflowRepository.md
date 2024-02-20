[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorkflowRepository

# Class: WorkflowRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Workflow`](Workflow.md), typeof [`id`](Workflow.md#id), [`WorkflowRelations`](../interfaces/WorkflowRelations.md)\>

  ↳ **`WorkflowRepository`**

## Table of contents

### Constructors

- [constructor](WorkflowRepository.md#constructor)

### Properties

- [getCurrentUser](WorkflowRepository.md#getcurrentuser)
- [workflowVersionRepositoryGetter](WorkflowRepository.md#workflowversionrepositorygetter)
- [workflowVersions](WorkflowRepository.md#workflowversions)

### Methods

- [create](WorkflowRepository.md#create)
- [createAll](WorkflowRepository.md#createall)
- [replaceById](WorkflowRepository.md#replacebyid)
- [save](WorkflowRepository.md#save)
- [update](WorkflowRepository.md#update)
- [updateAll](WorkflowRepository.md#updateall)
- [updateById](WorkflowRepository.md#updatebyid)

## Constructors

### constructor

• **new WorkflowRepository**(`dataSource`, `workflowVersionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `workflowVersionRepositoryGetter` | `Getter`<[`WorkflowVersionRepository`](WorkflowVersionRepository.md)\> |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Workflow,
  typeof Workflow.prototype.id,
  WorkflowRelations
\&gt;.constructor

#### Defined in

[services/bpmn-service/src/repositories/workflow.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow.repository.ts#L30)

## Properties

### getCurrentUser

• `Protected` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/bpmn-service/src/repositories/workflow.repository.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow.repository.ts#L36)

___

### workflowVersionRepositoryGetter

• `Protected` **workflowVersionRepositoryGetter**: `Getter`<[`WorkflowVersionRepository`](WorkflowVersionRepository.md)\>

#### Defined in

[services/bpmn-service/src/repositories/workflow.repository.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow.repository.ts#L34)

___

### workflowVersions

• `Readonly` **workflowVersions**: `HasManyRepositoryFactory`<[`WorkflowVersion`](WorkflowVersion.md), `undefined` \| `string`\>

#### Defined in

[services/bpmn-service/src/repositories/workflow.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/bpmn-service/src/repositories/workflow.repository.ts#L25)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Workflow`](Workflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Workflow`](Workflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Workflow`](Workflow.md)\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Workflow`](Workflow.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Workflow`](Workflow.md)\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Workflow`](Workflow.md)[]\>

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
| `data` | `DataObject`<[`Workflow`](Workflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Workflow`](Workflow.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Workflow`](Workflow.md) |
| `options?` | `Options` |

#### Returns

`Promise`<[`Workflow`](Workflow.md)\>

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
| `entity` | [`Workflow`](Workflow.md) |
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
| `data` | `DataObject`<[`Workflow`](Workflow.md)\> |
| `where?` | `Where`<[`Workflow`](Workflow.md)\> |
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
| `data` | `DataObject`<[`Workflow`](Workflow.md)\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
