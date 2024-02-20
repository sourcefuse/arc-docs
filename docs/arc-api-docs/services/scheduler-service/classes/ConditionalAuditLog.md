[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / ConditionalAuditLog

# Class: ConditionalAuditLog

Audit Logs Model to be Used for conditional audit log mixin.

## Hierarchy

- `CoreEntity`<[`ConditionalAuditLog`](ConditionalAuditLog.md)\>

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

#### Inherited from

CoreEntity<ConditionalAuditLog\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### actedAt

• **actedAt**: `Date`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L30)

___

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L36)

___

### action

• **action**: `Action`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L23)

___

### actionKey

• **actionKey**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L43)

___

### actor

• **actor**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L56)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L66)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L61)

___

### entityId

• **entityId**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L50)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/scheduler-service/src/models/audit.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/audit.model.ts#L17)
