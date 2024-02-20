[@sourceloop/core](../README.md) / [Exports](../modules.md) / UserInToken

# Interface: UserInToken

## Hierarchy

- [`IAuthUserWithPermissions`](IAuthUserWithPermissions.md)

  ↳ **`UserInToken`**

## Table of contents

### Properties

- [allowedResources](UserInToken.md#allowedresources)
- [authClientId](UserInToken.md#authclientid)
- [email](UserInToken.md#email)
- [firstName](UserInToken.md#firstname)
- [id](UserInToken.md#id)
- [identifier](UserInToken.md#identifier)
- [lastName](UserInToken.md#lastname)
- [middleName](UserInToken.md#middlename)
- [passwordExpiryTime](UserInToken.md#passwordexpirytime)
- [permissions](UserInToken.md#permissions)
- [role](UserInToken.md#role)
- [tenantId](UserInToken.md#tenantid)
- [tenantType](UserInToken.md#tenanttype)
- [userPreferences](UserInToken.md#userpreferences)
- [userTenantId](UserInToken.md#usertenantid)

### Methods

- [getIdentifier](UserInToken.md#getidentifier)

## Properties

### allowedResources

• `Optional` **allowedResources**: `string`[]

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[allowedResources](IAuthUserWithPermissions.md#allowedresources)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L45)

___

### authClientId

• **authClientId**: `number`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[authClientId](IAuthUserWithPermissions.md#authclientid)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L35)

___

### email

• `Optional` **email**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[email](IAuthUserWithPermissions.md#email)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L37)

___

### firstName

• **firstName**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[firstName](IAuthUserWithPermissions.md#firstname)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L39)

___

### id

• `Optional` **id**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[id](IAuthUserWithPermissions.md#id)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L32)

___

### identifier

• `Optional` **identifier**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[identifier](IAuthUserWithPermissions.md#identifier)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L33)

___

### lastName

• **lastName**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[lastName](IAuthUserWithPermissions.md#lastname)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L40)

___

### middleName

• `Optional` **middleName**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[middleName](IAuthUserWithPermissions.md#middlename)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L41)

___

### passwordExpiryTime

• `Optional` **passwordExpiryTime**: `Date`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[passwordExpiryTime](IAuthUserWithPermissions.md#passwordexpirytime)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L44)

___

### permissions

• **permissions**: `string`[]

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[permissions](IAuthUserWithPermissions.md#permissions)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L34)

___

### role

• **role**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[role](IAuthUserWithPermissions.md#role)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L38)

___

### tenantId

• `Optional` **tenantId**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[tenantId](IAuthUserWithPermissions.md#tenantid)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L42)

___

### tenantType

• `Optional` **tenantType**: `TenantType`

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L107)

___

### userPreferences

• `Optional` **userPreferences**: [`IUserPrefs`](IUserPrefs.md)

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[userPreferences](IAuthUserWithPermissions.md#userpreferences)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L36)

___

### userTenantId

• `Optional` **userTenantId**: `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[userTenantId](IAuthUserWithPermissions.md#usertenantid)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L43)

## Methods

### getIdentifier

▸ `Optional` **getIdentifier**(): `undefined` \| `string`

#### Returns

`undefined` \| `string`

#### Inherited from

[IAuthUserWithPermissions](IAuthUserWithPermissions.md).[getIdentifier](IAuthUserWithPermissions.md#getidentifier)

#### Defined in

[packages/core/src/components/bearer-verifier/keys.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/keys.ts#L46)
