[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyResponse

# Class: SurveyResponse

## Hierarchy

- `UserModifiableEntity`<[`SurveyResponse`](SurveyResponse.md)\>

  ↳ **`SurveyResponse`**

## Table of contents

### Constructors

- [constructor](SurveyResponse.md#constructor)

### Properties

- [createdBy](SurveyResponse.md#createdby)
- [createdByUser](SurveyResponse.md#createdbyuser)
- [createdOn](SurveyResponse.md#createdon)
- [extId](SurveyResponse.md#extid)
- [extMetadata](SurveyResponse.md#extmetadata)
- [id](SurveyResponse.md#id)
- [modifiedBy](SurveyResponse.md#modifiedby)
- [modifiedByUser](SurveyResponse.md#modifiedbyuser)
- [modifiedOn](SurveyResponse.md#modifiedon)
- [surveyCycleId](SurveyResponse.md#surveycycleid)
- [surveyResponderId](SurveyResponse.md#surveyresponderid)
- [surveyResponseDetails](SurveyResponse.md#surveyresponsedetails)

## Constructors

### constructor

• **new SurveyResponse**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyResponse`](SurveyResponse.md)\> |

#### Inherited from

UserModifiableEntity<SurveyResponse\>.constructor

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

### createdByUser

• `Optional` **createdByUser**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L50)

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### extId

• `Optional` **extId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L58)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L64)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L20)

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

[services/survey-service/src/models/survey-response.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L52)

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### surveyCycleId

• **surveyCycleId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L48)

___

### surveyResponderId

• **surveyResponderId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L34)

___

### surveyResponseDetails

• `Optional` **surveyResponseDetails**: [`SurveyResponseDetail`](SurveyResponseDetail.md)[]

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/models/survey-response.model.ts#L70)
