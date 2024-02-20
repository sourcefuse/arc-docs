[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / CustomFilter

# Class: CustomFilter

## Hierarchy

- `CoreModel`<[`CustomFilter`](CustomFilter.md)\>

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

#### Inherited from

CoreModel<CustomFilter\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/custom-filter.model.ts#L41)

___

### date

• `Optional` **date**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `fromDate` | `Date` |
| `toDate` | `Date` |

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/custom-filter.model.ts#L23)

___

### deleted

• `Optional` **deleted**: `boolean`

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/custom-filter.model.ts#L31)

___

### entityId

• `Optional` **entityId**: `string`

#### Defined in

[services/audit-service/src/models/custom-filter.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/audit-service/src/models/custom-filter.model.ts#L36)
