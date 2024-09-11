[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / WebhookDTO

# Class: WebhookDTO<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`WebhookPayload`](../modules.md#webhookpayload)[``"data"``] |

## Hierarchy

- `Model`

  ↳ **`WebhookDTO`**

## Table of contents

### Constructors

- [constructor](WebhookDTO.md#constructor)

### Properties

- [data](WebhookDTO.md#data)
- [initiatorId](WebhookDTO.md#initiatorid)
- [type](WebhookDTO.md#type)

## Constructors

### constructor

• **new WebhookDTO**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Object` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`WebhookDTO`](WebhookDTO.md)<`T`\>\> |

#### Overrides

Model.constructor

#### Defined in

[services/tenant-management-service/src/models/dtos/webhook-dto.model.ts:24](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/webhook-dto.model.ts#L24)

## Properties

### data

• **data**: `T`

#### Defined in

[services/tenant-management-service/src/models/dtos/webhook-dto.model.ts:16](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/webhook-dto.model.ts#L16)

___

### initiatorId

• **initiatorId**: `string`

#### Defined in

[services/tenant-management-service/src/models/dtos/webhook-dto.model.ts:10](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/webhook-dto.model.ts#L10)

___

### type

• **type**: `number`

#### Defined in

[services/tenant-management-service/src/models/dtos/webhook-dto.model.ts:22](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/models/dtos/webhook-dto.model.ts#L22)
