[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / UserSignupFn

# Interface: UserSignupFn<T, S\>

## Type parameters

| Name |
| :------ |
| `T` |
| `S` |

## Callable

### UserSignupFn

▸ **UserSignupFn**(`model`, `tokenInfo?`): `Promise`<`S`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | `T` & [`LocalUserProfileDto`](../classes/LocalUserProfileDto.md) |
| `tokenInfo?` | `AnyObject` |

#### Returns

`Promise`<`S`\>

#### Defined in

[services/authentication-service/src/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/types.ts#L35)
