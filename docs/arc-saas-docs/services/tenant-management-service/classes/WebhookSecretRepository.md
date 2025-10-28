[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / WebhookSecretRepository

# Class: WebhookSecretRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`WebhookSecret`](WebhookSecret.md) = [`WebhookSecret`](WebhookSecret.md) |

## Hierarchy

- `DefaultKeyValueRepository`<`T`\>

  ↳ **`WebhookSecretRepository`**

## Table of contents

### Constructors

- [constructor](WebhookSecretRepository.md#constructor)

### Properties

- [webhookSecret](WebhookSecretRepository.md#webhooksecret)

## Constructors

### constructor

• **new WebhookSecretRepository**<`T`\>(`dataSource`, `webhookSecret`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`WebhookSecret`](WebhookSecret.md)<`T`\> = [`WebhookSecret`](WebhookSecret.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `webhookSecret` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultKeyValueRepository&lt;T\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/webhook-secret.repository.ts:9](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/webhook-secret.repository.ts#L9)

## Properties

### webhookSecret

• `Private` `Readonly` **webhookSecret**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/webhook-secret.repository.ts:13](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/webhook-secret.repository.ts#L13)
