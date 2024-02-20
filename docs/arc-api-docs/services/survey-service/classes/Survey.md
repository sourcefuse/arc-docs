[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / Survey

# Class: Survey<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`Survey`](Survey.md)\>

  ↳ **`Survey`**

  ↳↳ [`SurveyDto`](SurveyDto.md)

## Table of contents

### Constructors

- [constructor](Survey.md#constructor)

### Properties

- [baseSurveyId](Survey.md#basesurveyid)
- [createdBy](Survey.md#createdby)
- [createdByUser](Survey.md#createdbyuser)
- [createdOn](Survey.md#createdon)
- [endDate](Survey.md#enddate)
- [extId](Survey.md#extid)
- [extMetadata](Survey.md#extmetadata)
- [id](Survey.md#id)
- [isEnableWeights](Survey.md#isenableweights)
- [modifiedBy](Survey.md#modifiedby)
- [modifiedByUser](Survey.md#modifiedbyuser)
- [modifiedOn](Survey.md#modifiedon)
- [name](Survey.md#name)
- [questions](Survey.md#questions)
- [sections](Survey.md#sections)
- [startDate](Survey.md#startdate)
- [status](Survey.md#status)
- [surveyCycles](Survey.md#surveycycles)
- [surveyResponders](Survey.md#surveyresponders)
- [surveyText](Survey.md#surveytext)
- [uid](Survey.md#uid)

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
| `data?` | `Partial`<`T` & [`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |

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

[services/survey-service/src/models/survey.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L108)

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

[services/survey-service/src/models/survey.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L110)

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

[services/survey-service/src/models/survey.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L62)

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L118)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey.model.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L124)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L25)

___

### isEnableWeights

• **isEnableWeights**: `boolean`

#### Defined in

[services/survey-service/src/models/survey.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L75)

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

[services/survey-service/src/models/survey.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L112)

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

[services/survey-service/src/models/survey.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L41)

___

### questions

• **questions**: [`Question`](Question.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L84)

___

### sections

• **sections**: [`Section`](Section.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L99)

___

### startDate

• **startDate**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L55)

___

### status

• **status**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L68)

___

### surveyCycles

• **surveyCycles**: [`SurveyCycle`](SurveyCycle.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L89)

___

### surveyResponders

• **surveyResponders**: [`SurveyResponder`](SurveyResponder.md)[]

#### Defined in

[services/survey-service/src/models/survey.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L94)

___

### surveyText

• **surveyText**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L48)

___

### uid

• **uid**: `string`

#### Defined in

[services/survey-service/src/models/survey.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L31)
