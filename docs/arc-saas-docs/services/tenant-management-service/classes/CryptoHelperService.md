[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / CryptoHelperService

# Class: CryptoHelperService

## Table of contents

### Constructors

- [constructor](CryptoHelperService.md#constructor)

### Methods

- [generateHmacForWebhookVerification](CryptoHelperService.md#generatehmacforwebhookverification)
- [generateRandomString](CryptoHelperService.md#generaterandomstring)
- [generateTempToken](CryptoHelperService.md#generatetemptoken)
- [generateTempTokenForLead](CryptoHelperService.md#generatetemptokenforlead)
- [generateTempTokenForTenant](CryptoHelperService.md#generatetemptokenfortenant)

## Constructors

### constructor

• **new CryptoHelperService**()

## Methods

### generateHmacForWebhookVerification

▸ **generateHmacForWebhookVerification**(`payload`, `timestamp`, `secret`): `string`

The function generates an HMAC for webhook verification using a payload, timestamp, and secret.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | `string` | The payload is a string that contains the data that needs to be verified. It could be any information that is being sent in the webhook request, such as user details or transaction information. |
| `timestamp` | `number` | The timestamp parameter is a number representing the current time in milliseconds. It is used to ensure the uniqueness and freshness of the payload. |
| `secret` | `string` | The `secret` parameter is a string that is used as a secret key for generating the HMAC. It is a shared secret between the sender and receiver of the webhook. |

#### Returns

`string`

the HMAC (Hash-based Message Authentication Code) generated using the payload, timestamp,
and secret.

#### Defined in

[services/tenant-management-service/src/services/crypto-helper.service.ts:78](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/crypto-helper.service.ts#L78)

___

### generateRandomString

▸ **generateRandomString**(`length`): `string`

The function generates a random string of a specified length using random bytes.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `length` | `number` | The length parameter is a number that specifies the desired length of the random string to be generated. |

#### Returns

`string`

a randomly generated string of hexadecimal characters.

#### Defined in

[services/tenant-management-service/src/services/crypto-helper.service.ts:94](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/crypto-helper.service.ts#L94)

___

### generateTempToken

▸ **generateTempToken**<`T`\>(`payload`, `expiry?`): `string`

The function generates a temporary token using a payload and an optional expiry time.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `object` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | `T` | The `payload` parameter is an object that contains the data you want to include in the token. This data can be any valid JSON object. |
| `expiry?` | `number` | The `expiry` parameter is an optional parameter that specifies the expiration time for the generated token. It is a number that represents the duration in seconds after which the token will expire. If no value is provided for `expiry`, the token will expire after 5 seconds. |

#### Returns

`string`

a signed JWT token.

#### Defined in

[services/tenant-management-service/src/services/crypto-helper.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/crypto-helper.service.ts#L18)

___

### generateTempTokenForLead

▸ **generateTempTokenForLead**(`lead`, `permissions?`): `string`

The function generates a temporary token for a lead with optional permissions and a specified expiry
time.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `lead` | [`Lead`](Lead.md) | `undefined` | The `lead` parameter is an object that represents a lead. It likely contains properties such as `id` and `userTenantId` that are used to generate the temporary token. |
| `permissions` | `string`[] | `[]` | The `permissions` parameter is an optional array of strings that represents the permissions associated with the lead. It allows you to specify any additional permissions that should be included in the generated temporary token for the lead. |

#### Returns

`string`

the result of calling the `generateTempToken` function with two arguments: an object and a
number.

#### Defined in

[services/tenant-management-service/src/services/crypto-helper.service.ts:39](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/crypto-helper.service.ts#L39)

___

### generateTempTokenForTenant

▸ **generateTempTokenForTenant**(`tenant`, `permissions?`): `string`

The function generates a temporary token for a given tenant with optional permissions.

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `tenant` | [`Tenant`](Tenant.md) | `undefined` | The `tenant` parameter is an object that represents a tenant. It likely contains properties such as `id`, `name`, and other relevant information about the tenant. |
| `permissions` | `string`[] | `[]` | An optional array of strings representing the permissions that the generated token should have. |

#### Returns

`string`

the result of calling the `generateTempToken` function with an object as its argument.

#### Defined in

[services/tenant-management-service/src/services/crypto-helper.service.ts:58](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/tenant-management-service/src/services/crypto-helper.service.ts#L58)
