[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / SessionOptions

# Interface: SessionOptions

**`Interface`**

SessionOptions

**`Param`**

unique meetingId which is used inside sharing link urls.

**`Param`**

set the ttl (time to live) for a session created For twilio,
 it is max 4 hours.

## Hierarchy

- **`SessionOptions`**

  ↳ [`VonageSessionOptions`](VonageSessionOptions.md)

  ↳ [`TwilioSessonOptions`](TwilioSessonOptions.md)

## Table of contents

### Properties

- [data](SessionOptions.md#data)
- [expireTime](SessionOptions.md#expiretime)
- [meetingLink](SessionOptions.md#meetinglink)
- [meetingLinkId](SessionOptions.md#meetinglinkid)

## Properties

### data

• `Optional` **data**: `string`

#### Defined in

[services/video-conferencing-service/src/types.ts:169](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L169)

___

### expireTime

• `Optional` **expireTime**: `Date`

#### Defined in

[services/video-conferencing-service/src/types.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L168)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Defined in

[services/video-conferencing-service/src/types.ts:167](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L167)

___

### meetingLinkId

• `Optional` **meetingLinkId**: `string`

#### Defined in

[services/video-conferencing-service/src/types.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L170)
