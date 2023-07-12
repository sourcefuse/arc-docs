[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / AuditLog

# Class: AuditLog

## Hierarchy

- `Entity`

  ↳ **`AuditLog`**

## Indexable

▪ [prop: `string`]: `any`

## Table of contents

### Constructors

- [constructor](AuditLog.md#constructor)

### Properties

- [actedAt](AuditLog.md#actedat)
- [actedOn](AuditLog.md#actedon)
- [action](AuditLog.md#action)
- [actionGroup](AuditLog.md#actiongroup)
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

[services/audit-service/src/models/audit-log.model.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L83)

## Properties

### actedAt

• **actedAt**: `Date`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L33)

___

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L39)

___

### action

• **action**: `Action`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L26)

___

### actionGroup

• `Optional` **actionGroup**: `string`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L75)

___

### actionKey

• **actionKey**: `string`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L46)

___

### actor

• **actor**: `string`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L59)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L69)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:64](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L64)

___

### entityId

• **entityId**: `string`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L53)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/audit-service/src/models/audit-log.model.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/audit-service/src/models/audit-log.model.ts#L20)
