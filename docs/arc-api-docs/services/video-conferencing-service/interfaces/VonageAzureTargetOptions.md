[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageAzureTargetOptions

# Interface: VonageAzureTargetOptions

**`Interface`**

VonageAzureTargetOptions

**`Param`**

The Windows Azure account name

**`Param`**

(optional) — The Windows Azure domain in which the container resides.

**`Param`**

optional parameter used for vonage to set fallback if upload fails.
 if it is none, it will not be available.
setting fallback to "opentok" will make the archive available  at the vonage dashboard

## Hierarchy

- [`AzureTargetOptions`](AzureTargetOptions.md)

  ↳ **`VonageAzureTargetOptions`**

## Table of contents

### Properties

- [accountName](VonageAzureTargetOptions.md#accountname)
- [domain](VonageAzureTargetOptions.md#domain)
- [fallback](VonageAzureTargetOptions.md#fallback)
- [name](VonageAzureTargetOptions.md#name)

## Properties

### accountName

• **accountName**: `string`

#### Overrides

[AzureTargetOptions](AzureTargetOptions.md).[accountName](AzureTargetOptions.md#accountname)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L98)

___

### domain

• `Optional` **domain**: `string`

#### Overrides

[AzureTargetOptions](AzureTargetOptions.md).[domain](AzureTargetOptions.md#domain)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:99](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L99)

___

### fallback

• **fallback**: [`FallbackType`](../enums/VonageEnums.FallbackType.md)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L100)

___

### name

• **name**: [`ExternalStorageName`](../enums/ExternalStorageName.md)

#### Inherited from

[AzureTargetOptions](AzureTargetOptions.md).[name](AzureTargetOptions.md#name)

#### Defined in

[services/video-conferencing-service/src/types.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L108)
