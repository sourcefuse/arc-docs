[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyDto

# Class: SurveyDto

## Hierarchy

- [`Survey`](Survey.md)<[`SurveyDto`](SurveyDto.md)\>

  ↳ **`SurveyDto`**

## Table of contents

### Constructors

- [constructor](SurveyDto.md#constructor)

### Properties

- [baseSurveyId](SurveyDto.md#basesurveyid)
- [createdBy](SurveyDto.md#createdby)
- [createdByName](SurveyDto.md#createdbyname)
- [createdByUser](SurveyDto.md#createdbyuser)
- [createdOn](SurveyDto.md#createdon)
- [endDate](SurveyDto.md#enddate)
- [existingTemplateId](SurveyDto.md#existingtemplateid)
- [extId](SurveyDto.md#extid)
- [extMetadata](SurveyDto.md#extmetadata)
- [id](SurveyDto.md#id)
- [isEnableWeights](SurveyDto.md#isenableweights)
- [modifiedBy](SurveyDto.md#modifiedby)
- [modifiedByUser](SurveyDto.md#modifiedbyuser)
- [modifiedOn](SurveyDto.md#modifiedon)
- [name](SurveyDto.md#name)
- [questions](SurveyDto.md#questions)
- [sections](SurveyDto.md#sections)
- [startDate](SurveyDto.md#startdate)
- [status](SurveyDto.md#status)
- [surveyCycles](SurveyDto.md#surveycycles)
- [surveyResponders](SurveyDto.md#surveyresponders)
- [surveyText](SurveyDto.md#surveytext)
- [uid](SurveyDto.md#uid)

## Constructors

### constructor

• **new SurveyDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyDto`](SurveyDto.md) & [`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

[Survey](Survey.md).[constructor](Survey.md#constructor)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### baseSurveyId

• `Optional` **baseSurveyId**: `string`

#### Inherited from

[Survey](Survey.md).[baseSurveyId](Survey.md#basesurveyid)

#### Defined in

[services/survey-service/src/models/survey.model.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L108)

___

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

[Survey](Survey.md).[createdBy](Survey.md#createdby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdByName

• `Optional` **createdByName**: `string`

#### Defined in

[services/survey-service/src/models/survey-dto.model.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-dto.model.ts#L9)

___

### createdByUser

• `Optional` **createdByUser**: `string`

#### Inherited from

[Survey](Survey.md).[createdByUser](Survey.md#createdbyuser)

#### Defined in

[services/survey-service/src/models/survey.model.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L110)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

[Survey](Survey.md).[createdOn](Survey.md#createdon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### endDate

• **endDate**: `string`

#### Inherited from

[Survey](Survey.md).[endDate](Survey.md#enddate)

#### Defined in

[services/survey-service/src/models/survey.model.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L62)

___

### existingTemplateId

• `Optional` **existingTemplateId**: `string`

#### Defined in

[services/survey-service/src/models/survey-dto.model.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-dto.model.ts#L14)

___

### extId

• `Optional` **extId**: `string`

#### Inherited from

[Survey](Survey.md).[extId](Survey.md#extid)

#### Defined in

[services/survey-service/src/models/survey.model.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L118)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Inherited from

[Survey](Survey.md).[extMetadata](Survey.md#extmetadata)

#### Defined in

[services/survey-service/src/models/survey.model.ts:124](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L124)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[Survey](Survey.md).[id](Survey.md#id)

#### Defined in

[services/survey-service/src/models/survey.model.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L25)

___

### isEnableWeights

• **isEnableWeights**: `boolean`

#### Inherited from

[Survey](Survey.md).[isEnableWeights](Survey.md#isenableweights)

#### Defined in

[services/survey-service/src/models/survey.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L75)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

[Survey](Survey.md).[modifiedBy](Survey.md#modifiedby)

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedByUser

• `Optional` **modifiedByUser**: `string`

#### Inherited from

[Survey](Survey.md).[modifiedByUser](Survey.md#modifiedbyuser)

#### Defined in

[services/survey-service/src/models/survey.model.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L112)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

[Survey](Survey.md).[modifiedOn](Survey.md#modifiedon)

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### name

• **name**: `string`

#### Inherited from

[Survey](Survey.md).[name](Survey.md#name)

#### Defined in

[services/survey-service/src/models/survey.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L41)

___

### questions

• **questions**: [`Question`](Question.md)[]

#### Inherited from

[Survey](Survey.md).[questions](Survey.md#questions)

#### Defined in

[services/survey-service/src/models/survey.model.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L84)

___

### sections

• **sections**: [`Section`](Section.md)[]

#### Inherited from

[Survey](Survey.md).[sections](Survey.md#sections)

#### Defined in

[services/survey-service/src/models/survey.model.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L99)

___

### startDate

• **startDate**: `string`

#### Inherited from

[Survey](Survey.md).[startDate](Survey.md#startdate)

#### Defined in

[services/survey-service/src/models/survey.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L55)

___

### status

• **status**: `string`

#### Inherited from

[Survey](Survey.md).[status](Survey.md#status)

#### Defined in

[services/survey-service/src/models/survey.model.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L68)

___

### surveyCycles

• **surveyCycles**: [`SurveyCycle`](SurveyCycle.md)[]

#### Inherited from

[Survey](Survey.md).[surveyCycles](Survey.md#surveycycles)

#### Defined in

[services/survey-service/src/models/survey.model.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L89)

___

### surveyResponders

• **surveyResponders**: [`SurveyResponder`](SurveyResponder.md)[]

#### Inherited from

[Survey](Survey.md).[surveyResponders](Survey.md#surveyresponders)

#### Defined in

[services/survey-service/src/models/survey.model.ts:94](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L94)

___

### surveyText

• **surveyText**: `string`

#### Inherited from

[Survey](Survey.md).[surveyText](Survey.md#surveytext)

#### Defined in

[services/survey-service/src/models/survey.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L48)

___

### uid

• **uid**: `string`

#### Inherited from

[Survey](Survey.md).[uid](Survey.md#uid)

#### Defined in

[services/survey-service/src/models/survey.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey.model.ts#L31)
