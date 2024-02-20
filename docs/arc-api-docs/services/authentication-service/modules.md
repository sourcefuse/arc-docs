[@sourceloop/authentication-service](README.md) / Exports

# @sourceloop/authentication-service

## Table of contents

### Namespaces

- [AuthCodeBindings](modules/AuthCodeBindings.md)
- [AuthServiceBindings](modules/AuthServiceBindings.md)
- [SignUpBindings](modules/SignUpBindings.md)
- [UserValidationServiceBindings](modules/UserValidationServiceBindings.md)
- [VerifyBindings](modules/VerifyBindings.md)

### Enumerations

- [ActiveUsersRange](enums/ActiveUsersRange.md)
- [LoginType](enums/LoginType.md)
- [ModelPropertyDescriptionString](enums/ModelPropertyDescriptionString.md)
- [OtpMethodType](enums/OtpMethodType.md)
- [PermissionKey](enums/PermissionKey.md)

### Classes

- [AppleOauth2SignupProvider](classes/AppleOauth2SignupProvider.md)
- [AppleOauth2VerifyProvider](classes/AppleOauth2VerifyProvider.md)
- [ApplePostVerifyProvider](classes/ApplePostVerifyProvider.md)
- [ApplePreVerifyProvider](classes/ApplePreVerifyProvider.md)
- [AuthClient](classes/AuthClient.md)
- [AuthClientRepository](classes/AuthClientRepository.md)
- [AuthRefreshTokenRequest](classes/AuthRefreshTokenRequest.md)
- [AuthSecureClient](classes/AuthSecureClient.md)
- [AuthSecureClientRepository](classes/AuthSecureClientRepository.md)
- [AuthTokenRequest](classes/AuthTokenRequest.md)
- [AuthUser](classes/AuthUser.md)
- [AuthenticationServiceComponent](classes/AuthenticationServiceComponent.md)
- [AzureAdSignupProvider](classes/AzureAdSignupProvider.md)
- [AzureAdVerifyProvider](classes/AzureAdVerifyProvider.md)
- [AzurePostVerifyProvider](classes/AzurePostVerifyProvider.md)
- [AzurePreVerifyProvider](classes/AzurePreVerifyProvider.md)
- [BearerTokenVerifyProvider](classes/BearerTokenVerifyProvider.md)
- [ClientAuthRequest](classes/ClientAuthRequest.md)
- [ClientPasswordVerifyProvider](classes/ClientPasswordVerifyProvider.md)
- [CodeWriterProvider](classes/CodeWriterProvider.md)
- [CognitoOauth2SignupProvider](classes/CognitoOauth2SignupProvider.md)
- [CognitoOauth2VerifyProvider](classes/CognitoOauth2VerifyProvider.md)
- [CognitoPostVerifyProvider](classes/CognitoPostVerifyProvider.md)
- [CognitoPreVerifyProvider](classes/CognitoPreVerifyProvider.md)
- [DeviceInfo](classes/DeviceInfo.md)
- [FacebookOauth2SignupProvider](classes/FacebookOauth2SignupProvider.md)
- [FacebookOauth2VerifyProvider](classes/FacebookOauth2VerifyProvider.md)
- [FacebookPostVerifyProvider](classes/FacebookPostVerifyProvider.md)
- [FacebookPreVerifyProvider](classes/FacebookPreVerifyProvider.md)
- [ForgetPasswordDto](classes/ForgetPasswordDto.md)
- [ForgetPasswordResponseDto](classes/ForgetPasswordResponseDto.md)
- [ForgotPasswordProvider](classes/ForgotPasswordProvider.md)
- [GoogleAuthenticationProvider](classes/GoogleAuthenticationProvider.md)
- [GoogleAuthenticatorVerifyProvider](classes/GoogleAuthenticatorVerifyProvider.md)
- [GoogleOauth2SignupProvider](classes/GoogleOauth2SignupProvider.md)
- [GoogleOauth2VerifyProvider](classes/GoogleOauth2VerifyProvider.md)
- [GooglePostVerifyProvider](classes/GooglePostVerifyProvider.md)
- [GooglePreVerifyProvider](classes/GooglePreVerifyProvider.md)
- [InstagramOauth2SignupProvider](classes/InstagramOauth2SignupProvider.md)
- [InstagramOauth2VerifyProvider](classes/InstagramOauth2VerifyProvider.md)
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
- [KeycloakAuthenticationProvider](classes/KeycloakAuthenticationProvider.md)
- [KeycloakVerifyProvider](classes/KeycloakVerifyProvider.md)
- [LocalPasswordVerifyProvider](classes/LocalPasswordVerifyProvider.md)
- [LocalPreSignupProvider](classes/LocalPreSignupProvider.md)
- [LocalSignupProvider](classes/LocalSignupProvider.md)
- [LocalUserProfileDto](classes/LocalUserProfileDto.md)
- [LoginActivity](classes/LoginActivity.md)
- [LoginActivityRepository](classes/LoginActivityRepository.md)
- [LoginHelperService](classes/LoginHelperService.md)
- [LoginRequest](classes/LoginRequest.md)
- [OauthCodeReaderProvider](classes/OauthCodeReaderProvider.md)
- [Otp](classes/Otp.md)
- [OtpCache](classes/OtpCache.md)
- [OtpCacheRepository](classes/OtpCacheRepository.md)
- [OtpGenerateProvider](classes/OtpGenerateProvider.md)
- [OtpLoginRequest](classes/OtpLoginRequest.md)
- [OtpProvider](classes/OtpProvider.md)
- [OtpRepository](classes/OtpRepository.md)
- [OtpSendRequest](classes/OtpSendRequest.md)
- [OtpSenderProvider](classes/OtpSenderProvider.md)
- [OtpService](classes/OtpService.md)
- [OtpVerifyProvider](classes/OtpVerifyProvider.md)
- [RefreshToken](classes/RefreshToken.md)
- [RefreshTokenRepository](classes/RefreshTokenRepository.md)
- [RefreshTokenRequest](classes/RefreshTokenRequest.md)
- [ResetPassword](classes/ResetPassword.md)
- [ResetPasswordWithClient](classes/ResetPasswordWithClient.md)
- [ResourceOwnerVerifyProvider](classes/ResourceOwnerVerifyProvider.md)
- [RevokedToken](classes/RevokedToken.md)
- [RevokedTokenRepository](classes/RevokedTokenRepository.md)
- [Role](classes/Role.md)
- [RoleRepository](classes/RoleRepository.md)
- [SamlPostVerifyProvider](classes/SamlPostVerifyProvider.md)
- [SamlPreVerifyProvider](classes/SamlPreVerifyProvider.md)
- [SamlSignupProvider](classes/SamlSignupProvider.md)
- [SamlVerifyProvider](classes/SamlVerifyProvider.md)
- [SecureClientPasswordVerifyProvider](classes/SecureClientPasswordVerifyProvider.md)
- [SecureResourceOwnerVerifyProvider](classes/SecureResourceOwnerVerifyProvider.md)
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
- [TokenResponse](classes/TokenResponse.md)
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
- [UserValidationProvider](classes/UserValidationProvider.md)

### Interfaces

- [ActiveUsersGroupData](interfaces/ActiveUsersGroupData.md)
- [CodeResponse](interfaces/CodeResponse.md)
- [ExternalTokens](interfaces/ExternalTokens.md)
- [IAuthClientDTO](interfaces/IAuthClientDTO.md)
- [IAuthServiceConfig](interfaces/IAuthServiceConfig.md)
- [IDeviceInfo](interfaces/IDeviceInfo.md)
- [IMfaConfig](interfaces/IMfaConfig.md)
- [IOtpConfig](interfaces/IOtpConfig.md)
- [IUserActivity](interfaces/IUserActivity.md)
- [OtpResponse](interfaces/OtpResponse.md)
- [QrCodeCheckResponse](interfaces/QrCodeCheckResponse.md)
- [QrCodeCreateResponse](interfaces/QrCodeCreateResponse.md)
- [UserCredentialsRelations](interfaces/UserCredentialsRelations.md)
- [UserRelations](interfaces/UserRelations.md)
- [UserTenantRelations](interfaces/UserTenantRelations.md)

### Type Aliases

- [ActorId](modules.md#actorid)
- [ApplePostVerifyFn](modules.md#applepostverifyfn)
- [ApplePreVerifyFn](modules.md#applepreverifyfn)
- [AppleSignUpFn](modules.md#applesignupfn)
- [AuthCodeGeneratorFn](modules.md#authcodegeneratorfn)
- [AuthenticationProviderFn](modules.md#authenticationproviderfn)
- [AzureAdPostVerifyFn](modules.md#azureadpostverifyfn)
- [AzureAdPreVerifyFn](modules.md#azureadpreverifyfn)
- [AzureAdSignUpFn](modules.md#azureadsignupfn)
- [CodeReaderFn](modules.md#codereaderfn)
- [CodeWriterFn](modules.md#codewriterfn)
- [CognitoPostVerifyFn](modules.md#cognitopostverifyfn)
- [CognitoPreVerifyFn](modules.md#cognitopreverifyfn)
- [CognitoSignUpFn](modules.md#cognitosignupfn)
- [FacebookPostVerifyFn](modules.md#facebookpostverifyfn)
- [FacebookPreVerifyFn](modules.md#facebookpreverifyfn)
- [FacebookSignUpFn](modules.md#facebooksignupfn)
- [ForgotPasswordHandlerFn](modules.md#forgotpasswordhandlerfn)
- [GooglePostVerifyFn](modules.md#googlepostverifyfn)
- [GooglePreVerifyFn](modules.md#googlepreverifyfn)
- [GoogleSignUpFn](modules.md#googlesignupfn)
- [InstagramPostVerifyFn](modules.md#instagrampostverifyfn)
- [InstagramPreVerifyFn](modules.md#instagrampreverifyfn)
- [InstagramSignUpFn](modules.md#instagramsignupfn)
- [JWTSignerFn](modules.md#jwtsignerfn)
- [JWTVerifierFn](modules.md#jwtverifierfn)
- [JwtPayloadFn](modules.md#jwtpayloadfn)
- [KeyCloakPostVerifyFn](modules.md#keycloakpostverifyfn)
- [KeyCloakPreVerifyFn](modules.md#keycloakpreverifyfn)
- [KeyCloakSignUpFn](modules.md#keycloaksignupfn)
- [MfaCheckFn](modules.md#mfacheckfn)
- [OtpFn](modules.md#otpfn)
- [OtpGenerateFn](modules.md#otpgeneratefn)
- [OtpSenderFn](modules.md#otpsenderfn)
- [PasswordDecryptionFn](modules.md#passworddecryptionfn)
- [PreSignupFn](modules.md#presignupfn)
- [RoleWithRelations](modules.md#rolewithrelations)
- [SamlPostVerifyFn](modules.md#samlpostverifyfn)
- [SamlPreVerifyFn](modules.md#samlpreverifyfn)
- [SamlSignUpFn](modules.md#samlsignupfn)
- [SignupTokenHandlerFn](modules.md#signuptokenhandlerfn)
- [TenantWithRelations](modules.md#tenantwithrelations)
- [UserCredentialsWithRelations](modules.md#usercredentialswithrelations)
- [UserSignupFn](modules.md#usersignupfn)
- [UserTenantWithRelations](modules.md#usertenantwithrelations)
- [UserValidationFn](modules.md#uservalidationfn)
- [UserWithRelations](modules.md#userwithrelations)

### Variables

- [AuthCacheSourceName](modules.md#authcachesourcename)
- [AuthDbSourceName](modules.md#authdbsourcename)
- [models](modules.md#models)
- [repositories](modules.md#repositories)
- [services](modules.md#services)

## Type Aliases

### ActorId

Ƭ **ActorId**: `Extract`<keyof [`UserTenant`](classes/UserTenant.md), `string`\>

#### Defined in

[services/authentication-service/src/types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/types.ts#L58)

___

### ApplePostVerifyFn

Ƭ **ApplePostVerifyFn**: (`profile`: `AppleStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `AppleStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L76)

___

### ApplePreVerifyFn

Ƭ **ApplePreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `AppleStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `AppleStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L69)

___

### AppleSignUpFn

Ƭ **AppleSignUpFn**: (`profile`: `AppleStrategy.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `AppleStrategy.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L65)

___

### AuthCodeGeneratorFn

Ƭ **AuthCodeGeneratorFn**: (`client`: [`AuthClient`](classes/AuthClient.md), `user`: [`AuthUser`](classes/AuthUser.md)) => `Promise`<`string`\>

#### Type declaration

▸ (`client`, `user`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `client` | [`AuthClient`](classes/AuthClient.md) |
| `user` | [`AuthUser`](classes/AuthUser.md) |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L131)

___

### AuthenticationProviderFn

Ƭ **AuthenticationProviderFn**: (`accessToken`: `string`) => `Promise`<`boolean`\>

#### Type declaration

▸ (`accessToken`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L44)

___

### AzureAdPostVerifyFn

Ƭ **AzureAdPostVerifyFn**: (`profile`: `AzureADStrategy.IProfile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `AzureADStrategy.IProfile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:159](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L159)

___

### AzureAdPreVerifyFn

Ƭ **AzureAdPreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `AzureADStrategy.IProfile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `AzureADStrategy.IProfile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L152)

___

### AzureAdSignUpFn

Ƭ **AzureAdSignUpFn**: (`profile`: `AzureADStrategy.IProfile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `AzureADStrategy.IProfile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L148)

___

### CodeReaderFn

Ƭ **CodeReaderFn**: (`token`: `string`) => `Promise`<`string`\>

#### Type declaration

▸ (`token`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `token` | `string` |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L114)

___

### CodeWriterFn

Ƭ **CodeWriterFn**: (`token`: `string`) => `Promise`<`string`\>

#### Type declaration

▸ (`token`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `token` | `string` |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L113)

___

### CognitoPostVerifyFn

Ƭ **CognitoPostVerifyFn**: (`profile`: `Cognito.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `Cognito.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:171](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L171)

___

### CognitoPreVerifyFn

Ƭ **CognitoPreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `Cognito.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `Cognito.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L164)

___

### CognitoSignUpFn

Ƭ **CognitoSignUpFn**: (`profile`: `Cognito.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `Cognito.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L176)

___

### FacebookPostVerifyFn

Ƭ **FacebookPostVerifyFn**: (`profile`: `FacebookStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `FacebookStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L92)

___

### FacebookPreVerifyFn

Ƭ **FacebookPreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `FacebookStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `FacebookStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L85)

___

### FacebookSignUpFn

Ƭ **FacebookSignUpFn**: (`profile`: `FacebookStrategy.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `FacebookStrategy.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L81)

___

### ForgotPasswordHandlerFn

Ƭ **ForgotPasswordHandlerFn**: (`dto`: `DataObject`<[`ForgetPasswordResponseDto`](classes/ForgetPasswordResponseDto.md)\>) => `Promise`<`unknown`\>

#### Type declaration

▸ (`dto`): `Promise`<`unknown`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `dto` | `DataObject`<[`ForgetPasswordResponseDto`](classes/ForgetPasswordResponseDto.md)\> |

##### Returns

`Promise`<`unknown`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:127](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L127)

___

### GooglePostVerifyFn

Ƭ **GooglePostVerifyFn**: (`profile`: `GoogleStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `GoogleStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L40)

___

### GooglePreVerifyFn

Ƭ **GooglePreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `GoogleStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `GoogleStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L33)

___

### GoogleSignUpFn

Ƭ **GoogleSignUpFn**: (`profile`: `GoogleStrategy.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `GoogleStrategy.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L29)

___

### InstagramPostVerifyFn

Ƭ **InstagramPostVerifyFn**: (`profile`: `InstagramStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `InstagramStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L60)

___

### InstagramPreVerifyFn

Ƭ **InstagramPreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `InstagramStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `InstagramStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L53)

___

### InstagramSignUpFn

Ƭ **InstagramSignUpFn**: (`profile`: `InstagramStrategy.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `InstagramStrategy.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L49)

___

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

[services/authentication-service/src/providers/types.ts:180](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L180)

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

[services/authentication-service/src/providers/types.ts:184](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L184)

___

### JwtPayloadFn

Ƭ **JwtPayloadFn**: (`user`: `IAuthUser`, `authClient`: `IAuthClient`, `tenantId?`: `string`) => `Promise`<`object`\>

#### Type declaration

▸ (`user`, `authClient`, `tenantId?`): `Promise`<`object`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `user` | `IAuthUser` |
| `authClient` | `IAuthClient` |
| `tenantId?` | `string` |

##### Returns

`Promise`<`object`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L121)

___

### KeyCloakPostVerifyFn

Ƭ **KeyCloakPostVerifyFn**: (`profile`: `Keycloak.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `Keycloak.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L108)

___

### KeyCloakPreVerifyFn

Ƭ **KeyCloakPreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `Keycloak.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `Keycloak.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L101)

___

### KeyCloakSignUpFn

Ƭ **KeyCloakSignUpFn**: (`profile`: `Keycloak.Profile`) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `Keycloak.Profile` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L97)

___

### MfaCheckFn

Ƭ **MfaCheckFn**: (`user`: [`AuthUser`](classes/AuthUser.md)) => `Promise`<`boolean`\>

#### Type declaration

▸ (`user`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `user` | [`AuthUser`](classes/AuthUser.md) |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L136)

___

### OtpFn

Ƭ **OtpFn**: (`user`: [`User`](classes/User.md)) => `Promise`<[`OtpResponse`](interfaces/OtpResponse.md)\>

#### Type declaration

▸ (`user`): `Promise`<[`OtpResponse`](interfaces/OtpResponse.md)\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `user` | [`User`](classes/User.md) |

##### Returns

`Promise`<[`OtpResponse`](interfaces/OtpResponse.md)\>

#### Defined in

[services/authentication-service/src/providers/types.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L140)

___

### OtpGenerateFn

Ƭ **OtpGenerateFn**: (`secret`: `string`) => `Promise`<`string`\>

#### Type declaration

▸ (`secret`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `secret` | `string` |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L138)

___

### OtpSenderFn

Ƭ **OtpSenderFn**: (`otp`: `string`, `user`: [`User`](classes/User.md)) => `Promise`<`void`\>

#### Type declaration

▸ (`otp`, `user`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `otp` | `string` |
| `user` | [`User`](classes/User.md) |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:142](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L142)

___

### PasswordDecryptionFn

Ƭ **PasswordDecryptionFn**: (`password`: `string`) => `Promise`<`string`\>

#### Type declaration

▸ (`password`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `password` | `string` |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L48)

___

### PreSignupFn

Ƭ **PreSignupFn**<`T`, `S`\>: (`request`: [`SignupRequestDto`](classes/SignupRequestDto.md)<`T`\>) => `Promise`<`S`\>

#### Type parameters

| Name |
| :------ |
| `T` |
| `S` |

#### Type declaration

▸ (`request`): `Promise`<`S`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `request` | [`SignupRequestDto`](classes/SignupRequestDto.md)<`T`\> |

##### Returns

`Promise`<`S`\>

#### Defined in

[services/authentication-service/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/types.ts#L34)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md)

#### Defined in

[services/authentication-service/src/models/role.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/role.model.ts#L63)

___

### SamlPostVerifyFn

Ƭ **SamlPostVerifyFn**: (`profile`: `SamlStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `SamlStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:197](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L197)

___

### SamlPreVerifyFn

Ƭ **SamlPreVerifyFn**: (`profile`: `SamlStrategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `SamlStrategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:192](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L192)

___

### SamlSignUpFn

Ƭ **SamlSignUpFn**: (`profile`: `SamlStrategy.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `SamlStrategy.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:188](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L188)

___

### SignupTokenHandlerFn

Ƭ **SignupTokenHandlerFn**: (`dto`: `DataObject`<[`SignupRequestResponseDto`](classes/SignupRequestResponseDto.md)\>) => `Promise`<`void`\>

#### Type declaration

▸ (`dto`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `dto` | `DataObject`<[`SignupRequestResponseDto`](classes/SignupRequestResponseDto.md)\> |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/providers/types.ts#L144)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md)

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/tenant.model.ts#L76)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-credentials.model.ts#L66)

___

### UserSignupFn

Ƭ **UserSignupFn**<`T`, `S`\>: (`model`: `T` & [`LocalUserProfileDto`](classes/LocalUserProfileDto.md), `tokenInfo?`: `AnyObject`) => `Promise`<`S`\>

#### Type parameters

| Name |
| :------ |
| `T` |
| `S` |

#### Type declaration

▸ (`model`, `tokenInfo?`): `Promise`<`S`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `model` | `T` & [`LocalUserProfileDto`](classes/LocalUserProfileDto.md) |
| `tokenInfo?` | `AnyObject` |

##### Returns

`Promise`<`S`\>

#### Defined in

[services/authentication-service/src/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/types.ts#L41)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/authentication-service/src/models/user-tenant.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user-tenant.model.ts#L81)

___

### UserValidationFn

Ƭ **UserValidationFn**: (`req`: [`AuthRefreshTokenRequest`](classes/AuthRefreshTokenRequest.md), `payload`: `AnyObject`, `signUpProvider`: `string`, `token?`: `string`) => `Promise`<`boolean`\>

#### Type declaration

▸ (`req`, `payload`, `signUpProvider`, `token?`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `req` | [`AuthRefreshTokenRequest`](classes/AuthRefreshTokenRequest.md) |
| `payload` | `AnyObject` |
| `signUpProvider` | `string` |
| `token?` | `string` |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/types.ts#L35)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/authentication-service/src/models/user.model.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/user.model.ts#L140)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/authentication-service/src/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/types.ts#L21)

___

### AuthDbSourceName

• `Const` **AuthDbSourceName**: ``"AuthDB"``

#### Defined in

[services/authentication-service/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/types.ts#L20)

___

### models

• `Const` **models**: (typeof [`AuthClient`](classes/AuthClient.md) \| typeof [`AuthSecureClient`](classes/AuthSecureClient.md) \| typeof [`User`](classes/User.md) \| typeof [`RefreshTokenRequest`](classes/RefreshTokenRequest.md) \| typeof [`SignupRequestDto`](classes/SignupRequestDto.md) \| typeof [`LoginActivity`](classes/LoginActivity.md) \| typeof [`OtpCache`](classes/OtpCache.md) \| typeof [`Otp`](classes/Otp.md) \| typeof [`RefreshToken`](classes/RefreshToken.md) \| typeof [`RevokedToken`](classes/RevokedToken.md) \| typeof [`Role`](classes/Role.md) \| typeof [`Tenant`](classes/Tenant.md) \| typeof [`TenantConfig`](classes/TenantConfig.md) \| typeof [`UserLevelPermission`](classes/UserLevelPermission.md) \| typeof [`UserTenant`](classes/UserTenant.md) \| typeof [`UserCredentials`](classes/UserCredentials.md) \| typeof [`UserLevelResource`](classes/UserLevelResource.md) \| typeof [`ForgetPasswordDto`](classes/ForgetPasswordDto.md) \| typeof [`LocalUserProfileDto`](classes/LocalUserProfileDto.md) \| typeof [`ResetPasswordWithClient`](classes/ResetPasswordWithClient.md) \| typeof [`SignupRequestResponseDto`](classes/SignupRequestResponseDto.md) \| typeof [`SignupRequest`](classes/SignupRequest.md) \| typeof [`SignupWithTokenReponseDto`](classes/SignupWithTokenReponseDto.md))[]

#### Defined in

[services/authentication-service/src/models/index.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/models/index.ts#L56)

___

### repositories

• `Const` **repositories**: (typeof [`LoginActivityRepository`](classes/LoginActivityRepository.md) \| typeof [`AuthClientRepository`](classes/AuthClientRepository.md) \| typeof [`AuthSecureClientRepository`](classes/AuthSecureClientRepository.md) \| typeof [`OtpCacheRepository`](classes/OtpCacheRepository.md) \| typeof [`OtpRepository`](classes/OtpRepository.md) \| typeof [`RefreshTokenRepository`](classes/RefreshTokenRepository.md) \| typeof [`RevokedTokenRepository`](classes/RevokedTokenRepository.md) \| typeof [`RoleRepository`](classes/RoleRepository.md) \| typeof [`TenantRepository`](classes/TenantRepository.md) \| typeof [`TenantConfigRepository`](classes/TenantConfigRepository.md) \| typeof [`UserLevelPermissionRepository`](classes/UserLevelPermissionRepository.md) \| typeof [`UserTenantRepository`](classes/UserTenantRepository.md) \| typeof [`UserRepository`](classes/UserRepository.md) \| typeof [`UserCredentialsRepository`](classes/UserCredentialsRepository.md) \| typeof [`UserLevelResourceRepository`](classes/UserLevelResourceRepository.md))[]

#### Defined in

[services/authentication-service/src/repositories/index.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/repositories/index.ts#L37)

___

### services

• `Const` **services**: (typeof [`LoginHelperService`](classes/LoginHelperService.md) \| typeof [`OtpService`](classes/OtpService.md))[]

#### Defined in

[services/authentication-service/src/services/index.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/services/index.ts#L10)
