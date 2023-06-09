[@sourceloop/core](README.md) / Exports

# @sourceloop/core

## Table of contents

### Namespaces

- [BearerVerifierBindings](modules/BearerVerifierBindings.md)
- [LOGGER](modules/LOGGER.md)
- [OASBindings](modules/OASBindings.md)
- [SFCoreBindings](modules/SFCoreBindings.md)
- [SwaggerAuthenticationBindings](modules/SwaggerAuthenticationBindings.md)
- [TenantUtilitiesBindings](modules/TenantUtilitiesBindings.md)

### Enumerations

- [AuthProvider](enums/AuthProvider.md)
- [AuthenticateErrorKeys](enums/AuthenticateErrorKeys.md)
- [BearerVerifierType](enums/BearerVerifierType.md)
- [ConfigKey](enums/ConfigKey.md)
- [Gender](enums/Gender.md)
- [HttpMethod](enums/HttpMethod.md)
- [LocaleKey](enums/LocaleKey.md)
- [RoleTypes](enums/RoleTypes.md)
- [STATUS\_CODE](enums/STATUS_CODE.md)
- [TenantStatus](enums/TenantStatus.md)
- [TenantUtilitiesErrorKeys](enums/TenantUtilitiesErrorKeys.md)
- [UserStatus](enums/UserStatus.md)

### Classes

- [AnyAdapter](classes/AnyAdapter.md)
- [AuthenticateSwaggerMiddlewareInterceptor](classes/AuthenticateSwaggerMiddlewareInterceptor.md)
- [BaseEntity](classes/BaseEntity.md)
- [BearerVerifierComponent](classes/BearerVerifierComponent.md)
- [CasbinSecureSequence](classes/CasbinSecureSequence.md)
- [CoreComponent](classes/CoreComponent.md)
- [DefaultSoftCrudRepository](classes/DefaultSoftCrudRepository.md)
- [DefaultTransactionalUserModifyRepository](classes/DefaultTransactionalUserModifyRepository.md)
- [DefaultUserModifyCrudRepository](classes/DefaultUserModifyCrudRepository.md)
- [FileExtensions](classes/FileExtensions.md)
- [HttpAuthenticationVerifierProvider](classes/HttpAuthenticationVerifierProvider.md)
- [LoggerExtensionComponent](classes/LoggerExtensionComponent.md)
- [RevokedToken](classes/RevokedToken.md)
- [RevokedTokenRepository](classes/RevokedTokenRepository.md)
- [SecureSequence](classes/SecureSequence.md)
- [ServiceSequence](classes/ServiceSequence.md)
- [SuccessResponse](classes/SuccessResponse.md)
- [SwaggerAuthenticationComponent](classes/SwaggerAuthenticationComponent.md)
- [TenantGuardService](classes/TenantGuardService.md)
- [TenantUtilitiesComponent](classes/TenantUtilitiesComponent.md)
- [UpsertResponse](classes/UpsertResponse.md)
- [UserModifiableEntity](classes/UserModifiableEntity.md)
- [ValueResponse](classes/ValueResponse.md)

### Interfaces

- [Adapter](interfaces/Adapter.md)
- [BearerVerifierConfig](interfaces/BearerVerifierConfig.md)
- [CoreConfig](interfaces/CoreConfig.md)
- [ExternalIdentifierEnabledEntity](interfaces/ExternalIdentifierEnabledEntity.md)
- [IAuthUserWithPermissions](interfaces/IAuthUserWithPermissions.md)
- [IBaseEntity](interfaces/IBaseEntity.md)
- [IBaseEntityConfig](interfaces/IBaseEntityConfig.md)
- [ICommand](interfaces/ICommand.md)
- [ILogger](interfaces/ILogger.md)
- [IServiceConfig](interfaces/IServiceConfig.md)
- [ITenantGuard](interfaces/ITenantGuard.md)
- [ITenantUtilitiesOptions](interfaces/ITenantUtilitiesOptions.md)
- [IUserModifiableEntity](interfaces/IUserModifiableEntity.md)
- [IUserModifiableEntityConfig](interfaces/IUserModifiableEntityConfig.md)
- [IUserPrefs](interfaces/IUserPrefs.md)
- [UserInToken](interfaces/UserInToken.md)

### Type Aliases

- [AbstractConstructor](modules.md#abstractconstructor)
- [AbstractConstructorWithGuard](modules.md#abstractconstructorwithguard)
- [EntityWithTenantId](modules.md#entitywithtenantid)
- [HttpAuthenticationVerifier](modules.md#httpauthenticationverifier)
- [ISwaggerAuthenticationConfig](modules.md#iswaggerauthenticationconfig)
- [OasHiddenApi](modules.md#oashiddenapi)
- [SecuritySchemeObjects](modules.md#securityschemeobjects)

### Variables

- [AuthCacheSourceName](modules.md#authcachesourcename)
- [BINDING\_PREFIX](modules.md#binding_prefix)
- [CONTENT\_TYPE](modules.md#content_type)
- [DisallowedRoles](modules.md#disallowedroles)
- [ErrorCodes](modules.md#errorcodes)
- [OPERATION\_SECURITY\_SPEC](modules.md#operation_security_spec)
- [OasKeyMap](modules.md#oaskeymap)
- [SECURITY\_SCHEME\_SPEC](modules.md#security_scheme_spec)
- [TenantUtilitiesNamespace](modules.md#tenantutilitiesnamespace)
- [X\_TS\_TYPE](modules.md#x_ts_type)

### Functions

- [BaseEntityMixin](modules.md#baseentitymixin)
- [TenantGuardMixin](modules.md#tenantguardmixin)
- [UserModifiableEntityMixin](modules.md#usermodifiableentitymixin)
- [getAge](modules.md#getage)
- [getDOBFromAge](modules.md#getdobfromage)
- [getErrorString](modules.md#geterrorstring)
- [rateLimitKeyGen](modules.md#ratelimitkeygen)
- [rateLimitKeyGenPublic](modules.md#ratelimitkeygenpublic)
- [tenantGuard](modules.md#tenantguard)

## Type Aliases

### AbstractConstructor

Ƭ **AbstractConstructor**<`T`\>: (...`args`: `any`[]) => `T`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

• (`...args`)

##### Parameters

| Name | Type |
| :------ | :------ |
| `...args` | `any`[] |

#### Defined in

[src/mixins/types.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/mixins/types.ts#L25)

___

### AbstractConstructorWithGuard

Ƭ **AbstractConstructorWithGuard**<`M`, `ID`\>: [`AbstractConstructor`](modules.md#abstractconstructor)<`WithTenantGuard`<`M`, `ID`\>\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends [`EntityWithTenantId`](modules.md#entitywithtenantid) |
| `ID` | `ID` |

#### Defined in

[src/components/tenant-utilities/types.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/tenant-utilities/types.ts#L67)

___

### EntityWithTenantId

Ƭ **EntityWithTenantId**: `Entity` & { `tenantId`: `string`  }

#### Defined in

[src/components/tenant-utilities/types.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/tenant-utilities/types.ts#L16)

___

### HttpAuthenticationVerifier

Ƭ **HttpAuthenticationVerifier**: (`username?`: `string`, `password?`: `string`) => `boolean`

#### Type declaration

▸ (`username?`, `password?`): `boolean`

##### Parameters

| Name | Type |
| :------ | :------ |
| `username?` | `string` |
| `password?` | `string` |

##### Returns

`boolean`

#### Defined in

[src/components/swagger-authentication/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/swagger-authentication/types.ts#L5)

___

### ISwaggerAuthenticationConfig

Ƭ **ISwaggerAuthenticationConfig**: `Object`

#### Defined in

[src/components/swagger-authentication/types.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/swagger-authentication/types.ts#L10)

___

### OasHiddenApi

Ƭ **OasHiddenApi**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `httpMethod` | [`HttpMethod`](enums/HttpMethod.md) |
| `path` | `string` |

#### Defined in

[src/keys.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/keys.ts#L25)

___

### SecuritySchemeObjects

Ƭ **SecuritySchemeObjects**: `Object`

#### Index signature

▪ [securityScheme: `string`]: `SecuritySchemeObject` \| `ReferenceObject`

#### Defined in

[src/security-specs.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/security-specs.ts#L7)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[src/components/bearer-verifier/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/bearer-verifier/types.ts#L5)

___

### BINDING\_PREFIX

• `Const` **BINDING\_PREFIX**: ``"sourceloop.services"``

#### Defined in

[src/constants/globals.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/constants/globals.ts#L5)

___

### CONTENT\_TYPE

• `Const` **CONTENT\_TYPE**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `FORM_URLENCODED` | `string` |
| `JSON` | `string` |
| `TEXT` | `string` |
| `TEXT_HTML` | `string` |

#### Defined in

[src/constants/content-type.constant.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/constants/content-type.constant.ts#L5)

___

### DisallowedRoles

• `Const` **DisallowedRoles**: [`RoleTypes`](enums/RoleTypes.md)[]

#### Defined in

[src/enums/roles.enum.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/enums/roles.enum.ts#L10)

___

### ErrorCodes

• `Const` **ErrorCodes**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `400` | { `description`: `string` = 'The syntax of the request entity is incorrect.' } |
| `400.description` | `string` |
| `401` | { `description`: `string` = 'Invalid Credentials.' } |
| `401.description` | `string` |
| `404` | { `description`: `string` = 'The entity requested does not exist.' } |
| `404.description` | `string` |
| `422` | { `description`: `string` = 'The syntax of the request entity is incorrect' } |
| `422.description` | `string` |

#### Defined in

[src/enums/status-codes.enum.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/enums/status-codes.enum.ts#L63)

___

### OPERATION\_SECURITY\_SPEC

• `Const` **OPERATION\_SECURITY\_SPEC**: { `HTTPBearer`: `never`[] = [] }[]

#### Defined in

[src/security-specs.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/security-specs.ts#L6)

___

### OasKeyMap

• `Const` **OasKeyMap**: { [key in HttpMethod]: string }

#### Defined in

[src/enums/http-oas.enum.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/enums/http-oas.enum.ts#L13)

___

### SECURITY\_SCHEME\_SPEC

• `Const` **SECURITY\_SCHEME\_SPEC**: [`SecuritySchemeObjects`](modules.md#securityschemeobjects)

#### Defined in

[src/security-specs.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/security-specs.ts#L10)

___

### TenantUtilitiesNamespace

• `Const` **TenantUtilitiesNamespace**: ``"sourceloop.tenant.utilities"``

#### Defined in

[src/components/tenant-utilities/keys.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/tenant-utilities/keys.ts#L5)

___

### X\_TS\_TYPE

• `Const` **X\_TS\_TYPE**: ``"x-ts-type"``

#### Defined in

[src/constants/globals.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/constants/globals.ts#L6)

## Functions

### BaseEntityMixin

▸ **BaseEntityMixin**<`T`, `S`\>(`base`, `config?`): typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IBaseEntity`](interfaces/IBaseEntity.md)\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> |
| `S` | extends `Constructor`<`T`\> \| [`AbstractConstructor`](modules.md#abstractconstructor)<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `base` | `S` |
| `config?` | [`IBaseEntityConfig`](interfaces/IBaseEntityConfig.md) |

#### Returns

typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IBaseEntity`](interfaces/IBaseEntity.md)\>

#### Defined in

[src/mixins/base-entity.mixin.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/mixins/base-entity.mixin.ts#L5)

___

### TenantGuardMixin

▸ **TenantGuardMixin**<`M`, `ID`, `Relations`, `S`\>(`superClass`): `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> & [`AbstractConstructorWithGuard`](modules.md#abstractconstructorwithguard)<`M`, `ID`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity`<`M`\> & { `tenantId`: `string`  } |
| `ID` | `ID` |
| `Relations` | extends `object` |
| `S` | extends [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `superClass` | `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> |

#### Returns

`S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> & [`AbstractConstructorWithGuard`](modules.md#abstractconstructorwithguard)<`M`, `ID`\>

#### Defined in

[src/components/tenant-utilities/mixins/tenant-guard.mixin.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/tenant-utilities/mixins/tenant-guard.mixin.ts#L20)

___

### UserModifiableEntityMixin

▸ **UserModifiableEntityMixin**<`T`, `S`\>(`base`, `config?`): typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IUserModifiableEntity`](interfaces/IUserModifiableEntity.md)\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> |
| `S` | extends `Constructor`<`T`\> \| [`AbstractConstructor`](modules.md#abstractconstructor)<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `base` | `S` |
| `config?` | [`IUserModifiableEntityConfig`](interfaces/IUserModifiableEntityConfig.md) |

#### Returns

typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IUserModifiableEntity`](interfaces/IUserModifiableEntity.md)\>

#### Defined in

[src/mixins/user-modifiable-entity.mixin.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/mixins/user-modifiable-entity.mixin.ts#L10)

___

### getAge

▸ **getAge**(`dob`): `number`

#### Parameters

| Name | Type |
| :------ | :------ |
| `dob` | `Date` |

#### Returns

`number`

#### Defined in

[src/utils.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/utils.ts#L23)

___

### getDOBFromAge

▸ **getDOBFromAge**(`age`): `Date`

#### Parameters

| Name | Type |
| :------ | :------ |
| `age` | `number` |

#### Returns

`Date`

#### Defined in

[src/utils.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/utils.ts#L29)

___

### getErrorString

▸ **getErrorString**(`error`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `error` | `any` |

#### Returns

`any`

#### Defined in

[src/utils.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/utils.ts#L12)

___

### rateLimitKeyGen

▸ **rateLimitKeyGen**(`req`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `req` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Returns

`string`

#### Defined in

[src/utils.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/utils.ts#L34)

___

### rateLimitKeyGenPublic

▸ **rateLimitKeyGenPublic**(`req`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `req` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Returns

`string`

#### Defined in

[src/utils.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/utils.ts#L40)

___

### tenantGuard

▸ **tenantGuard**(): <M, ID, Relations, S\>(`constructor`: `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\>) => `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\>

This function returns a class decorator that adds a tenant guard mixin
to the given repository class.

#### Returns

`fn`

▸ <`M`, `ID`, `Relations`, `S`\>(`constructor`): `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\>

##### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity`<`M`\> & { `tenantId`: `string`  } |
| `ID` | `ID` |
| `Relations` | extends `object` |
| `S` | extends [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> |

##### Parameters

| Name | Type |
| :------ | :------ |
| `constructor` | `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\> |

##### Returns

`S` & [`AbstractConstructor`](modules.md#abstractconstructor)<`DefaultCrudRepository`<`M`, `ID`, `Relations`\>\>

#### Defined in

[src/components/tenant-utilities/decorators/tenant-guard.decorator.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/77bb890a2/packages/core/src/components/tenant-utilities/decorators/tenant-guard.decorator.ts#L12)
