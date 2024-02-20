[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / TwilioMeetingOptions

# Interface: TwilioMeetingOptions

**`Interface`**

MeetingOptions

**`Param`**

optional parameter to enable/disable recordings. Default will be false

**`Param`**

parameter to check whether a meeting is booked now if

**`Param`**

or scheduled at a later time if

**`Param`**

**`Param`**

not required if

**`Param`**

is false,
 else set a later time for scheduling meeting

## Hierarchy

- [`MeetingOptions`](MeetingOptions.md)

- `RoomListInstanceCreateOptions`

  ↳ **`TwilioMeetingOptions`**

## Table of contents

### Properties

- [enableArchiving](TwilioMeetingOptions.md#enablearchiving)
- [endToEndEncryption](TwilioMeetingOptions.md#endtoendencryption)
- [isScheduled](TwilioMeetingOptions.md#isscheduled)
- [scheduleTime](TwilioMeetingOptions.md#scheduletime)

## Properties

### enableArchiving

• `Optional` **enableArchiving**: `boolean`

#### Overrides

[MeetingOptions](MeetingOptions.md).[enableArchiving](MeetingOptions.md#enablearchiving)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L34)

___

### endToEndEncryption

• `Optional` **endToEndEncryption**: `boolean`

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L33)

___

### isScheduled

• **isScheduled**: `boolean`

#### Overrides

[MeetingOptions](MeetingOptions.md).[isScheduled](MeetingOptions.md#isscheduled)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L35)

___

### scheduleTime

• `Optional` **scheduleTime**: `Date`

#### Overrides

[MeetingOptions](MeetingOptions.md).[scheduleTime](MeetingOptions.md#scheduletime)

#### Defined in

[services/video-conferencing-service/src/providers/twilio/types.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/twilio/types.ts#L36)
