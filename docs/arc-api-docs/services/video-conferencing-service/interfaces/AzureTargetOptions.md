[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / AzureTargetOptions

# Interface: AzureTargetOptions

**`Interface`**

AzureTargetOptions

**`Param`**

The Windows Azure account name

**`Param`**

The Windows Azure account key

**`Param`**

The Windows Azure container name

**`Param`**

(optional) — The Windows Azure domain in which the container resides.

## Hierarchy

- [`ExternalStorageOptions`](ExternalStorageOptions.md)

  ↳ **`AzureTargetOptions`**

  ↳↳ [`VonageAzureTargetOptions`](VonageAzureTargetOptions.md)

## Table of contents

### Properties

- [accountName](AzureTargetOptions.md#accountname)
- [domain](AzureTargetOptions.md#domain)
- [name](AzureTargetOptions.md#name)

## Properties

### accountName

• **accountName**: `string`

#### Defined in

[services/video-conferencing-service/src/types.ts:130](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L130)

___

### domain

• `Optional` **domain**: `string`

#### Defined in

[services/video-conferencing-service/src/types.ts:131](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L131)

___

### name

• **name**: [`ExternalStorageName`](../enums/ExternalStorageName.md)

#### Inherited from

[ExternalStorageOptions](ExternalStorageOptions.md).[name](ExternalStorageOptions.md#name)

#### Defined in

[services/video-conferencing-service/src/types.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L108)
