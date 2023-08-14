[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / Survey

# Class: Survey<T\>

[index](../modules/index.md).Survey

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`Survey`](index.Survey.md)\>

  ↳ **`Survey`**

  ↳↳ [`SurveyDto`](index.SurveyDto.md)

## Table of contents

### Constructors

- [constructor](index.Survey.md#constructor)

### Properties

- [baseSurveyId](index.Survey.md#basesurveyid)
- [createdBy](index.Survey.md#createdby)
- [createdByUser](index.Survey.md#createdbyuser)
- [createdOn](index.Survey.md#createdon)
- [endDate](index.Survey.md#enddate)
- [extId](index.Survey.md#extid)
- [extMetadata](index.Survey.md#extmetadata)
- [id](index.Survey.md#id)
- [isEnableWeights](index.Survey.md#isenableweights)
- [modifiedBy](index.Survey.md#modifiedby)
- [modifiedByUser](index.Survey.md#modifiedbyuser)
- [modifiedOn](index.Survey.md#modifiedon)
- [name](index.Survey.md#name)
- [questions](index.Survey.md#questions)
- [sections](index.Survey.md#sections)
- [startDate](index.Survey.md#startdate)
- [status](index.Survey.md#status)
- [surveyCycles](index.Survey.md#surveycycles)
- [surveyResponders](index.Survey.md#surveyresponders)
- [surveyText](index.Survey.md#surveytext)
- [uid](index.Survey.md#uid)

## Constructors

### constructor

• **new Survey**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<
  T & Survey
\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### baseSurveyId

• `Optional` **baseSurveyId**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L108)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdByUser

• `Optional` **createdByUser**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L110)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### endDate

• **endDate**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L62)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L118)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey.model.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L124)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L25)

___

### isEnableWeights

• **isEnableWeights**: `boolean`

#### Defined in

[services/survey-service/src/models/survey.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L75)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L112)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L41)

___

### questions

• **questions**: [`Question`](index.Question.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L84)

___

### sections

• **sections**: [`Section`](index.Section.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L99)

___

### startDate

• **startDate**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L55)

___

### status

• **status**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L68)

___

### surveyCycles

• **surveyCycles**: [`SurveyCycle`](index.SurveyCycle.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L89)

___

### surveyResponders

• **surveyResponders**: [`SurveyResponder`](index.SurveyResponder.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L94)

___

### surveyText

• **surveyText**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L48)

___

### uid

• **uid**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L31)
