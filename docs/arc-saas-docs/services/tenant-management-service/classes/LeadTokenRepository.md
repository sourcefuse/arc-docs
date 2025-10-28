[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / LeadTokenRepository

# Class: LeadTokenRepository<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`LeadToken`](LeadToken.md) = [`LeadToken`](LeadToken.md) |

## Hierarchy

- `DefaultKeyValueRepository`<`T`\>

  ↳ **`LeadTokenRepository`**

## Table of contents

### Constructors

- [constructor](LeadTokenRepository.md#constructor)

### Properties

- [leadToken](LeadTokenRepository.md#leadtoken)

## Constructors

### constructor

• **new LeadTokenRepository**<`T`\>(`dataSource`, `leadToken`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends [`LeadToken`](LeadToken.md)<`T`\> = [`LeadToken`](LeadToken.md) |

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `leadToken` | typeof `Entity` & { `prototype`: `T`  } |

#### Overrides

DefaultKeyValueRepository&lt;T\&gt;.constructor

#### Defined in

[services/tenant-management-service/src/repositories/lead-token.repository.ts:9](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead-token.repository.ts#L9)

## Properties

### leadToken

• `Private` `Readonly` **leadToken**: typeof `Entity` & { `prototype`: `T`  }

#### Defined in

[services/tenant-management-service/src/repositories/lead-token.repository.ts:13](https://github.com/sourcefuse/arc-saas/blob/27b4636/services/tenant-management-service/src/repositories/lead-token.repository.ts#L13)
