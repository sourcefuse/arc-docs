[@sourceloop/ctrl-plane-subscription-service](../README.md) / [Exports](../modules.md) / InvoiceDto

# Class: InvoiceDto

## Hierarchy

- `Model`

  ↳ **`InvoiceDto`**

## Table of contents

### Constructors

- [constructor](InvoiceDto.md#constructor)

### Properties

- [charges](InvoiceDto.md#charges)
- [currencyCode](InvoiceDto.md#currencycode)
- [customerId](InvoiceDto.md#customerid)
- [id](InvoiceDto.md#id)
- [options](InvoiceDto.md#options)
- [shippingAddress](InvoiceDto.md#shippingaddress)
- [status](InvoiceDto.md#status)

## Constructors

### constructor

• **new InvoiceDto**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`InvoiceDto`](InvoiceDto.md)\> |

#### Overrides

Model.constructor

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:53](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L53)

## Properties

### charges

• **charges**: [`ChargeDto`](ChargeDto.md)[]

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:45](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L45)

___

### currencyCode

• **currencyCode**: `string`

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:27](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L27)

___

### customerId

• **customerId**: `string`

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:21](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L21)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:15](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L15)

___

### options

• `Optional` **options**: `AnyObject`

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:32](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L32)

___

### shippingAddress

• **shippingAddress**: [`AddressDto`](AddressDto.md)

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:38](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L38)

___

### status

• `Optional` **status**: [`InvoiceStatus`](../modules.md#invoicestatus)

#### Defined in

[services/subscription-service/src/models/dto/invoice-dto.model.ts:51](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/subscription-service/src/models/dto/invoice-dto.model.ts#L51)
