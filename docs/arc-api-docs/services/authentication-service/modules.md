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
- [UserIdentity](enums/UserIdentity.md)

### Classes

- [ActiveUserFilterBuilderService](classes/ActiveUserFilterBuilderService.md)
- [ActiveUsersFilter](classes/ActiveUsersFilter.md)
- [AppleOauth2SignupProvider](classes/AppleOauth2SignupProvider.md)
- [AppleOauth2VerifyProvider](classes/AppleOauth2VerifyProvider.md)
- [ApplePostVerifyProvider](classes/ApplePostVerifyProvider.md)
- [ApplePreVerifyProvider](classes/ApplePreVerifyProvider.md)
- [Auth0PostVerifyProvider](classes/Auth0PostVerifyProvider.md)
- [Auth0PreVerifyProvider](classes/Auth0PreVerifyProvider.md)
- [Auth0SignupProvider](classes/Auth0SignupProvider.md)
- [Auth0VerifyProvider](classes/Auth0VerifyProvider.md)
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
- [AzureAuthenticationProvider](classes/AzureAuthenticationProvider.md)
- [AzurePostVerifyProvider](classes/AzurePostVerifyProvider.md)
- [AzurePreVerifyProvider](classes/AzurePreVerifyProvider.md)
- [BearerTokenVerifyProvider](classes/BearerTokenVerifyProvider.md)
- [ClientAuthRequest](classes/ClientAuthRequest.md)
- [ClientPasswordVerifyProvider](classes/ClientPasswordVerifyProvider.md)
- [CodeWriterProvider](classes/CodeWriterProvider.md)
- [CognitoAuthenticationProvider](classes/CognitoAuthenticationProvider.md)
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
- [IdpConfiguration](classes/IdpConfiguration.md)
- [IdpLoginService](classes/IdpLoginService.md)
- [InstagramOauth2SignupProvider](classes/InstagramOauth2SignupProvider.md)
- [InstagramOauth2VerifyProvider](classes/InstagramOauth2VerifyProvider.md)
- [InstagramPostVerifyProvider](classes/InstagramPostVerifyProvider.md)
- [InstagramPreVerifyProvider](classes/InstagramPreVerifyProvider.md)
- [JWTAsymmetricSignerProvider](classes/JWTAsymmetricSignerProvider.md)
- [JWTAsymmetricVerifierProvider](classes/JWTAsymmetricVerifierProvider.md)
- [JWTSymmetricSignerProvider](classes/JWTSymmetricSignerProvider.md)
- [JWTSymmetricVerifierProvider](classes/JWTSymmetricVerifierProvider.md)
- [JwtKeys](classes/JwtKeys.md)
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
- [LoginActivityHelperService](classes/LoginActivityHelperService.md)
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
- [Auth0PostVerifyFn](modules.md#auth0postverifyfn)
- [Auth0PreVerifyFn](modules.md#auth0preverifyfn)
- [Auth0SignUpFn](modules.md#auth0signupfn)
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
- [PasswordHashingFn](modules.md#passwordhashingfn)
- [PasswordVerifyFn](modules.md#passwordverifyfn)
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

[services/authentication-service/src/types.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/types.ts#L58)

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

[services/authentication-service/src/providers/types.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L88)

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

[services/authentication-service/src/providers/types.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L81)

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

[services/authentication-service/src/providers/types.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L77)

___

### Auth0PostVerifyFn

Ƭ **Auth0PostVerifyFn**: (`profile`: `Auth0Strategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `Auth0Strategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:225](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L225)

___

### Auth0PreVerifyFn

Ƭ **Auth0PreVerifyFn**: (`accessToken`: `string`, `refreshToken`: `string`, `profile`: `Auth0Strategy.Profile`, `user`: `IAuthUser` \| ``null``) => `Promise`<`IAuthUser` \| ``null``\>

#### Type declaration

▸ (`accessToken`, `refreshToken`, `profile`, `user`): `Promise`<`IAuthUser` \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `refreshToken` | `string` |
| `profile` | `Auth0Strategy.Profile` |
| `user` | `IAuthUser` \| ``null`` |

##### Returns

`Promise`<`IAuthUser` \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:218](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L218)

___

### Auth0SignUpFn

Ƭ **Auth0SignUpFn**: (`profile`: `Auth0Strategy.Profile`) => `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Type declaration

▸ (`profile`): `Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `profile` | `Auth0Strategy.Profile` |

##### Returns

`Promise`<[`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md) \| ``null``\>

#### Defined in

[services/authentication-service/src/providers/types.ts:214](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L214)

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

[services/authentication-service/src/providers/types.ts:143](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L143)

___

### AuthenticationProviderFn

Ƭ **AuthenticationProviderFn**: (`accessToken`: `string`, `req?`: [`AuthRefreshTokenRequest`](classes/AuthRefreshTokenRequest.md), `payload?`: `AnyObject`) => `Promise`<`boolean`\>

#### Type declaration

▸ (`accessToken`, `req?`, `payload?`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `accessToken` | `string` |
| `req?` | [`AuthRefreshTokenRequest`](classes/AuthRefreshTokenRequest.md) |
| `payload?` | `AnyObject` |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L45)

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

[services/authentication-service/src/providers/types.ts:171](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L171)

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

[services/authentication-service/src/providers/types.ts:164](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L164)

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

[services/authentication-service/src/providers/types.ts:160](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L160)

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

[services/authentication-service/src/providers/types.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L126)

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

[services/authentication-service/src/providers/types.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L125)

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

[services/authentication-service/src/providers/types.ts:183](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L183)

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

[services/authentication-service/src/providers/types.ts:176](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L176)

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

[services/authentication-service/src/providers/types.ts:188](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L188)

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

[services/authentication-service/src/providers/types.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L104)

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

[services/authentication-service/src/providers/types.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L97)

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

[services/authentication-service/src/providers/types.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L93)

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

[services/authentication-service/src/providers/types.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L139)

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

[services/authentication-service/src/providers/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L41)

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

[services/authentication-service/src/providers/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L34)

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

[services/authentication-service/src/providers/types.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L30)

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

[services/authentication-service/src/providers/types.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L72)

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

[services/authentication-service/src/providers/types.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L65)

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

[services/authentication-service/src/providers/types.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L61)

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

[services/authentication-service/src/providers/types.ts:192](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L192)

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

[services/authentication-service/src/providers/types.ts:196](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L196)

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

[services/authentication-service/src/providers/types.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L133)

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

[services/authentication-service/src/providers/types.ts:120](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L120)

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

[services/authentication-service/src/providers/types.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L113)

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

[services/authentication-service/src/providers/types.ts:109](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L109)

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

[services/authentication-service/src/providers/types.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L148)

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

[services/authentication-service/src/providers/types.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L152)

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

[services/authentication-service/src/providers/types.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L150)

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

[services/authentication-service/src/providers/types.ts:154](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L154)

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

[services/authentication-service/src/providers/types.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L51)

___

### PasswordHashingFn

Ƭ **PasswordHashingFn**: (`password?`: `string`, `key?`: `string`) => `Promise`<`string`\>

#### Type declaration

▸ (`password?`, `key?`): `Promise`<`string`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `password?` | `string` |
| `key?` | `string` |

##### Returns

`Promise`<`string`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L52)

___

### PasswordVerifyFn

Ƭ **PasswordVerifyFn**: (`plainPassword`: `string`, `hashedPassword`: `string`, `key?`: `string`) => `Promise`<`boolean`\>

#### Type declaration

▸ (`plainPassword`, `hashedPassword`, `key?`): `Promise`<`boolean`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `plainPassword` | `string` |
| `hashedPassword` | `string` |
| `key?` | `string` |

##### Returns

`Promise`<`boolean`\>

#### Defined in

[services/authentication-service/src/providers/types.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L56)

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

[services/authentication-service/src/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/types.ts#L34)

___

### RoleWithRelations

Ƭ **RoleWithRelations**: [`Role`](classes/Role.md)

#### Defined in

[services/authentication-service/src/models/role.model.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/models/role.model.ts#L63)

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

[services/authentication-service/src/providers/types.ts:209](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L209)

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

[services/authentication-service/src/providers/types.ts:204](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L204)

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

[services/authentication-service/src/providers/types.ts:200](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L200)

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

[services/authentication-service/src/providers/types.ts:156](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/types.ts#L156)

___

### TenantWithRelations

Ƭ **TenantWithRelations**: [`Tenant`](classes/Tenant.md)

#### Defined in

[services/authentication-service/src/models/tenant.model.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/models/tenant.model.ts#L76)

___

### UserCredentialsWithRelations

Ƭ **UserCredentialsWithRelations**: [`UserCredentials`](classes/UserCredentials.md) & [`UserCredentialsRelations`](interfaces/UserCredentialsRelations.md)

#### Defined in

[services/authentication-service/src/models/user-credentials.model.ts:66](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/models/user-credentials.model.ts#L66)

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

[services/authentication-service/src/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/types.ts#L41)

___

### UserTenantWithRelations

Ƭ **UserTenantWithRelations**: [`UserTenant`](classes/UserTenant.md) & [`UserTenantRelations`](interfaces/UserTenantRelations.md)

#### Defined in

[services/authentication-service/src/models/user-tenant.model.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/models/user-tenant.model.ts#L81)

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

[services/authentication-service/src/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/types.ts#L35)

___

### UserWithRelations

Ƭ **UserWithRelations**: [`User`](classes/User.md) & [`UserRelations`](interfaces/UserRelations.md)

#### Defined in

[services/authentication-service/src/models/user.model.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/models/user.model.ts#L140)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/authentication-service/src/types.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/types.ts#L21)

___

### AuthDbSourceName

• `Const` **AuthDbSourceName**: ``"AuthDB"``

#### Defined in

[services/authentication-service/src/types.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/types.ts#L20)

___

### models

• `Const` **models**: (typeof [`ActiveUsersFilter`](classes/ActiveUsersFilter.md) \| typeof [`AuthClient`](classes/AuthClient.md) \| typeof [`AuthSecureClient`](classes/AuthSecureClient.md) \| typeof [`SignupRequestDto`](classes/SignupRequestDto.md) \| typeof [`User`](classes/User.md) \| typeof [`RefreshTokenRequest`](classes/RefreshTokenRequest.md) \| typeof [`LoginActivity`](classes/LoginActivity.md) \| typeof [`OtpCache`](classes/OtpCache.md) \| typeof [`Otp`](classes/Otp.md) \| typeof [`RefreshToken`](classes/RefreshToken.md) \| typeof [`RevokedToken`](classes/RevokedToken.md) \| typeof [`Role`](classes/Role.md) \| typeof [`Tenant`](classes/Tenant.md) \| typeof [`TenantConfig`](classes/TenantConfig.md) \| typeof [`UserLevelPermission`](classes/UserLevelPermission.md) \| typeof [`UserTenant`](classes/UserTenant.md) \| typeof [`UserCredentials`](classes/UserCredentials.md) \| typeof [`UserLevelResource`](classes/UserLevelResource.md) \| typeof [`ForgetPasswordDto`](classes/ForgetPasswordDto.md) \| typeof [`JwtKeys`](classes/JwtKeys.md) \| typeof [`LocalUserProfileDto`](classes/LocalUserProfileDto.md) \| typeof [`ResetPasswordWithClient`](classes/ResetPasswordWithClient.md) \| typeof [`SignupRequestResponseDto`](classes/SignupRequestResponseDto.md) \| typeof [`SignupRequest`](classes/SignupRequest.md) \| typeof [`SignupWithTokenReponseDto`](classes/SignupWithTokenReponseDto.md))[]

#### Defined in

[services/authentication-service/src/models/index.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/models/index.ts#L60)

___

### repositories

• `Const` **repositories**: (typeof [`AuthClientRepository`](classes/AuthClientRepository.md) \| typeof [`AuthSecureClientRepository`](classes/AuthSecureClientRepository.md) \| typeof [`LoginActivityRepository`](classes/LoginActivityRepository.md) \| typeof [`OtpCacheRepository`](classes/OtpCacheRepository.md) \| typeof [`OtpRepository`](classes/OtpRepository.md) \| typeof [`RefreshTokenRepository`](classes/RefreshTokenRepository.md) \| typeof [`RevokedTokenRepository`](classes/RevokedTokenRepository.md) \| typeof [`RoleRepository`](classes/RoleRepository.md) \| typeof [`TenantRepository`](classes/TenantRepository.md) \| typeof [`TenantConfigRepository`](classes/TenantConfigRepository.md) \| typeof [`UserLevelPermissionRepository`](classes/UserLevelPermissionRepository.md) \| typeof [`UserTenantRepository`](classes/UserTenantRepository.md) \| typeof [`UserRepository`](classes/UserRepository.md) \| typeof [`UserCredentialsRepository`](classes/UserCredentialsRepository.md) \| typeof [`UserLevelResourceRepository`](classes/UserLevelResourceRepository.md) \| typeof `PublicKeysRepository` \| typeof `JwtKeysRepository`)[]

#### Defined in

[services/authentication-service/src/repositories/index.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/repositories/index.ts#L38)

___

### services

• `Const` **services**: (typeof [`ActiveUserFilterBuilderService`](classes/ActiveUserFilterBuilderService.md) \| typeof [`IdpLoginService`](classes/IdpLoginService.md) \| typeof [`LoginActivityHelperService`](classes/LoginActivityHelperService.md) \| typeof [`LoginHelperService`](classes/LoginHelperService.md) \| typeof [`OtpService`](classes/OtpService.md))[]

#### Defined in

[services/authentication-service/src/services/index.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/index.ts#L16)
