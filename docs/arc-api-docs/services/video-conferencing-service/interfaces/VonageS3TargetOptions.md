[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageS3TargetOptions

# Interface: VonageS3TargetOptions

**`Interface`**

VonageS3TargetOptions

**`Param`**

object containing azure/s3 details

**`Param`**

access key id of aws iam account

**`Param`**

secret access key of aws iam account

**`Param`**

s3 bucket name

**`Param`**

optional parameter used for vonage to set fallback if upload fails.
if it is none, it will not be available.
setting fallback to "opentok" will make the archive available  at the vonage dashboard

## Hierarchy

- [`ExternalStorageOptions`](ExternalStorageOptions.md)

  ↳ **`VonageS3TargetOptions`**

## Table of contents

### Properties

- [bucket](VonageS3TargetOptions.md#bucket)
- [endpoint](VonageS3TargetOptions.md#endpoint)
- [fallback](VonageS3TargetOptions.md#fallback)
- [name](VonageS3TargetOptions.md#name)
- [region](VonageS3TargetOptions.md#region)

## Properties

### bucket

• **bucket**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L84)

___

### endpoint

• `Optional` **endpoint**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L85)

___

### fallback

• **fallback**: [`FallbackType`](../enums/VonageEnums.FallbackType.md)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L86)

___

### name

• **name**: [`ExternalStorageName`](../enums/ExternalStorageName.md)

#### Inherited from

[ExternalStorageOptions](ExternalStorageOptions.md).[name](ExternalStorageOptions.md#name)

#### Defined in

[services/video-conferencing-service/src/types.ts:108](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L108)

___

### region

• **region**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:83](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L83)
