[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / CognitoPreVerifyFn

# Interface: CognitoPreVerifyFn

## Callable

### CognitoPreVerifyFn

▸ **CognitoPreVerifyFn**(`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<``null`` \| `IAuthUser`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `Profile` |
| `user` | ``null`` \| `IAuthUser` |

#### Returns

`Promise`<``null`` \| `IAuthUser`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:193](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/6c16af104/services/authentication-service/src/providers/types.ts#L193)
