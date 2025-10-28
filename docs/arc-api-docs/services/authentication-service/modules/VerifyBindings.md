[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / VerifyBindings

# Namespace: VerifyBindings

## Table of contents

### Variables

- [APPLE\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#apple_post_verify_provider)
- [APPLE\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#apple_pre_verify_provider)
- [AUTH0\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#auth0_post_verify_provider)
- [AUTH0\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#auth0_pre_verify_provider)
- [AZURE\_AD\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#azure_ad_post_verify_provider)
- [AZURE\_AD\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#azure_ad_pre_verify_provider)
- [BEARER\_SIGNUP\_VERIFY\_PROVIDER](VerifyBindings.md#bearer_signup_verify_provider)
- [COGNITO\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#cognito_post_verify_provider)
- [COGNITO\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#cognito_pre_verify_provider)
- [FACEBOOK\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#facebook_post_verify_provider)
- [FACEBOOK\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#facebook_pre_verify_provider)
- [GOOGLE\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#google_post_verify_provider)
- [GOOGLE\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#google_pre_verify_provider)
- [INSTAGRAM\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#instagram_post_verify_provider)
- [INSTAGRAM\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#instagram_pre_verify_provider)
- [KEYCLOAK\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#keycloak_post_verify_provider)
- [KEYCLOAK\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#keycloak_pre_verify_provider)
- [MFA\_PROVIDER](VerifyBindings.md#mfa_provider)
- [OTP\_GENERATE\_PROVIDER](VerifyBindings.md#otp_generate_provider)
- [OTP\_PROVIDER](VerifyBindings.md#otp_provider)
- [OTP\_SENDER\_PROVIDER](VerifyBindings.md#otp_sender_provider)
- [SAML\_POST\_VERIFY\_PROVIDER](VerifyBindings.md#saml_post_verify_provider)
- [SAML\_PRE\_VERIFY\_PROVIDER](VerifyBindings.md#saml_pre_verify_provider)

## Variables

### APPLE\_POST\_VERIFY\_PROVIDER

• `Const` **APPLE\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`ApplePostVerifyFn`](../modules.md#applepostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L104)

___

### APPLE\_PRE\_VERIFY\_PROVIDER

• `Const` **APPLE\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`ApplePreVerifyFn`](../modules.md#applepreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L101)

___

### AUTH0\_POST\_VERIFY\_PROVIDER

• `Const` **AUTH0\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`Auth0PostVerifyFn`](../modules.md#auth0postverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:148](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L148)

___

### AUTH0\_PRE\_VERIFY\_PROVIDER

• `Const` **AUTH0\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`Auth0PreVerifyFn`](../modules.md#auth0preverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:145](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L145)

___

### AZURE\_AD\_POST\_VERIFY\_PROVIDER

• `Const` **AZURE\_AD\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`AzureAdPostVerifyFn`](../modules.md#azureadpostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:142](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L142)

___

### AZURE\_AD\_PRE\_VERIFY\_PROVIDER

• `Const` **AZURE\_AD\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`AzureAdPreVerifyFn`](../modules.md#azureadpreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L140)

___

### BEARER\_SIGNUP\_VERIFY\_PROVIDER

• `Const` **BEARER\_SIGNUP\_VERIFY\_PROVIDER**: `BindingKey`<`GenericAuthFn`<`any`\>\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L136)

___

### COGNITO\_POST\_VERIFY\_PROVIDER

• `Const` **COGNITO\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`CognitoPostVerifyFn`](../modules.md#cognitopostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:116](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L116)

___

### COGNITO\_PRE\_VERIFY\_PROVIDER

• `Const` **COGNITO\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`CognitoPreVerifyFn`](../modules.md#cognitopreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:114](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L114)

___

### FACEBOOK\_POST\_VERIFY\_PROVIDER

• `Const` **FACEBOOK\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`FacebookPostVerifyFn`](../modules.md#facebookpostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:106](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L106)

___

### FACEBOOK\_PRE\_VERIFY\_PROVIDER

• `Const` **FACEBOOK\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`FacebookPreVerifyFn`](../modules.md#facebookpreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L108)

___

### GOOGLE\_POST\_VERIFY\_PROVIDER

• `Const` **GOOGLE\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`GooglePostVerifyFn`](../modules.md#googlepostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:95](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L95)

___

### GOOGLE\_PRE\_VERIFY\_PROVIDER

• `Const` **GOOGLE\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`GooglePreVerifyFn`](../modules.md#googlepreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L93)

___

### INSTAGRAM\_POST\_VERIFY\_PROVIDER

• `Const` **INSTAGRAM\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`InstagramPostVerifyFn`](../modules.md#instagrampostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L97)

___

### INSTAGRAM\_PRE\_VERIFY\_PROVIDER

• `Const` **INSTAGRAM\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`InstagramPreVerifyFn`](../modules.md#instagrampreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L99)

___

### KEYCLOAK\_POST\_VERIFY\_PROVIDER

• `Const` **KEYCLOAK\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`KeyCloakPostVerifyFn`](../modules.md#keycloakpostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:112](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L112)

___

### KEYCLOAK\_PRE\_VERIFY\_PROVIDER

• `Const` **KEYCLOAK\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`KeyCloakPreVerifyFn`](../modules.md#keycloakpreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:110](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L110)

___

### MFA\_PROVIDER

• `Const` **MFA\_PROVIDER**: `BindingKey`<[`MfaCheckFn`](../modules.md#mfacheckfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L132)

___

### OTP\_GENERATE\_PROVIDER

• `Const` **OTP\_GENERATE\_PROVIDER**: `BindingKey`<[`OtpGenerateFn`](../modules.md#otpgeneratefn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:126](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L126)

___

### OTP\_PROVIDER

• `Const` **OTP\_PROVIDER**: `BindingKey`<[`OtpFn`](../modules.md#otpfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:125](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L125)

___

### OTP\_SENDER\_PROVIDER

• `Const` **OTP\_SENDER\_PROVIDER**: `BindingKey`<[`OtpSenderFn`](../modules.md#otpsenderfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:129](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L129)

___

### SAML\_POST\_VERIFY\_PROVIDER

• `Const` **SAML\_POST\_VERIFY\_PROVIDER**: `BindingKey`<[`SamlPostVerifyFn`](../modules.md#samlpostverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:121](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L121)

___

### SAML\_PRE\_VERIFY\_PROVIDER

• `Const` **SAML\_PRE\_VERIFY\_PROVIDER**: `BindingKey`<[`SamlPreVerifyFn`](../modules.md#samlpreverifyfn)\>

#### Defined in

[services/authentication-service/src/providers/keys.ts:118](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/providers/keys.ts#L118)
