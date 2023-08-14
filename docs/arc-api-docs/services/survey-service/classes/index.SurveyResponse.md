[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyResponse

# Class: SurveyResponse

[index](../modules/index.md).SurveyResponse

## Hierarchy

- `UserModifiableEntity`<[`SurveyResponse`](index.SurveyResponse.md)\>

  ↳ **`SurveyResponse`**

## Table of contents

### Constructors

- [constructor](index.SurveyResponse.md#constructor)

### Properties

- [createdBy](index.SurveyResponse.md#createdby)
- [createdByUser](index.SurveyResponse.md#createdbyuser)
- [createdOn](index.SurveyResponse.md#createdon)
- [extId](index.SurveyResponse.md#extid)
- [extMetadata](index.SurveyResponse.md#extmetadata)
- [id](index.SurveyResponse.md#id)
- [modifiedBy](index.SurveyResponse.md#modifiedby)
- [modifiedByUser](index.SurveyResponse.md#modifiedbyuser)
- [modifiedOn](index.SurveyResponse.md#modifiedon)
- [surveyCycleId](index.SurveyResponse.md#surveycycleid)
- [surveyResponderId](index.SurveyResponse.md#surveyresponderid)
- [surveyResponseDetails](index.SurveyResponse.md#surveyresponsedetails)

## Constructors

### constructor

• **new SurveyResponse**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`SurveyResponse`](index.SurveyResponse.md)\> |

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

[services/survey-service/src/models/survey-response.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L50)

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

[services/survey-service/src/models/survey-response.model.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L58)

___

### extMetadata

• `Optional` **extMetadata**: `AnyObject`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L64)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L20)

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

[services/survey-service/src/models/survey-response.model.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L52)

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

[services/survey-service/src/models/survey-response.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L48)

___

### surveyResponderId

• **surveyResponderId**: `string`

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L34)

___

### surveyResponseDetails

• `Optional` **surveyResponseDetails**: [`SurveyResponseDetail`](index.SurveyResponseDetail.md)[]

#### Defined in

[services/survey-service/src/models/survey-response.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/models/survey-response.model.ts#L70)
