[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / CustomFilter

# Class: CustomFilter

## Hierarchy

- `Model`

  ↳ **`CustomFilter`**

## Table of contents

### Constructors

- [constructor](CustomFilter.md#constructor)

### Properties

- [actedOn](CustomFilter.md#actedon)
- [date](CustomFilter.md#date)
- [deleted](CustomFilter.md#deleted)
- [entityId](CustomFilter.md#entityid)

## Constructors

### constructor

• **new CustomFilter**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`CustomFilter`](CustomFilter.md)\> |

#### Overrides

Model.constructor

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/models/custom-filter.model.ts#L40)

## Properties

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/models/custom-filter.model.ts#L38)

___

### date

• `Optional` **date**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `fromDate` | `Date` |
| `toDate` | `Date` |

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/models/custom-filter.model.ts#L20)

___

### deleted

• `Optional` **deleted**: `boolean`

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/models/custom-filter.model.ts#L28)

___

### entityId

• `Optional` **entityId**: `string`

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/00e854d46/services/audit-service/src/models/custom-filter.model.ts#L33)
