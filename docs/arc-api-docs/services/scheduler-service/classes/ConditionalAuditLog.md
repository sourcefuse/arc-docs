[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / ConditionalAuditLog

# Class: ConditionalAuditLog

Audit Logs Model to be Used for conditional audit log mixin.

## Hierarchy

- `Entity`

  ↳ **`ConditionalAuditLog`**

## Table of contents

### Constructors

- [constructor](ConditionalAuditLog.md#constructor)

### Properties

- [actedAt](ConditionalAuditLog.md#actedat)
- [actedOn](ConditionalAuditLog.md#actedon)
- [action](ConditionalAuditLog.md#action)
- [actionKey](ConditionalAuditLog.md#actionkey)
- [actor](ConditionalAuditLog.md#actor)
- [after](ConditionalAuditLog.md#after)
- [before](ConditionalAuditLog.md#before)
- [entityId](ConditionalAuditLog.md#entityid)
- [id](ConditionalAuditLog.md#id)

## Constructors

### constructor

• **new ConditionalAuditLog**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`ConditionalAuditLog`](ConditionalAuditLog.md)\> |

#### Overrides

Entity.constructor

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L67)

## Properties

### actedAt

• **actedAt**: `Date`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L29)

___

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L35)

___

### action

• **action**: `Action`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L22)

___

### actionKey

• **actionKey**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L42)

___

### actor

• **actor**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L55)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L65)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L60)

___

### entityId

• **entityId**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L49)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/b93c60ac7/services/scheduler-service/src/models/audit.model.ts#L16)
