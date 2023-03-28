[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / InstagramPreVerifyFn

# Interface: InstagramPreVerifyFn

## Callable

### InstagramPreVerifyFn

▸ **InstagramPreVerifyFn**(`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<``null`` \| `IAuthUser`\>

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

[services/authentication-service/src/providers/types.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/providers/types.ts#L53)
