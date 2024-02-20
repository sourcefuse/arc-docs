[@sourceloop/feature-toggle](../README.md) / [Exports](../modules.md) / IAuthUserWithDisabledFeat

# Interface: IAuthUserWithDisabledFeat

## Hierarchy

- `IAuthUserWithPermissions`

  ↳ **`IAuthUserWithDisabledFeat`**

## Table of contents

### Properties

- [allowedResources](IAuthUserWithDisabledFeat.md#allowedresources)
- [authClientId](IAuthUserWithDisabledFeat.md#authclientid)
- [disabledFeatures](IAuthUserWithDisabledFeat.md#disabledfeatures)
- [email](IAuthUserWithDisabledFeat.md#email)
- [firstName](IAuthUserWithDisabledFeat.md#firstname)
- [id](IAuthUserWithDisabledFeat.md#id)
- [identifier](IAuthUserWithDisabledFeat.md#identifier)
- [lastName](IAuthUserWithDisabledFeat.md#lastname)
- [middleName](IAuthUserWithDisabledFeat.md#middlename)
- [passwordExpiryTime](IAuthUserWithDisabledFeat.md#passwordexpirytime)
- [permissions](IAuthUserWithDisabledFeat.md#permissions)
- [role](IAuthUserWithDisabledFeat.md#role)
- [tenantId](IAuthUserWithDisabledFeat.md#tenantid)
- [userPreferences](IAuthUserWithDisabledFeat.md#userpreferences)
- [userTenantId](IAuthUserWithDisabledFeat.md#usertenantid)

### Methods

- [getIdentifier](IAuthUserWithDisabledFeat.md#getidentifier)

## Properties

### allowedResources

• `Optional` **allowedResources**: `string`[]

#### Inherited from

IAuthUserWithPermissions.allowedResources

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:30

___

### authClientId

• **authClientId**: `number`

#### Inherited from

IAuthUserWithPermissions.authClientId

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:20

___

### disabledFeatures

• **disabledFeatures**: `string`[]

#### Defined in

[packages/feature-toggle/src/types.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/feature-toggle/src/types.ts#L23)

___

### email

• `Optional` **email**: `string`

#### Inherited from

IAuthUserWithPermissions.email

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:22

___

### firstName

• **firstName**: `string`

#### Inherited from

IAuthUserWithPermissions.firstName

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:24

___

### id

• `Optional` **id**: `string`

#### Inherited from

IAuthUserWithPermissions.id

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:17

___

### identifier

• `Optional` **identifier**: `string`

#### Inherited from

IAuthUserWithPermissions.identifier

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:18

___

### lastName

• **lastName**: `string`

#### Inherited from

IAuthUserWithPermissions.lastName

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:25

___

### middleName

• `Optional` **middleName**: `string`

#### Inherited from

IAuthUserWithPermissions.middleName

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:26

___

### passwordExpiryTime

• `Optional` **passwordExpiryTime**: `Date`

#### Inherited from

IAuthUserWithPermissions.passwordExpiryTime

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:29

___

### permissions

• **permissions**: `string`[]

#### Inherited from

IAuthUserWithPermissions.permissions

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:19

___

### role

• **role**: `string`

#### Inherited from

IAuthUserWithPermissions.role

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:23

___

### tenantId

• `Optional` **tenantId**: `string`

#### Inherited from

IAuthUserWithPermissions.tenantId

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:27

___

### userPreferences

• `Optional` **userPreferences**: `IUserPrefs`

#### Inherited from

IAuthUserWithPermissions.userPreferences

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:21

___

### userTenantId

• `Optional` **userTenantId**: `string`

#### Inherited from

IAuthUserWithPermissions.userTenantId

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:28

## Methods

### getIdentifier

▸ `Optional` **getIdentifier**(): `undefined` \| `string`

#### Returns

`undefined` \| `string`

#### Inherited from

IAuthUserWithPermissions.getIdentifier

#### Defined in

packages/core/dist/components/bearer-verifier/keys.d.ts:31
