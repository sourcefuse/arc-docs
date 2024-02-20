[@sourceloop/video-conferencing-service](../README.md) / [Exports](../modules.md) / VonageSessionWebhookPayload

# Interface: VonageSessionWebhookPayload

**`Interface`**

VonageSessionWebhookPayload

**`Param`**

the session id associated with this event

**`Param`**

the projecct id associated with this event

**`Param`**

connectionCreated

**`Param`**

Milliseconds since unix epoch time

**`Param`**

of type

**`Interface`**

VonageConnection

**`Param`**

An Object that defines the stream

**`Param`**

the stream id

**`Param`**

of type

**`Interface`**

VonageConnection

**`Param`**

the timestamp value the stream was created

**`Param`**

The name, if there was one,
passed in when the publisher associated with this stream was initialized

**`Param`**

The type of video sent on this stream, either "camera" or "screen"
(or undefined for an audio-only stream).

## Hierarchy

- [`WebhookPayloadParameters`](WebhookPayloadParameters.md)

  ↳ **`VonageSessionWebhookPayload`**

## Table of contents

### Properties

- [connection](VonageSessionWebhookPayload.md#connection)
- [event](VonageSessionWebhookPayload.md#event)
- [projectId](VonageSessionWebhookPayload.md#projectid)
- [reason](VonageSessionWebhookPayload.md#reason)
- [sessionId](VonageSessionWebhookPayload.md#sessionid)
- [stream](VonageSessionWebhookPayload.md#stream)
- [timestamp](VonageSessionWebhookPayload.md#timestamp)

## Properties

### connection

• **connection**: `VonageConnection`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:138](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L138)

___

### event

• **event**: `string`

#### Overrides

[WebhookPayloadParameters](WebhookPayloadParameters.md).[event](WebhookPayloadParameters.md#event)

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:135](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L135)

___

### projectId

• **projectId**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L134)

___

### reason

• `Optional` **reason**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:136](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L136)

___

### sessionId

• **sessionId**: `string`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:133](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L133)

___

### stream

• `Optional` **stream**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `connection` | `VonageConnection` |
| `createdAt` | `number` |
| `id` | `string` |
| `videoType` | `undefined` \| `string` |

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:139](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L139)

___

### timestamp

• **timestamp**: `number`

#### Defined in

[services/video-conferencing-service/src/providers/vonage/types.ts:137](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/providers/vonage/types.ts#L137)
