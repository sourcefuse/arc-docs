[@sourceloop/feature-toggle-service](../README.md) / [Exports](../modules.md) / FeatureToggle

# Class: FeatureToggle

## Hierarchy

- `UserModifiableEntity`

  ↳ **`FeatureToggle`**

## Table of contents

### Constructors

- [constructor](FeatureToggle.md#constructor)

### Properties

- [createdBy](FeatureToggle.md#createdby)
- [createdOn](FeatureToggle.md#createdon)
- [featureKey](FeatureToggle.md#featurekey)
- [id](FeatureToggle.md#id)
- [modifiedBy](FeatureToggle.md#modifiedby)
- [modifiedOn](FeatureToggle.md#modifiedon)
- [status](FeatureToggle.md#status)
- [strategyEntityId](FeatureToggle.md#strategyentityid)
- [strategyKey](FeatureToggle.md#strategykey)

## Constructors

### constructor

• **new FeatureToggle**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`FeatureToggle`](FeatureToggle.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/feature-toggle-service/src/models/feature-toggle.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/feature-toggle-service/src/models/feature-toggle.model.ts#L42)

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:3

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:3

___

### featureKey

• **featureKey**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-toggle.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/feature-toggle-service/src/models/feature-toggle.model.ts#L23)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-toggle.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/feature-toggle-service/src/models/feature-toggle.model.ts#L17)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### status

• **status**: `boolean`

#### Defined in

[services/feature-toggle-service/src/models/feature-toggle.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/feature-toggle-service/src/models/feature-toggle.model.ts#L40)

___

### strategyEntityId

• **strategyEntityId**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-toggle.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/feature-toggle-service/src/models/feature-toggle.model.ts#L35)

___

### strategyKey

• **strategyKey**: `string`

#### Defined in

[services/feature-toggle-service/src/models/feature-toggle.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/services/feature-toggle-service/src/models/feature-toggle.model.ts#L29)
