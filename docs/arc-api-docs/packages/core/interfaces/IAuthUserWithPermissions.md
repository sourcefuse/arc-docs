[@sourceloop/core](../README.md) / [Exports](../modules.md) / IAuthUserWithPermissions

# Interface: IAuthUserWithPermissions<ID, TID, UTID\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `ID` | `string` |
| `TID` | `string` |
| `UTID` | `string` |

## Hierarchy

- `IAuthUser`

  ↳ **`IAuthUserWithPermissions`**

  ↳↳ [`UserInToken`](UserInToken.md)

## Table of contents

### Properties

- [allowedResources](IAuthUserWithPermissions.md#allowedresources)
- [authClientId](IAuthUserWithPermissions.md#authclientid)
- [email](IAuthUserWithPermissions.md#email)
- [firstName](IAuthUserWithPermissions.md#firstname)
- [id](IAuthUserWithPermissions.md#id)
- [identifier](IAuthUserWithPermissions.md#identifier)
- [lastName](IAuthUserWithPermissions.md#lastname)
- [middleName](IAuthUserWithPermissions.md#middlename)
- [passwordExpiryTime](IAuthUserWithPermissions.md#passwordexpirytime)
- [permissions](IAuthUserWithPermissions.md#permissions)
- [role](IAuthUserWithPermissions.md#role)
- [tenantId](IAuthUserWithPermissions.md#tenantid)
- [userPreferences](IAuthUserWithPermissions.md#userpreferences)
- [userTenantId](IAuthUserWithPermissions.md#usertenantid)

### Methods

- [getIdentifier](IAuthUserWithPermissions.md#getidentifier)

## Properties

### allowedResources

• `Optional` **allowedResources**: `string`[]

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L45)

___

### authClientId

• **authClientId**: `number`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L35)

___

### email

• `Optional` **email**: `string`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L37)

___

### firstName

• **firstName**: `string`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L39)

___

### id

• `Optional` **id**: `string`

#### Overrides

IAuthUser.id

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L32)

___

### identifier

• `Optional` **identifier**: `ID`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L33)

___

### lastName

• **lastName**: `string`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L40)

___

### middleName

• `Optional` **middleName**: `string`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L41)

___

### passwordExpiryTime

• `Optional` **passwordExpiryTime**: `Date`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L44)

___

### permissions

• **permissions**: `string`[]

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L34)

___

### role

• **role**: `string`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L38)

___

### tenantId

• `Optional` **tenantId**: `TID`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L42)

___

### userPreferences

• `Optional` **userPreferences**: [`IUserPrefs`](IUserPrefs.md)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L36)

___

### userTenantId

• `Optional` **userTenantId**: `UTID`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L43)

## Methods

### getIdentifier

▸ `Optional` **getIdentifier**(): `undefined` \| `string`

#### Returns

`undefined` \| `string`

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L46)
