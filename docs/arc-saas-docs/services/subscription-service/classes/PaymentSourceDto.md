[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / PaymentSourceDto

# Class: PaymentSourceDto

## Hierarchy

- `Model`

  ↳ **`PaymentSourceDto`**

## Table of contents

### Constructors

- [constructor](PaymentSourceDto.md#constructor)

### Properties

- [card](PaymentSourceDto.md#card)
- [customerId](PaymentSourceDto.md#customerid)
- [id](PaymentSourceDto.md#id)
- [options](PaymentSourceDto.md#options)

## Constructors

### constructor

• **new PaymentSourceDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`PaymentSourceDto`](PaymentSourceDto.md)\> |

#### Overrides

Model.constructor

#### Defined in

[services/subscription-service/src/models/dto/payment-dto.model.ts:46](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/payment-dto.model.ts#L46)

## Properties

### card

• `Optional` **card**: [`ICard`](../interfaces/ICard.md)

#### Defined in

[services/subscription-service/src/models/dto/payment-dto.model.ts:40](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/payment-dto.model.ts#L40)

___

### customerId

• **customerId**: `string`

#### Defined in

[services/subscription-service/src/models/dto/payment-dto.model.ts:17](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/payment-dto.model.ts#L17)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/subscription-service/src/models/dto/payment-dto.model.ts:11](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/payment-dto.model.ts#L11)

___

### options

• `Optional` **options**: `AnyObject`

#### Defined in

[services/subscription-service/src/models/dto/payment-dto.model.ts:45](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/payment-dto.model.ts#L45)
