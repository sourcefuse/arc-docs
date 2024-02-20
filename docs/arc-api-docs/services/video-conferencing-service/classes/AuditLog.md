[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AuditLog

# Class: AuditLog

Audit Logs Model to be Used for conditional audit log mixin.

## Hierarchy

- `CoreEntity`<[`AuditLog`](AuditLog.md)\>

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

#### Inherited from

CoreEntity<AuditLog\>.constructor

#### Defined in

packages/core/dist/models/core-entity.d.ts:3

## Properties

### actedAt

• **actedAt**: `Date`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L30)

___

### actedOn

• `Optional` **actedOn**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L36)

___

### action

• **action**: `Action`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L23)

___

### actionKey

• **actionKey**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L43)

___

### actor

• **actor**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L56)

___

### after

• `Optional` **after**: `object`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L66)

___

### before

• `Optional` **before**: `object`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L61)

___

### entityId

• **entityId**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L50)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/video-conferencing-service/src/models/audit.model.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/models/audit.model.ts#L17)
