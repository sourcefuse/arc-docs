[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / IdpLoginService

# Class: IdpLoginService

## Table of contents

### Constructors

- [constructor](IdpLoginService.md#constructor)

### Properties

- [actorKey](IdpLoginService.md#actorkey)
- [authClientRepository](IdpLoginService.md#authclientrepository)
- [codeReader](IdpLoginService.md#codereader)
- [ctx](IdpLoginService.md#ctx)
- [currentUser](IdpLoginService.md#currentuser)
- [getJwtPayload](IdpLoginService.md#getjwtpayload)
- [jwtKeysRepo](IdpLoginService.md#jwtkeysrepo)
- [jwtSigner](IdpLoginService.md#jwtsigner)
- [jwtVerifier](IdpLoginService.md#jwtverifier)
- [logger](IdpLoginService.md#logger)
- [loginActivityRepo](IdpLoginService.md#loginactivityrepo)
- [publicKeyRepo](IdpLoginService.md#publickeyrepo)
- [refreshTokenRepo](IdpLoginService.md#refreshtokenrepo)
- [revokedTokensRepo](IdpLoginService.md#revokedtokensrepo)
- [userActivity](IdpLoginService.md#useractivity)
- [userRepo](IdpLoginService.md#userrepo)
- [userTenantRepo](IdpLoginService.md#usertenantrepo)

### Methods

- [createJWT](IdpLoginService.md#createjwt)
- [decodeAndGetExpiry](IdpLoginService.md#decodeandgetexpiry)
- [generateKeys](IdpLoginService.md#generatekeys)
- [generateNewKey](IdpLoginService.md#generatenewkey)
- [generateToken](IdpLoginService.md#generatetoken)
- [getOpenIdConfiguration](IdpLoginService.md#getopenidconfiguration)
- [getUser](IdpLoginService.md#getuser)
- [logoutUser](IdpLoginService.md#logoutuser)
- [markUserActivity](IdpLoginService.md#markuseractivity)
- [saveRefreshToken](IdpLoginService.md#saverefreshtoken)

## Constructors

### constructor

• **new IdpLoginService**(`authClientRepository`, `userRepo`, `userTenantRepo`, `refreshTokenRepo`, `publicKeyRepo`, `jwtKeysRepo`, `revokedTokensRepo`, `logger`, `loginActivityRepo`, `actorKey`, `ctx`, `codeReader`, `jwtVerifier`, `jwtSigner`, `getJwtPayload`, `currentUser`, `userActivity?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `authClientRepository` | [`AuthClientRepository`](AuthClientRepository.md) |
| `userRepo` | [`UserRepository`](UserRepository.md) |
| `userTenantRepo` | [`UserTenantRepository`](UserTenantRepository.md) |
| `refreshTokenRepo` | [`RefreshTokenRepository`](RefreshTokenRepository.md) |
| `publicKeyRepo` | `PublicKeysRepository` |
| `jwtKeysRepo` | `JwtKeysRepository` |
| `revokedTokensRepo` | [`RevokedTokenRepository`](RevokedTokenRepository.md) |
| `logger` | `ILogger` |
| `loginActivityRepo` | [`LoginActivityRepository`](LoginActivityRepository.md) |
| `actorKey` | [`ActorId`](../modules.md#actorid) |
| `ctx` | `RequestContext` |
| `codeReader` | [`CodeReaderFn`](../modules.md#codereaderfn) |
| `jwtVerifier` | [`JWTVerifierFn`](../modules.md#jwtverifierfn)<`AnyObject`\> |
| `jwtSigner` | [`JWTSignerFn`](../modules.md#jwtsignerfn)<`object`\> |
| `getJwtPayload` | [`JwtPayloadFn`](../modules.md#jwtpayloadfn) |
| `currentUser` | `undefined` \| [`AuthUser`](AuthUser.md) |
| `userActivity?` | [`IUserActivity`](../interfaces/IUserActivity.md) |

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:57](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L57)

## Properties

### actorKey

• `Private` `Readonly` **actorKey**: [`ActorId`](../modules.md#actorid)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:76](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L76)

___

### authClientRepository

• **authClientRepository**: [`AuthClientRepository`](AuthClientRepository.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L59)

___

### codeReader

• `Private` `Readonly` **codeReader**: [`CodeReaderFn`](../modules.md#codereaderfn)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:79](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L79)

___

### ctx

• `Private` `Readonly` **ctx**: `RequestContext`

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L77)

___

### currentUser

• `Private` `Readonly` **currentUser**: `undefined` \| [`AuthUser`](AuthUser.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L87)

___

### getJwtPayload

• `Private` `Readonly` **getJwtPayload**: [`JwtPayloadFn`](../modules.md#jwtpayloadfn)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L85)

___

### jwtKeysRepo

• **jwtKeysRepo**: `JwtKeysRepository`

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L69)

___

### jwtSigner

• `Private` `Readonly` **jwtSigner**: [`JWTSignerFn`](../modules.md#jwtsignerfn)<`object`\>

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L83)

___

### jwtVerifier

• `Private` `Readonly` **jwtVerifier**: [`JWTVerifierFn`](../modules.md#jwtverifierfn)<`AnyObject`\>

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L81)

___

### logger

• **logger**: `ILogger`

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:72](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L72)

___

### loginActivityRepo

• `Private` `Readonly` **loginActivityRepo**: [`LoginActivityRepository`](LoginActivityRepository.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:74](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L74)

___

### publicKeyRepo

• **publicKeyRepo**: `PublicKeysRepository`

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L67)

___

### refreshTokenRepo

• **refreshTokenRepo**: [`RefreshTokenRepository`](RefreshTokenRepository.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L65)

___

### revokedTokensRepo

• `Private` `Readonly` **revokedTokensRepo**: [`RevokedTokenRepository`](RevokedTokenRepository.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:71](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L71)

___

### userActivity

• `Private` `Optional` `Readonly` **userActivity**: [`IUserActivity`](../interfaces/IUserActivity.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L89)

___

### userRepo

• **userRepo**: [`UserRepository`](UserRepository.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L61)

___

### userTenantRepo

• **userTenantRepo**: [`UserTenantRepository`](UserTenantRepository.md)

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L63)

## Methods

### createJWT

▸ **createJWT**(`payload`, `authClient`, `loginType`, `tenantId?`): `Promise`<[`TokenResponse`](TokenResponse.md)\>

The function `createJWT` generates a JWT token for a user with specified payload and
authentication client, handling token expiration and refresh token storage.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | `ClientAuthCode`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\> & [`ExternalTokens`](../interfaces/ExternalTokens.md) | The `payload` parameter in the `createJWT` function is an object that contains information about the user and external tokens. It has the following properties: |
| `authClient` | [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\> | The `authClient` parameter in the `createJWT` function represents the client that is requesting the JWT (JSON Web Token) creation. It contains information about the client, such as the client ID and the expiration time for the access token. This information is used to customize the JWT payload and set |
| `loginType` | [`LoginType`](../enums/LoginType.md) | The `loginType` parameter in the `createJWT` function represents the type of login being performed, such as "email", "social", "phone", etc. It helps in determining the context of the authentication process and can be used for logging, analytics, or custom logic based on the login |
| `tenantId?` | `string` | The `tenantId` parameter in the `createJWT` function is an optional parameter that represents the ID of a specific tenant. Tenants are typically used in multi-tenant applications to isolate data and configuration for different groups of users or organizations. If provided, the `tenantId` is used to |

#### Returns

`Promise`<[`TokenResponse`](TokenResponse.md)\>

The `createJWT` function returns a `TokenResponse` object containing the access token,
refresh token, and expiration time.

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:288](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L288)

___

### decodeAndGetExpiry

▸ `Private` **decodeAndGetExpiry**(`token`): ``null`` \| `number`

Decodes the given token and retrieves the expiry timestamp.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `token` | `string` | The token to decode. |

#### Returns

``null`` \| `number`

The expiry timestamp in milliseconds.

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:638](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L638)

___

### generateKeys

▸ **generateKeys**(): `Promise`<`void`\>

Generates multiple JWT keys asynchronously based on the MAX_JWT_KEYS environment variable.
If MAX_JWT_KEYS is not set, defaults to generating 2 keys.

**`Throws`**

When key generation fails with message 'Failed to generate JWT keys'

#### Returns

`Promise`<`void`\>

A promise that resolves when all keys have been generated

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:534](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L534)

___

### generateNewKey

▸ **generateNewKey**(`isRotate?`): `Promise`<`void`\>

Generates a new RSA key pair and manages key rotation for JWT authentication.

This method performs the following operations:
1. Generates a new RSA key pair (public/private keys)
2. Creates a JWKS (JSON Web Key Set) object
3. Manages key rotation by removing oldest keys when maximum limit is reached
4. Stores public key in cache if rotation is enabled
5. Saves both public and private keys to the database

**`Throws`**

If JWT_PRIVATE_KEY_PASSPHRASE environment variable is not set

**`Throws`**

If key generation or storage operations fail

#### Parameters

| Name | Type | Default value | Description |
| :------ | :------ | :------ | :------ |
| `isRotate` | `boolean` | `false` | Optional flag to indicate if this is a key rotation operation. Defaults to false. When true, it will store the public key in cache with TTL based on auth client's access token expiration. |

#### Returns

`Promise`<`void`\>

Promise<void>

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:565](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L565)

___

### generateToken

▸ **generateToken**(`request`): `Promise`<[`TokenResponse`](TokenResponse.md)\>

The function `generateToken` generates a JWT token for a client using a code
and performs various authentication checks.

#### Parameters

| Name | Type |
| :------ | :------ |
| `request` | [`AuthTokenRequest`](AuthTokenRequest.md) |

#### Returns

`Promise`<[`TokenResponse`](TokenResponse.md)\>

The `generateToken` function is returning the result of calling
`this.createJWT(payload, authClient, LoginType.ACCESS)` after performing
various checks and operations.

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:155](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L155)

___

### getOpenIdConfiguration

▸ **getOpenIdConfiguration**(): `Promise`<[`IdpConfiguration`](IdpConfiguration.md)\>

Retrieves OpenID Connect configuration settings.
This method constructs and returns an IdpConfiguration object containing
essential OpenID Connect endpoints and supported features.

#### Returns

`Promise`<[`IdpConfiguration`](IdpConfiguration.md)\>

A promise that resolves to an IdpConfiguration object containing:
- issuer URL
- authorization endpoint
- token endpoint
- JWKS URI
- end session endpoint
- supported response types
- supported scopes
- supported ID token signing algorithms
- supported token endpoint authentication methods
- userinfo endpoint

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:109](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L109)

___

### getUser

▸ **getUser**(`payload`): `Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

Retrieves a user based on provided authentication payload.

**`Throws`**

When neither user nor userId is provided

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | `ClientAuthCode`<[`User`](User.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\> & [`ExternalTokens`](../interfaces/ExternalTokens.md) | Contains user authentication details including user object or userId, and optional external auth tokens |

#### Returns

`Promise`<[`User`](User.md)<`DataObject`<`Model`\>\>\>

Promise resolving to User object with optional external tokens

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:243](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L243)

___

### logoutUser

▸ **logoutUser**(`auth`, `req`): `Promise`<`SuccessResponse`\>

The `logoutUser` function in TypeScript handles the logout process for a user
by revoking tokens and deleting refresh tokens.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `auth` | `string` | The `auth` parameter in the `logoutUser` function is a string that represents the authentication token. It is used to identify and authenticate the user who is attempting to log out. The function extracts the token from the `auth` parameter and performs various checks and operations related to user logout based on |
| `req` | [`RefreshTokenRequest`](RefreshTokenRequest.md)<`DataObject`<`Model`\>\> | The `req` parameter in the `logoutUser` function is of type `RefreshTokenRequest`. It likely contains information related to the refresh token that is used to identify and authenticate the user during the logout process. This parameter may include properties such as `refreshToken`, which is essential for revoking |

#### Returns

`Promise`<`SuccessResponse`\>

The `logoutUser` function returns a `Promise` that resolves to a
`SuccessResponse` object with a `success` property set to `true` and a `key`
property set to `refreshTokenModel.userId`.

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:476](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L476)

___

### markUserActivity

▸ `Private` **markUserActivity**(`payload`, `user`, `userTenant`, `loginType`): `void`

The function `markUserActivity` encrypts and stores user login activity,
including IP address and payload, in a database.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `payload` | `AnyObject` \| [`RefreshToken`](RefreshToken.md) | The `payload` parameter in the `markUserActivity` function is the data that you want to encrypt and store as part of the user's login activity. In the provided code snippet, the `payload` is first converted to a JSON string using `JSON.stringify(payload)`. Then, it is |
| `user` | [`User`](User.md)<`DataObject`<`Model`\>\> | The `user` parameter in the `markUserActivity` function represents the user who is performing the activity for which you are marking the login activity. This user object likely contains information about the user, such as their ID, name, email, etc. It is used to identify the actor of the |
| `userTenant` | ``null`` \| [`UserTenant`](UserTenant.md) | The `userTenant` parameter in the `markUserActivity` function represents the tenant associated with the user. It can be either an object of type `UserTenant` or `null` if there is no specific tenant assigned to the user. The function uses this parameter to determine the actor and tenant |
| `loginType` | [`LoginType`](../enums/LoginType.md) | The `loginType` parameter in the `markUserActivity` function represents the type of login activity being performed by the user. It is used to specify whether the user is logging in using a certain method or platform. Examples of `loginType` could include 'email', 'social', '2 |

#### Returns

`void`

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:377](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L377)

___

### saveRefreshToken

▸ `Private` **saveRefreshToken**(`refreshToken`, `user`, `authClient`, `accessToken`, `data`): `Promise`<`void`\>

Saves a refresh token with associated user and client information to the refresh token repository

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `refreshToken` | `string` | The refresh token string to be saved |
| `user` | [`User`](User.md)<`DataObject`<`Model`\>\> | The user object containing authentication details |
| `authClient` | [`AuthClient`](AuthClient.md)<`DataObject`<`Model`\>\> | The authentication client object containing client configuration |
| `accessToken` | `string` | The access token string associated with this refresh token |
| `data` | `AnyObject` | Additional data object containing tenant information |

#### Returns

`Promise`<`void`\>

Promise<void>

#### Defined in

[services/authentication-service/src/services/idp-login.service.ts:207](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/services/idp-login.service.ts#L207)
