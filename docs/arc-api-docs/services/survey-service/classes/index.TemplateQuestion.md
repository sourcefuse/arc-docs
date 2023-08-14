[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / TemplateQuestion

# Class: TemplateQuestion

[index](../modules/index.md).TemplateQuestion

## Hierarchy

- `UserModifiableEntity`<[`TemplateQuestion`](index.TemplateQuestion.md)\>

  ↳ **`TemplateQuestion`**

## Table of contents

### Constructors

- [constructor](index.TemplateQuestion.md#constructor)

### Properties

- [createdBy](index.TemplateQuestion.md#createdby)
- [createdOn](index.TemplateQuestion.md#createdon)
- [dependentOnQuestionId](index.TemplateQuestion.md#dependentonquestionid)
- [displayOrder](index.TemplateQuestion.md#displayorder)
- [extId](index.TemplateQuestion.md#extid)
- [extMetadata](index.TemplateQuestion.md#extmetadata)
- [id](index.TemplateQuestion.md#id)
- [isMandatory](index.TemplateQuestion.md#ismandatory)
- [modifiedBy](index.TemplateQuestion.md#modifiedby)
- [modifiedOn](index.TemplateQuestion.md#modifiedon)
- [questionId](index.TemplateQuestion.md#questionid)
- [templateId](index.TemplateQuestion.md#templateid)
- [weight](index.TemplateQuestion.md#weight)

## Constructors

### constructor

• **new TemplateQuestion**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`TemplateQuestion`](index.TemplateQuestion.md)\> |

#### Inherited from

UserModifiableEntity<TemplateQuestion\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### dependentOnQuestionId

• **dependentOnQuestionId**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L71)

___

### displayOrder

• `Optional` **displayOrder**: `number`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L19)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L77)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L83)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L13)

___

### isMandatory

• `Optional` **isMandatory**: `boolean`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L25)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### questionId

• **questionId**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L58)

___

### templateId

• **templateId**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L46)

___

### weight

• `Optional` **weight**: `number`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/template-questions.model.ts#L34)
