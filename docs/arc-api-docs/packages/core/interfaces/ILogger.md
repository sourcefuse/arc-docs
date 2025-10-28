[@sourceloop/core](../README.md) / [Exports](../modules.md) / ILogger

# Interface: ILogger

## Table of contents

### Methods

- [debug](ILogger.md#debug)
- [error](ILogger.md#error)
- [info](ILogger.md#info)
- [log](ILogger.md#log)
- [warn](ILogger.md#warn)

## Methods

### debug

▸ **debug**(`msg`, `context?`, `statusCode?`, `key?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `msg` | `string` |
| `context?` | `string` |
| `statusCode?` | [`STATUS_CODE`](../enums/STATUS_CODE.md) |
| `key?` | `string` |

#### Returns

`void`

#### Defined in

[packages/core/src/components/logger-extension/logger.interface.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/logger-extension/logger.interface.ts#L28)

___

### error

▸ **error**(`msg`, `context?`, `statusCode?`, `key?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `msg` | `string` |
| `context?` | `string` |
| `statusCode?` | [`STATUS_CODE`](../enums/STATUS_CODE.md) |
| `key?` | `string` |

#### Returns

`void`

#### Defined in

[packages/core/src/components/logger-extension/logger.interface.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/logger-extension/logger.interface.ts#L22)

___

### info

▸ **info**(`msg`, `context?`, `statusCode?`, `key?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `msg` | `string` |
| `context?` | `string` |
| `statusCode?` | [`STATUS_CODE`](../enums/STATUS_CODE.md) |
| `key?` | `string` |

#### Returns

`void`

#### Defined in

[packages/core/src/components/logger-extension/logger.interface.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/logger-extension/logger.interface.ts#L10)

___

### log

▸ **log**(`info`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `info` | `LogMessage` |

#### Returns

`void`

#### Defined in

[packages/core/src/components/logger-extension/logger.interface.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/logger-extension/logger.interface.ts#L9)

___

### warn

▸ **warn**(`msg`, `context?`, `statusCode?`, `key?`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `msg` | `string` |
| `context?` | `string` |
| `statusCode?` | [`STATUS_CODE`](../enums/STATUS_CODE.md) |
| `key?` | `string` |

#### Returns

`void`

#### Defined in

[packages/core/src/components/logger-extension/logger.interface.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/components/logger-extension/logger.interface.ts#L16)
