[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / Invoice

# Class: Invoice

## Hierarchy

- `UserModifiableEntity`

  ↳ **`Invoice`**

## Table of contents

### Constructors

- [constructor](Invoice.md#constructor)

### Properties

- [amount](Invoice.md#amount)
- [currencyCode](Invoice.md#currencycode)
- [dueDate](Invoice.md#duedate)
- [endDate](Invoice.md#enddate)
- [id](Invoice.md#id)
- [invoiceFile](Invoice.md#invoicefile)
- [startDate](Invoice.md#startdate)
- [status](Invoice.md#status)
- [tenantId](Invoice.md#tenantid)

## Constructors

### constructor

• **new Invoice**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`Invoice`](Invoice.md)\> |

#### Overrides

UserModifiableEntity.constructor

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:87](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L87)

## Properties

### amount

• **amount**: `number`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:40](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L40)

___

### currencyCode

• **currencyCode**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:48](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L48)

___

### dueDate

• **dueDate**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:62](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L62)

___

### endDate

• **endDate**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:33](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L33)

___

### id

• **id**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:17](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L17)

___

### invoiceFile

• `Optional` **invoiceFile**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:54](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L54)

___

### startDate

• **startDate**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:25](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L25)

___

### status

• **status**: [`InvoiceStatus`](../enums/InvoiceStatus.md)

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:73](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L73)

___

### tenantId

• **tenantId**: `string`

#### Defined in

[services/tenant-management-service/src/models/invoice.model.ts:85](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/invoice.model.ts#L85)
