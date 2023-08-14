[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyDto

# Class: SurveyDto

[index](../modules/index.md).SurveyDto

## Hierarchy

- [`Survey`](index.Survey.md)<[`SurveyDto`](index.SurveyDto.md)\>

  ↳ **`SurveyDto`**

## Table of contents

### Constructors

- [constructor](index.SurveyDto.md#constructor)

### Properties

- [baseSurveyId](index.SurveyDto.md#basesurveyid)
- [createdBy](index.SurveyDto.md#createdby)
- [createdByName](index.SurveyDto.md#createdbyname)
- [createdByUser](index.SurveyDto.md#createdbyuser)
- [createdOn](index.SurveyDto.md#createdon)
- [endDate](index.SurveyDto.md#enddate)
- [existingTemplateId](index.SurveyDto.md#existingtemplateid)
- [extId](index.SurveyDto.md#extid)
- [extMetadata](index.SurveyDto.md#extmetadata)
- [id](index.SurveyDto.md#id)
- [isEnableWeights](index.SurveyDto.md#isenableweights)
- [modifiedBy](index.SurveyDto.md#modifiedby)
- [modifiedByUser](index.SurveyDto.md#modifiedbyuser)
- [modifiedOn](index.SurveyDto.md#modifiedon)
- [name](index.SurveyDto.md#name)
- [questions](index.SurveyDto.md#questions)
- [sections](index.SurveyDto.md#sections)
- [startDate](index.SurveyDto.md#startdate)
- [status](index.SurveyDto.md#status)
- [surveyCycles](index.SurveyDto.md#surveycycles)
- [surveyResponders](index.SurveyDto.md#surveyresponders)
- [surveyText](index.SurveyDto.md#surveytext)
- [uid](index.SurveyDto.md#uid)

## Constructors

### constructor

• **new SurveyDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyDto`](index.SurveyDto.md) & [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[Survey](index.Survey.md).[constructor](index.Survey.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### baseSurveyId

• `Optional` **baseSurveyId**: `string`

#### Inherited from

[Survey](index.Survey.md).[baseSurveyId](index.Survey.md#basesurveyid)

#### Defined in

[services/survey-service/src/models/survey.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L108)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[Survey](index.Survey.md).[createdBy](index.Survey.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdByName

• `Optional` **createdByName**: `string`

#### Defined in

[services/survey-service/src/models/survey-dto.model.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-dto.model.ts#L9)

___

### createdByUser

• `Optional` **createdByUser**: `string`

#### Inherited from

[Survey](index.Survey.md).[createdByUser](index.Survey.md#createdbyuser)

#### Defined in

[services/survey-service/src/models/survey.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L110)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[Survey](index.Survey.md).[createdOn](index.Survey.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### endDate

• **endDate**: `string`

#### Inherited from

[Survey](index.Survey.md).[endDate](index.Survey.md#enddate)

#### Defined in

[services/survey-service/src/models/survey.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L62)

___

### existingTemplateId

• `Optional` **existingTemplateId**: `string`

#### Defined in

[services/survey-service/src/models/survey-dto.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-dto.model.ts#L14)

___

### extId

• `Optional` **extId**: `string`

#### Inherited from

[Survey](index.Survey.md).[extId](index.Survey.md#extid)

#### Defined in

[services/survey-service/src/models/survey.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L118)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Inherited from

[Survey](index.Survey.md).[extMetadata](index.Survey.md#extmetadata)

#### Defined in

[services/survey-service/src/models/survey.model.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L124)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[Survey](index.Survey.md).[id](index.Survey.md#id)

#### Defined in

[services/survey-service/src/models/survey.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L25)

___

### isEnableWeights

• **isEnableWeights**: `boolean`

#### Inherited from

[Survey](index.Survey.md).[isEnableWeights](index.Survey.md#isenableweights)

#### Defined in

[services/survey-service/src/models/survey.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L75)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[Survey](index.Survey.md).[modifiedBy](index.Survey.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: `string`

#### Inherited from

[Survey](index.Survey.md).[modifiedByUser](index.Survey.md#modifiedbyuser)

#### Defined in

[services/survey-service/src/models/survey.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L112)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[Survey](index.Survey.md).[modifiedOn](index.Survey.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Inherited from

[Survey](index.Survey.md).[name](index.Survey.md#name)

#### Defined in

[services/survey-service/src/models/survey.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L41)

___

### questions

• **questions**: [`Question`](index.Question.md)[]

#### Inherited from

[Survey](index.Survey.md).[questions](index.Survey.md#questions)

#### Defined in

[services/survey-service/src/models/survey.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L84)

___

### sections

• **sections**: [`Section`](index.Section.md)[]

#### Inherited from

[Survey](index.Survey.md).[sections](index.Survey.md#sections)

#### Defined in

[services/survey-service/src/models/survey.model.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L99)

___

### startDate

• **startDate**: `string`

#### Inherited from

[Survey](index.Survey.md).[startDate](index.Survey.md#startdate)

#### Defined in

[services/survey-service/src/models/survey.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L55)

___

### status

• **status**: `string`

#### Inherited from

[Survey](index.Survey.md).[status](index.Survey.md#status)

#### Defined in

[services/survey-service/src/models/survey.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L68)

___

### surveyCycles

• **surveyCycles**: [`SurveyCycle`](index.SurveyCycle.md)[]

#### Inherited from

[Survey](index.Survey.md).[surveyCycles](index.Survey.md#surveycycles)

#### Defined in

[services/survey-service/src/models/survey.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L89)

___

### surveyResponders

• **surveyResponders**: [`SurveyResponder`](index.SurveyResponder.md)[]

#### Inherited from

[Survey](index.Survey.md).[surveyResponders](index.Survey.md#surveyresponders)

#### Defined in

[services/survey-service/src/models/survey.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L94)

___

### surveyText

• **surveyText**: `string`

#### Inherited from

[Survey](index.Survey.md).[surveyText](index.Survey.md#surveytext)

#### Defined in

[services/survey-service/src/models/survey.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L48)

___

### uid

• **uid**: `string`

#### Inherited from

[Survey](index.Survey.md).[uid](index.Survey.md#uid)

#### Defined in

[services/survey-service/src/models/survey.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey.model.ts#L31)
