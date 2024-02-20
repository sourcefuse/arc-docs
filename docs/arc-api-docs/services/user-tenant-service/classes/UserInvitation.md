[@sourceloop/user-tenant-service](../README.md) / [Exports](../modules.md) / UserInvitation

# Class: UserInvitation<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

## Hierarchy

- `UserModifiableEntity`<`T` & [`UserInvitation`](UserInvitation.md)\>

  ↳ **`UserInvitation`**

## Table of contents

### Constructors

- [constructor](UserInvitation.md#constructor)

### Properties

- [createdBy](UserInvitation.md#createdby)
- [createdOn](UserInvitation.md#createdon)
- [expiresOn](UserInvitation.md#expireson)
- [id](UserInvitation.md#id)
- [modifiedBy](UserInvitation.md#modifiedby)
- [modifiedOn](UserInvitation.md#modifiedon)
- [token](UserInvitation.md#token)
- [userTenantId](UserInvitation.md#usertenantid)

## Constructors

### constructor

• **new UserInvitation**<`T`\>(`data?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `DataObject`<`Model`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<`T` & [`UserInvitation`](UserInvitation.md)<`DataObject`<`Model`\>\>\> |

#### Inherited from

UserModifiableEntity<
  T & UserInvitation
\>.constructor

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:6

## Properties

### createdBy

• `Optional` **createdBy**: `string`

#### Inherited from

UserModifiableEntity.createdBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:4

___

### createdOn

• `Optional` **createdOn**: `Date`

#### Inherited from

UserModifiableEntity.createdOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:4

___

### expiresOn

• `Optional` **expiresOn**: `Date`

#### Defined in

[services/user-tenant-service/src/models/user-invitation.model.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-invitation.model.ts#L32)

___

### id

• `Optional` **id**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-invitation.model.ts:26](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-invitation.model.ts#L26)

___

### modifiedBy

• `Optional` **modifiedBy**: `string`

#### Inherited from

UserModifiableEntity.modifiedBy

#### Defined in

packages/core/dist/models/user-modifiable-entity.model.d.ts:5

___

### modifiedOn

• `Optional` **modifiedOn**: `Date`

#### Inherited from

UserModifiableEntity.modifiedOn

#### Defined in

packages/core/dist/models/base-entity.model.d.ts:5

___

### token

• `Optional` **token**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-invitation.model.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-invitation.model.ts#L38)

___

### userTenantId

• **userTenantId**: `string`

#### Defined in

[services/user-tenant-service/src/models/user-invitation.model.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/user-tenant-service/src/models/user-invitation.model.ts#L48)
