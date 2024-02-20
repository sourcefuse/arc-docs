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

## Variables

### ActorIdKey

• `Const` **ActorIdKey**: `BindingKey`<[`ActorId`](../modules.md#actorid)\>

#### Defined in

[services/authentication-service/src/keys.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L50)

___

### Config

• `Const` **Config**: `BindingKey`<``null`` \| [`IAuthServiceConfig`](../interfaces/IAuthServiceConfig.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L22)

___

### ForgotPasswordHandler

• `Const` **ForgotPasswordHandler**: `BindingKey`<[`ForgotPasswordHandlerFn`](../modules.md#forgotpasswordhandlerfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L45)

___

### JWTPayloadProvider

• `Const` **JWTPayloadProvider**: `BindingKey`<[`JwtPayloadFn`](../modules.md#jwtpayloadfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L38)

___

### MarkUserActivity

• `Const` **MarkUserActivity**: `BindingKey`<[`IUserActivity`](../interfaces/IUserActivity.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L54)

___

### MfaConfig

• `Const` **MfaConfig**: `BindingKey`<``null`` \| [`IMfaConfig`](../interfaces/IMfaConfig.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L30)

___

### OtpConfig

• `Const` **OtpConfig**: `BindingKey`<``null`` \| [`IOtpConfig`](../interfaces/IOtpConfig.md)\>

#### Defined in

[services/authentication-service/src/keys.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L34)

___

### PASSWORD\_DECRYPTION\_PROVIDER

• `Const` **PASSWORD\_DECRYPTION\_PROVIDER**: `BindingKey`<[`PasswordDecryptionFn`](../modules.md#passworddecryptionfn)\>

#### Defined in

[services/authentication-service/src/keys.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/authentication-service/src/keys.ts#L41)
