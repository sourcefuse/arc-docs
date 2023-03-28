[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AuditLogsRepository

# Class: AuditLogsRepository

## Hierarchy

- `DefaultCrudRepository`<[`AuditLogs`](AuditLogs.md), typeof [`id`](AuditLogs.md#id)\>

  ↳ **`AuditLogsRepository`**

## Table of contents

### Constructors

- [constructor](AuditLogsRepository.md#constructor)

### Properties

- [getCurrentUser](AuditLogsRepository.md#getcurrentuser)

### Methods

- [create](AuditLogsRepository.md#create)
- [createAll](AuditLogsRepository.md#createall)
- [replaceById](AuditLogsRepository.md#replacebyid)
- [save](AuditLogsRepository.md#save)
- [update](AuditLogsRepository.md#update)
- [updateAll](AuditLogsRepository.md#updateall)
- [updateById](AuditLogsRepository.md#updatebyid)

## Constructors

### constructor

• **new AuditLogsRepository**(`dataSource`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `getCurrentUser` | `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultCrudRepository&lt;
  AuditLogs,
  typeof AuditLogs.prototype.id
\&gt;.constructor

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L25)

## Properties

### getCurrentUser

• `Private` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L29)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`AuditLogs`](AuditLogs.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`AuditLogs`](AuditLogs.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`AuditLogs`](AuditLogs.md)\>

#### Overrides

DefaultCrudRepository.create

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L36)

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`AuditLogs`](AuditLogs.md)[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`AuditLogs`](AuditLogs.md)\>[] |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`AuditLogs`](AuditLogs.md)[]\>

#### Overrides

DefaultCrudRepository.createAll

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L50)

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `number` |
| `data` | `DataObject`<[`AuditLogs`](AuditLogs.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Overrides

DefaultCrudRepository.replaceById

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L89)

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`AuditLogs`](AuditLogs.md)\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`AuditLogs`](AuditLogs.md) |
| `options?` | `AnyObject` |

#### Returns

`Promise`<[`AuditLogs`](AuditLogs.md)\>

#### Overrides

DefaultCrudRepository.save

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L66)

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`AuditLogs`](AuditLogs.md) |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Overrides

DefaultCrudRepository.update

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L70)

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`AuditLogs`](AuditLogs.md)\> |
| `where?` | `Where`<[`AuditLogs`](AuditLogs.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`Count`\>

#### Overrides

DefaultCrudRepository.updateAll

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L74)

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `number` |
| `data` | `DataObject`<[`AuditLogs`](AuditLogs.md)\> |
| `options?` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Overrides

DefaultCrudRepository.updateById

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L82)
