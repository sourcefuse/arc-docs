[@sourceloop/audit-service](../README.md) / [Exports](../modules.md) / QuerySelectedFilesProvider

# Class: QuerySelectedFilesProvider

## Implements

- `Provider`<[`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn)\>

## Table of contents

### Constructors

- [constructor](QuerySelectedFilesProvider.md#constructor)

### Properties

- [application](QuerySelectedFilesProvider.md#application)

### Methods

- [getFileContent](QuerySelectedFilesProvider.md#getfilecontent)
- [querySelectedFiles](QuerySelectedFilesProvider.md#queryselectedfiles)
- [value](QuerySelectedFilesProvider.md#value)

## Constructors

### constructor

• **new QuerySelectedFilesProvider**(`application`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `AuditServiceApplication` |

#### Defined in

[services/audit-service/src/services/query-selected-files.service.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/services/query-selected-files.service.ts#L19)

## Properties

### application

• `Private` **application**: `AuditServiceApplication`

#### Defined in

[services/audit-service/src/services/query-selected-files.service.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/services/query-selected-files.service.ts#L21)

## Methods

### getFileContent

▸ **getFileContent**(`fileName`): `Promise`<`undefined` \| `AuditLog`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `fileName` | `string` |

#### Returns

`Promise`<`undefined` \| `AuditLog`[]\>

#### Defined in

[services/audit-service/src/services/query-selected-files.service.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/services/query-selected-files.service.ts#L66)

___

### querySelectedFiles

▸ **querySelectedFiles**(`fileName`, `filter`): `Promise`<`AuditLog`[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `fileName` | `string` |
| `filter` | `Filter`<`AuditLog`\> |

#### Returns

`Promise`<`AuditLog`[]\>

#### Defined in

[services/audit-service/src/services/query-selected-files.service.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/services/query-selected-files.service.ts#L30)

___

### value

▸ **value**(): [`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn)

#### Returns

[`QuerySelectedFilesFn`](../modules.md#queryselectedfilesfn)

#### Implementation of

Provider.value

#### Defined in

[services/audit-service/src/services/query-selected-files.service.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/audit-service/src/services/query-selected-files.service.ts#L24)
