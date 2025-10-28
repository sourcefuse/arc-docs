[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / AuthServiceBindings

# Namespace: AuthServiceBindings

## Table of contents

### Namespaces

- [UserValidationServiceBindings](AuthServiceBindings.UserValidationServiceBindings.md)

### Variables

- [ActorIdKey](AuthServiceBindings.md#actoridkey)
- [Config](AuthServiceBindings.md#config)
- [ForgotPasswordHandler](AuthServiceBindings.md#forgotpasswordhandler)
- [JWTPayloadProvider](AuthServiceBindings.md#jwtpayloadprovider)
- [MarkUserActivity](AuthServiceBindings.md#markuseractivity)
- [MfaConfig](AuthServiceBindings.md#mfaconfig)
- [OtpConfig](AuthServiceBindings.md#otpconfig)
- [PASSWORD\_DECRYPTION\_PROVIDER](AuthServiceBindings.md#password_decryption_provider)
- [PASSWORD\_HASHING\_PROVIDER](AuthServiceBindings.md#password_hashing_provider)
- [PASSWORD\_VERIFY\_PROVIDER](AuthServiceBindings.md#password_verify_provider)

## Variables

### ActorIdKey

• `Const` **ActorIdKey**: `BindingKey`<[`ActorId`](../modules.md#actorid)\>

#### Defined in

[services/authentication-service/src/keys.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L58)

___

### Config

• `Const` **Config**: `BindingKey`<``null`` \| [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L24)

___

### ForgotPasswordHandler

• `Const` **ForgotPasswordHandler**: `BindingKey`<[`ForgotPasswordHandlerFn`](../modules.md#forgotpasswordhandlerfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L53)

___

### JWTPayloadProvider

• `Const` **JWTPayloadProvider**: `BindingKey`<[`JwtPayloadFn`](../modules.md#jwtpayloadfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L40)

___

### MarkUserActivity

• `Const` **MarkUserActivity**: `BindingKey`<[`IUserActivity`](../interfaces/IUserActivity.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:62](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L62)

___

### MfaConfig

• `Const` **MfaConfig**: `BindingKey`<``null`` \| [`IMfaConfig`](../interfaces/IMfaConfig.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L32)

___

### OtpConfig

• `Const` **OtpConfig**: `BindingKey`<``null`` \| [`IOtpConfig`](../interfaces/IOtpConfig.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L36)

___

### PASSWORD\_DECRYPTION\_PROVIDER

• `Const` **PASSWORD\_DECRYPTION\_PROVIDER**: `BindingKey`<[`PasswordDecryptionFn`](../modules.md#passworddecryptionfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L43)

___

### PASSWORD\_HASHING\_PROVIDER

• `Const` **PASSWORD\_HASHING\_PROVIDER**: `BindingKey`<[`PasswordHashingFn`](../modules.md#passwordhashingfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L47)

___

### PASSWORD\_VERIFY\_PROVIDER

• `Const` **PASSWORD\_VERIFY\_PROVIDER**: `BindingKey`<[`PasswordVerifyFn`](../modules.md#passwordverifyfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/keys.ts#L50)
