[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / FeatureValues

# Class: FeatureValues

## Hierarchy

- `UserModifiableEntity`<[`FeatureValues`](FeatureValues.md)\>

  ↳ **`FeatureValues`**

## Table of contents

### Constructors

- [constructor](FeatureValues.md#constructor)

### Properties

- [createdBy](FeatureValues.md#createdby)
- [createdOn](FeatureValues.md#createdon)
- [featureKey](FeatureValues.md#featurekey)
- [id](FeatureValues.md#id)
- [modifiedBy](FeatureValues.md#modifiedby)
- [modifiedOn](FeatureValues.md#modifiedon)
- [status](FeatureValues.md#status)
- [strategyEntityId](FeatureValues.md#strategyentityid)
- [strategyKey](FeatureValues.md#strategykey)
- [value](FeatureValues.md#value)

## Constructors

### constructor

• **new FeatureValues**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`FeatureValues`](FeatureValues.md)\> |

#### Inherited from

UserModifiableEntity<FeatureValues\>.constructor

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

### featureKey

• **featureKey**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-values.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/models/feature-values.model.ts#L23)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-values.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/models/feature-values.model.ts#L17)

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

### status

• **status**: `boolean`

#### Defined in

[services/feature-toggle-service/src/models/feature-values.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/models/feature-values.model.ts#L40)

___

### strategyEntityId

• `Optional` **strategyEntityId**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-values.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/models/feature-values.model.ts#L35)

___

### strategyKey

• **strategyKey**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-values.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/models/feature-values.model.ts#L29)

___

### value

• **value**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-values.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/feature-toggle-service/src/models/feature-values.model.ts#L46)
