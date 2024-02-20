[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / TwilioSessonOptions

# Interface: TwilioSessonOptions

**`Interface`**

SessionOptions

**`Param`**

unique meetingId which is used inside sharing link urls.

**`Param`**

set the ttl (time to live) for a session created For twilio,
 it is max 4 hours.

## Hierarchy

- [`SessionOptions`](SessionOptions.md)

  ↳ **`TwilioSessonOptions`**

## Table of contents

### Properties

- [data](TwilioSessonOptions.md#data)
- [expireTime](TwilioSessonOptions.md#expiretime)
- [meetingLink](TwilioSessonOptions.md#meetinglink)
- [meetingLinkId](TwilioSessonOptions.md#meetinglinkid)

## Properties

### data

• `Optional` **data**: `string`

#### Inherited from

[SessionOptions](SessionOptions.md).[data](SessionOptions.md#data)

#### Defined in

[services/video-conferencing-service/src/types.ts:169](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L169)

___

### expireTime

• `Optional` **expireTime**: `Date`

#### Inherited from

[SessionOptions](SessionOptions.md).[expireTime](SessionOptions.md#expiretime)

#### Defined in

[services/video-conferencing-service/src/types.ts:168](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L168)

___

### meetingLink

• `Optional` **meetingLink**: `string`

#### Inherited from

[SessionOptions](SessionOptions.md).[meetingLink](SessionOptions.md#meetinglink)

#### Defined in

[services/video-conferencing-service/src/types.ts:167](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L167)

___

### meetingLinkId

• `Optional` **meetingLinkId**: `string`

#### Inherited from

[SessionOptions](SessionOptions.md).[meetingLinkId](SessionOptions.md#meetinglinkid)

#### Defined in

[services/video-conferencing-service/src/types.ts:170](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/types.ts#L170)
