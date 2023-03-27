[@sourceloop/authentication-service](README.md) / Exports

# @sourceloop/authentication-service

## Table of contents

### Namespaces

- [AuthCodeBindings](modules/AuthCodeBindings.md)
- [AuthServiceBindings](modules/AuthServiceBindings.md)
- [SignUpBindings](modules/SignUpBindings.md)
- [VerifyBindings](modules/VerifyBindings.md)

### Enumerations

- [OtpMethodType](enums/OtpMethodType.md)
- [PermissionKey](enums/PermissionKey.md)

### Classes

- [AppleOauth2SignupProvider](classes/AppleOauth2SignupProvider.md)
- [ApplePostVerifyProvider](classes/ApplePostVerifyProvider.md)
- [ApplePreVerifyProvider](classes/ApplePreVerifyProvider.md)
- [AuthClient](classes/AuthClient.md)
- [AuthClientRepository](classes/AuthClientRepository.md)
- [AuthenticationServiceComponent](classes/AuthenticationServiceComponent.md)
- [AzureAdSignupProvider](classes/AzureAdSignupProvider.md)
- [AzurePostVerifyProvider](classes/AzurePostVerifyProvider.md)
- [AzurePreVerifyProvider](classes/AzurePreVerifyProvider.md)
- [CodeWriterProvider](classes/CodeWriterProvider.md)
- [CognitoOauth2SignupProvider](classes/CognitoOauth2SignupProvider.md)
- [CognitoPostVerifyProvider](classes/CognitoPostVerifyProvider.md)
- [CognitoPreVerifyProvider](classes/CognitoPreVerifyProvider.md)
- [FacebookOauth2SignupProvider](classes/FacebookOauth2SignupProvider.md)
- [FacebookPostVerifyProvider](classes/FacebookPostVerifyProvider.md)
- [FacebookPreVerifyProvider](classes/FacebookPreVerifyProvider.md)
- [ForgetPasswordDto](classes/ForgetPasswordDto.md)
- [ForgetPasswordResponseDto](classes/ForgetPasswordResponseDto.md)
- [ForgotPasswordProvider](classes/ForgotPasswordProvider.md)
- [GoogleOauth2SignupProvider](classes/GoogleOauth2SignupProvider.md)
- [GooglePostVerifyProvider](classes/GooglePostVerifyProvider.md)
- [GooglePreVerifyProvider](classes/GooglePreVerifyProvider.md)
- [InstagramOauth2SignupProvider](classes/InstagramOauth2SignupProvider.md)
- [InstagramPostVerifyProvider](classes/InstagramPostVerifyProvider.md)
- [InstagramPreVerifyProvider](classes/InstagramPreVerifyProvider.md)
- [JWTAsymmetricSignerProvider](classes/JWTAsymmetricSignerProvider.md)
- [JWTAsymmetricVerifierProvider](classes/JWTAsymmetricVerifierProvider.md)
- [JWTSymmetricSignerProvider](classes/JWTSymmetricSignerProvider.md)
- [JWTSymmetricVerifierProvider](classes/JWTSymmetricVerifierProvider.md)
- [JwtPayloadProvider](classes/JwtPayloadProvider.md)
- [KeyCloakPostVerifyProvider](classes/KeyCloakPostVerifyProvider.md)
- [KeyCloakPreVerifyProvider](classes/KeyCloakPreVerifyProvider.md)
- [KeyCloakSignupProvider](classes/KeyCloakSignupProvider.md)
- [LocalPreSignupProvider](classes/LocalPreSignupProvider.md)
- [LocalSignupProvider](classes/LocalSignupProvider.md)
- [LocalUserProfileDto](classes/LocalUserProfileDto.md)
- [LoginHelperService](classes/LoginHelperService.md)
- [OauthCodeReaderProvider](classes/OauthCodeReaderProvider.md)
- [Otp](classes/Otp.md)
- [OtpCache](classes/OtpCache.md)
- [OtpCacheRepository](classes/OtpCacheRepository.md)
- [OtpGenerateProvider](classes/OtpGenerateProvider.md)
- [OtpProvider](classes/OtpProvider.md)
- [OtpRepository](classes/OtpRepository.md)
- [OtpSenderProvider](classes/OtpSenderProvider.md)
- [OtpService](classes/OtpService.md)
- [RefreshToken](classes/RefreshToken.md)
- [RefreshTokenRepository](classes/RefreshTokenRepository.md)
- [RefreshTokenRequest](classes/RefreshTokenRequest.md)
- [ResetPasswordWithClient](classes/ResetPasswordWithClient.md)
- [RevokedToken](classes/RevokedToken.md)
- [RevokedTokenRepository](classes/RevokedTokenRepository.md)
- [Role](classes/Role.md)
- [RoleRepository](classes/RoleRepository.md)
- [SamlPostVerifyProvider](classes/SamlPostVerifyProvider.md)
- [SamlPreVerifyProvider](classes/SamlPreVerifyProvider.md)
- [SamlSignupProvider](classes/SamlSignupProvider.md)
- [SignupBearerVerifyProvider](classes/SignupBearerVerifyProvider.md)
- [SignupRequest](classes/SignupRequest.md)
- [SignupRequestDto](classes/SignupRequestDto.md)
- [SignupRequestResponseDto](classes/SignupRequestResponseDto.md)
- [SignupTokenHandlerProvider](classes/SignupTokenHandlerProvider.md)
- [SignupWithTokenReponseDto](classes/SignupWithTokenReponseDto.md)
- [Tenant](classes/Tenant.md)
- [TenantConfig](classes/TenantConfig.md)
- [TenantConfigRepository](classes/TenantConfigRepository.md)
- [TenantRepository](classes/TenantRepository.md)
- [User](classes/User.md)
- [UserCredentials](classes/UserCredentials.md)
- [UserCredentialsRepository](classes/UserCredentialsRepository.md)
- [UserLevelPermission](classes/UserLevelPermission.md)
- [UserLevelPermissionRepository](classes/UserLevelPermissionRepository.md)
- [UserLevelResource](classes/UserLevelResource.md)
- [UserLevelResourceRepository](classes/UserLevelResourceRepository.md)
- [UserRepository](classes/UserRepository.md)
- [UserTenant](classes/UserTenant.md)
- [UserTenantRepository](classes/UserTenantRepository.md)

### Interfaces

- [ApplePostVerifyFn](interfaces/ApplePostVerifyFn.md)
- [ApplePreVerifyFn](interfaces/ApplePreVerifyFn.md)
- [AppleSignUpFn](interfaces/AppleSignUpFn.md)
- [AuthCodeGeneratorFn](interfaces/AuthCodeGeneratorFn.md)
- [AzureAdPostVerifyFn](interfaces/AzureAdPostVerifyFn.md)
- [AzureAdPreVerifyFn](interfaces/AzureAdPreVerifyFn.md)
- [AzureAdSignUpFn](interfaces/AzureAdSignUpFn.md)
- [CodeReaderFn](interfaces/CodeReaderFn.md)
- [CodeWriterFn](interfaces/CodeWriterFn.md)
- [CognitoPostVerifyFn](interfaces/CognitoPostVerifyFn.md)
- [CognitoPreVerifyFn](interfaces/CognitoPreVerifyFn.md)
- [CognitoSignUpFn](interfaces/CognitoSignUpFn.md)
- [ExternalTokens](interfaces/ExternalTokens.md)
- [FacebookPostVerifyFn](interfaces/FacebookPostVerifyFn.md)
- [FacebookPreVerifyFn](interfaces/FacebookPreVerifyFn.md)
- [FacebookSignUpFn](interfaces/FacebookSignUpFn.md)
- [ForgotPasswordHandlerFn](interfaces/ForgotPasswordHandlerFn.md)
- [GooglePostVerifyFn](interfaces/GooglePostVerifyFn.md)
- [GooglePreVerifyFn](interfaces/GooglePreVerifyFn.md)
- [GoogleSignUpFn](interfaces/GoogleSignUpFn.md)
- [IAuthClientDTO](interfaces/IAuthClientDTO.md)
- [IAuthServiceConfig](interfaces/IAuthServiceConfig.md)
- [IDeviceInfo](interfaces/IDeviceInfo.md)
- [IMfaConfig](interfaces/IMfaConfig.md)
- [IOtpConfig](interfaces/IOtpConfig.md)
- [InstagramPostVerifyFn](interfaces/InstagramPostVerifyFn.md)
- [InstagramPreVerifyFn](interfaces/InstagramPreVerifyFn.md)
- [InstagramSignUpFn](interfaces/InstagramSignUpFn.md)
- [JwtPayloadFn](interfaces/JwtPayloadFn.md)
- [KeyCloakPostVerifyFn](interfaces/KeyCloakPostVerifyFn.md)
- [KeyCloakPreVerifyFn](interfaces/KeyCloakPreVerifyFn.md)
- [KeyCloakSignUpFn](interfaces/KeyCloakSignUpFn.md)
- [MfaCheckFn](interfaces/MfaCheckFn.md)
- [OtpFn](interfaces/OtpFn.md)
- [OtpGenerateFn](interfaces/OtpGenerateFn.md)
- [OtpSenderFn](interfaces/OtpSenderFn.md)
- [PreSignupFn](interfaces/PreSignupFn.md)
- [SamlPostVerifyFn](interfaces/SamlPostVerifyFn.md)
- [SamlPreVerifyFn](interfaces/SamlPreVerifyFn.md)
- [SamlSignUpFn](interfaces/SamlSignUpFn.md)
- [SignupTokenHandlerFn](interfaces/SignupTokenHandlerFn.md)
- [UserCredentialsRelations](interfaces/UserCredentialsRelations.md)
- [UserRelations](interfaces/UserRelations.md)
- [UserSignupFn](interfaces/UserSignupFn.md)
- [UserTenantRelations](interfaces/UserTenantRelations.md)

### Type Aliases

- [JWTSignerFn](modules.md#jwtsignerfn)
- [JWTVerifierFn](modules.md#jwtverifierfn)
- [RoleWithRelations](modules.md#rolewithrelations)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [UserCredentialsWithRelations](modules.md#usercredentialswithrelations)
- [UserTenantWithRelations](modules.md#usertenantwithrelations)
- [UserWithRelations](modules.md#userwithrelations)

### Variables

- [AuthCacheSourceName](modules.md#authcachesourcename)
- [AuthDbSourceName](modules.md#authdbsourcename)
- [models](modules.md#models)
- [repositories](modules.md#repositories)
- [services](modules.md#services)

## Type Aliases

### JWTSignerFn

Ƭ **JWTSignerFn**<`T`\>: (`payload`: `T`, `options`: `SignOptions`) => `Promise`<`string`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`payload`, `options`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `payload` | `T` |
| `options` | `SignOptions` |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:208](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/providers/types.ts#L208)

___

### JWTVerifierFn

Ƭ **JWTVerifierFn**<`T`\>: (`token`: `string`, `options`: `VerifyOptions`) => `Promise`<`T`\>

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

▸ (`token`, `options`): `Promise`<`T`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `token` | `string` |
| `options` | `VerifyOptions` |

##### Returns

`Promise`<`T`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:212](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/providers/types.ts#L212)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md)

#### Defined in

[services/authentication-service/src/models/role.model.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/models/role.model.ts#L45)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md)

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/models/tenant.model.ts#L75)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/models/user-credentials.model.ts#L70)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/authentication-service/src/models/user-tenant.model.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/models/user-tenant.model.ts#L82)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/authentication-service/src/models/user.model.ts:128](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/models/user.model.ts#L128)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/authentication-service/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/types.ts#L20)

___

### AuthDbSourceName

• `Const` **AuthDbSourceName**: ``"AuthDB"``

#### Defined in

[services/authentication-service/src/types.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/types.ts#L19)

___

### models

• `Const` **models**: (typeof [`AuthClient`](classes/AuthClient.md) \| typeof [`OtpCache`](classes/OtpCache.md) \| typeof [`Otp`](classes/Otp.md) \| typeof [`RefreshToken`](classes/RefreshToken.md) \| typeof [`RevokedToken`](classes/RevokedToken.md) \| typeof [`Role`](classes/Role.md) \| typeof [`Tenant`](classes/Tenant.md) \| typeof [`TenantConfig`](classes/TenantConfig.md) \| typeof [`UserLevelPermission`](classes/UserLevelPermission.md) \| typeof [`UserTenant`](classes/UserTenant.md) \| typeof [`User`](classes/User.md) \| typeof [`UserCredentials`](classes/UserCredentials.md) \| typeof [`UserLevelResource`](classes/UserLevelResource.md) \| typeof [`ForgetPasswordDto`](classes/ForgetPasswordDto.md) \| typeof [`LocalUserProfileDto`](classes/LocalUserProfileDto.md) \| typeof [`RefreshTokenRequest`](classes/RefreshTokenRequest.md) \| typeof [`ResetPasswordWithClient`](classes/ResetPasswordWithClient.md) \| typeof [`SignupRequestDto`](classes/SignupRequestDto.md) \| typeof [`SignupRequestResponseDto`](classes/SignupRequestResponseDto.md) \| typeof [`SignupRequest`](classes/SignupRequest.md) \| typeof [`SignupWithTokenReponseDto`](classes/SignupWithTokenReponseDto.md))[]

#### Defined in

[services/authentication-service/src/models/index.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/models/index.ts#L52)

___

### repositories

• `Const` **repositories**: (typeof [`AuthClientRepository`](classes/AuthClientRepository.md) \| typeof [`OtpCacheRepository`](classes/OtpCacheRepository.md) \| typeof [`OtpRepository`](classes/OtpRepository.md) \| typeof [`RefreshTokenRepository`](classes/RefreshTokenRepository.md) \| typeof [`RevokedTokenRepository`](classes/RevokedTokenRepository.md) \| typeof [`RoleRepository`](classes/RoleRepository.md) \| typeof [`TenantRepository`](classes/TenantRepository.md) \| typeof [`TenantConfigRepository`](classes/TenantConfigRepository.md) \| typeof [`UserLevelPermissionRepository`](classes/UserLevelPermissionRepository.md) \| typeof [`UserTenantRepository`](classes/UserTenantRepository.md) \| typeof [`UserRepository`](classes/UserRepository.md) \| typeof [`UserCredentialsRepository`](classes/UserCredentialsRepository.md) \| typeof [`UserLevelResourceRepository`](classes/UserLevelResourceRepository.md))[]

#### Defined in

[services/authentication-service/src/repositories/index.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/repositories/index.ts#L33)

___

### services

• `Const` **services**: (typeof [`LoginHelperService`](classes/LoginHelperService.md) \| typeof [`OtpService`](classes/OtpService.md))[]

#### Defined in

[services/authentication-service/src/services/index.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/authentication-service/src/services/index.ts#L10)
