[@sourceloop/authentication-service](../README.md) / [Exports](../modules.md) / IdpConfiguration

# Class: IdpConfiguration

## Hierarchy

- `CoreModel`<[`IdpConfiguration`](IdpConfiguration.md)\>

  ↳ **`IdpConfiguration`**

## Table of contents

### Constructors

- [constructor](IdpConfiguration.md#constructor)

### Properties

- [authorization\_endpoint](IdpConfiguration.md#authorization_endpoint)
- [end\_session\_endpoint](IdpConfiguration.md#end_session_endpoint)
- [id\_token\_signing\_alg\_values\_supported](IdpConfiguration.md#id_token_signing_alg_values_supported)
- [issuer](IdpConfiguration.md#issuer)
- [jwks\_uri](IdpConfiguration.md#jwks_uri)
- [response\_types\_supported](IdpConfiguration.md#response_types_supported)
- [scopes\_supported](IdpConfiguration.md#scopes_supported)
- [token\_endpoint](IdpConfiguration.md#token_endpoint)
- [token\_endpoint\_auth\_methods\_supported](IdpConfiguration.md#token_endpoint_auth_methods_supported)
- [userinfo\_endpoint](IdpConfiguration.md#userinfo_endpoint)

## Constructors

### constructor

• **new IdpConfiguration**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `Partial`<[`IdpConfiguration`](IdpConfiguration.md)\> |

#### Inherited from

CoreModel<IdpConfiguration\>.constructor

#### Defined in

packages/core/dist/models/core-model.d.ts:3

## Properties

### authorization\_endpoint

• **authorization\_endpoint**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L15)

___

### end\_session\_endpoint

• **end\_session\_endpoint**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L22)

___

### id\_token\_signing\_alg\_values\_supported

• **id\_token\_signing\_alg\_values\_supported**: `string`[]

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L30)

___

### issuer

• **issuer**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L37)

___

### jwks\_uri

• **jwks\_uri**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L44)

___

### response\_types\_supported

• **response\_types\_supported**: `string`[]

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:52](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L52)

___

### scopes\_supported

• **scopes\_supported**: `string`[]

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:60](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L60)

___

### token\_endpoint

• **token\_endpoint**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L67)

___

### token\_endpoint\_auth\_methods\_supported

• **token\_endpoint\_auth\_methods\_supported**: `string`[]

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:75](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L75)

___

### userinfo\_endpoint

• **userinfo\_endpoint**: `string`

#### Defined in

[services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/authentication-service/src/modules/auth/models/idp-configuration.dto.ts#L82)
