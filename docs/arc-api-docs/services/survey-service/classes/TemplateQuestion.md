[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / TemplateQuestion

# Class: TemplateQuestion

## Hierarchy

- `UserModifiableEntity`<[`TemplateQuestion`](TemplateQuestion.md)\>

  ↳ **`TemplateQuestion`**

## Table of contents

### Constructors

- [constructor](TemplateQuestion.md#constructor)

### Properties

- [createdBy](TemplateQuestion.md#createdby)
- [createdOn](TemplateQuestion.md#createdon)
- [dependentOnQuestionId](TemplateQuestion.md#dependentonquestionid)
- [displayOrder](TemplateQuestion.md#displayorder)
- [extId](TemplateQuestion.md#extid)
- [extMetadata](TemplateQuestion.md#extmetadata)
- [id](TemplateQuestion.md#id)
- [isMandatory](TemplateQuestion.md#ismandatory)
- [modifiedBy](TemplateQuestion.md#modifiedby)
- [modifiedOn](TemplateQuestion.md#modifiedon)
- [questionId](TemplateQuestion.md#questionid)
- [templateId](TemplateQuestion.md#templateid)
- [weight](TemplateQuestion.md#weight)

## Constructors

### constructor

• **new TemplateQuestion**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`TemplateQuestion`](TemplateQuestion.md)\> |

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

[services/survey-service/src/models/template-questions.model.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L71)

___

### displayOrder

• `Optional` **displayOrder**: `number`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L19)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L77)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L83)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L13)

___

### isMandatory

• `Optional` **isMandatory**: `boolean`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L25)

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

[services/survey-service/src/models/template-questions.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L58)

___

### templateId

• **templateId**: `string`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L46)

___

### weight

• `Optional` **weight**: `number`

#### Defined in

[services/survey-service/src/models/template-questions.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/template-questions.model.ts#L34)
