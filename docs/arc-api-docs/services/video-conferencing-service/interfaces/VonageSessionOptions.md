[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageSessionOptions

# Interface: VonageSessionOptions

**`Interface`**

VonageSessionOptions

**`Param`**

unique meetingId which is used inside sharing link urls.

**`Param`**

optional enum used in vonage (publisher, subscriber, moderator)

**`Param`**

set the ttl (time to live) for a session created For twilio, it is max 4 hours.

**`Param`**

optional string parameter if required for successfully creating session

## Hierarchy

- [`SessionOptions`](SessionOptions.md)

  ↳ **`VonageSessionOptions`**

## Table of contents

### Properties

- [data](VonageSessionOptions.md#data)
- [expireTime](VonageSessionOptions.md#expiretime)
- [meetingId](VonageSessionOptions.md#meetingid)
- [meetingLink](VonageSessionOptions.md#meetinglink)
- [meetingLinkId](VonageSessionOptions.md#meetinglinkid)
- [role](VonageSessionOptions.md#role)

## Properties

### data

• `Optional` **data**: `string`

#### Overrides

[SessionOptions](SessionOptions.md).[data](SessionOptions.md#data)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:70](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L70)

___

### expireTime

• `Optional` **expireTime**: `Date`

#### Overrides

[SessionOptions](SessionOptions.md).[expireTime](SessionOptions.md#expiretime)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:69](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L69)

___

### meetingId

• **meetingId**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:67](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L67)

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

___

### role

• `Optional` **role**: [`Role`](../enums/VonageEnums.Role.md)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:68](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L68)
