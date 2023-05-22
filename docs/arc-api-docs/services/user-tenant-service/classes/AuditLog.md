[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / AuditLog

# Class: AuditLog

Audit Logs Model to be Used for conditional audit log mixin.

## Hierarchy

- `Entity`

  ↳ **`AuditLog`**

## Table of contents

### Constructors

- [constructor](AuditLog.md#constructor)

### Properties

- [actedAt](AuditLog.md#actedat)
- [actedOn](AuditLog.md#actedon)
- [action](AuditLog.md#action)
- [actionKey](AuditLog.md#actionkey)
- [actor](AuditLog.md#actor)
- [after](AuditLog.md#after)
- [before](AuditLog.md#before)
- [entityId](AuditLog.md#entityid)
- [id](AuditLog.md#id)

## Constructors

### constructor

• **new AuditLog**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`AuditLog`](AuditLog.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L67)

## Properties

### actedAt

• **actedAt**: `Date`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L29)

___

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L35)

___

### action

• **action**: `Action`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L22)

___

### actionKey

• **actionKey**: `string`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L42)

___

### actor

• **actor**: `string`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L55)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L65)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L60)

___

### entityId

• **entityId**: `string`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L49)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/audit.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/bc2553587/services/user-tenant-service/src/models/audit.model.ts#L16)
