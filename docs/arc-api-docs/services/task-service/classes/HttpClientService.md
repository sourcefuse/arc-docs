[@sourceloop/task-service](../README.md) / [Exports](../modules.md) / HttpClientService

# Class: HttpClientService

## Table of contents

### Constructors

- [constructor](HttpClientService.md#constructor)

### Methods

- [delete](HttpClientService.md#delete)
- [get](HttpClientService.md#get)
- [handleRes](HttpClientService.md#handleres)
- [post](HttpClientService.md#post)
- [postFormData](HttpClientService.md#postformdata)
- [processOptions](HttpClientService.md#processoptions)
- [serialize](HttpClientService.md#serialize)

## Constructors

### constructor

• **new HttpClientService**()

## Methods

### delete

▸ **delete**(`url`, `options?`): `Promise`<`unknown`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |
| `options?` | [`HttpOptions`](../modules.md#httpoptions) |

#### Returns

`Promise`<`unknown`\>

#### Defined in

[services/task-service/src/services/http.service.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L23)

___

### get

▸ **get**<`T`\>(`url`, `options?`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |
| `options?` | [`HttpOptions`](../modules.md#httpoptions) |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/http.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L16)

___

### handleRes

▸ `Private` **handleRes**<`T`\>(`res`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `res` | `Response` |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/http.service.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L76)

___

### post

▸ **post**<`T`\>(`url`, `body`, `options?`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |
| `body` | `AnyObject` |
| `options?` | [`HttpOptions`](../modules.md#httpoptions) |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/http.service.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L31)

___

### postFormData

▸ **postFormData**<`T`\>(`url`, `body`, `options?`): `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |
| `body` | `FormData` |
| `options?` | [`HttpOptions`](../modules.md#httpoptions) |

#### Returns

`Promise`<`T`\>

#### Defined in

[services/task-service/src/services/http.service.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L44)

___

### processOptions

▸ `Private` **processOptions**(`url`, `options?`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `url` | `string` |
| `options?` | [`HttpOptions`](../modules.md#httpoptions) |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `headers` | {} |
| `url` | `string` |

#### Defined in

[services/task-service/src/services/http.service.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L56)

___

### serialize

▸ `Private` **serialize**(`obj`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `obj` | `AnyObject` |

#### Returns

`string`

#### Defined in

[services/task-service/src/services/http.service.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/services/http.service.ts#L88)
