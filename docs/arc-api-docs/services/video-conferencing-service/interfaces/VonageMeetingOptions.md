[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageMeetingOptions

# Interface: VonageMeetingOptions

**`Interface`**

VonageMeetingOptions

**`Param`**

optional parameter used in vonage (not in twilio) for checking mode routed/relayed

**`Param`**

optional parameter to enable/disable recordings. Default will be false

**`Param`**

parameter to check whether a meeting is booked now
if

**`Param`**

or scheduled at a later time if

**`Param`**

**`Param`**

not required if

**`Param`**

is false, else set a later time for scheduling meeting

## Hierarchy

- [`MeetingOptions`](MeetingOptions.md)

  ↳ **`VonageMeetingOptions`**

## Table of contents

### Properties

- [enableArchiving](VonageMeetingOptions.md#enablearchiving)
- [endToEndEncryption](VonageMeetingOptions.md#endtoendencryption)
- [isScheduled](VonageMeetingOptions.md#isscheduled)
- [scheduleTime](VonageMeetingOptions.md#scheduletime)

## Properties

### enableArchiving

• `Optional` **enableArchiving**: `boolean`

#### Overrides

[MeetingOptions](MeetingOptions.md).[enableArchiving](MeetingOptions.md#enablearchiving)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:48](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L48)

___

### endToEndEncryption

• `Optional` **endToEndEncryption**: `boolean`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:47](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L47)

___

### isScheduled

• **isScheduled**: `boolean`

#### Overrides

[MeetingOptions](MeetingOptions.md).[isScheduled](MeetingOptions.md#isscheduled)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L49)

___

### scheduleTime

• `Optional` **scheduleTime**: `Date`

#### Overrides

[MeetingOptions](MeetingOptions.md).[scheduleTime](MeetingOptions.md#scheduletime)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L50)
