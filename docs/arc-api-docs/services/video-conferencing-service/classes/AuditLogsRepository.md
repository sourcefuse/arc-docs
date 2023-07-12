[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AuditLogsRepository

# Class: AuditLogsRepository

Audit Logs Repository

This repository is usable for those who are using the audit trigger from the default migrations provided by this service.
This is deprecated and will be removed in future releases. Users are advised to utilize the `AuditLogRepository` in case needed (more instructions provided in the Audit Logs section inside README.md).

**`Deprecated`**

Use the [AuditLogRepository](AuditLogRepository.md) instead.
eg.
```ts
class MyRepository{
 constructor(
 @repository.getter('AuditLogRepository')
  public getAuditLogRepository: Getter<AuditLogRepository>
 ){
    // ...
 }
 // ...
}
```

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L44)

## Properties

### getCurrentUser

• `Private` `Readonly` **getCurrentUser**: `Getter`<`undefined` \| `IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Defined in

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L48)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:55](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L55)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L69)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L108)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L85)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L89)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L93)

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

[services/video-conferencing-service/src/repositories/audit-logs.repository.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/53060ad88/services/video-conferencing-service/src/repositories/audit-logs.repository.ts#L101)
