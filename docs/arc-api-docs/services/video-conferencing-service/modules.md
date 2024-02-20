[@sourceloop/video-conferencing-service](README.md) / Exports

# @sourceloop/video-conferencing-service

## Table of contents

### Namespaces

- [ServiceBindings](modules/ServiceBindings.md)
- [TwilioBindings](modules/TwilioBindings.md)
- [VideoChatBindings](modules/VideoChatBindings.md)
- [VonageBindings](modules/VonageBindings.md)
- [VonageEnums](modules/VonageEnums.md)

### Enumerations

- [ExternalStorageName](enums/ExternalStorageName.md)
- [PermissionKeys](enums/PermissionKeys.md)
- [TwilioStatusCallbackEvents](enums/TwilioStatusCallbackEvents.md)

### Classes

- [AuditLog](classes/AuditLog.md)
- [AuditLogRepository](classes/AuditLogRepository.md)
- [ChatArchiveService](classes/ChatArchiveService.md)
- [ChatSessionService](classes/ChatSessionService.md)
- [MeetingLinkIdGeneratorProvider](classes/MeetingLinkIdGeneratorProvider.md)
- [SessionAttendees](classes/SessionAttendees.md)
- [SessionAttendeesRepository](classes/SessionAttendeesRepository.md)
- [TwilioProvider](classes/TwilioProvider.md)
- [VideoChatArchiveController](classes/VideoChatArchiveController.md)
- [VideoChatSession](classes/VideoChatSession.md)
- [VideoChatSessionController](classes/VideoChatSessionController.md)
- [VideoChatSessionRepository](classes/VideoChatSessionRepository.md)
- [VideoConfServiceComponent](classes/VideoConfServiceComponent.md)
- [VonageProvider](classes/VonageProvider.md)

### Interfaces

- [ArchiveResponse](interfaces/ArchiveResponse.md)
- [ArchiveResponseList](interfaces/ArchiveResponseList.md)
- [AzureTargetOptions](interfaces/AzureTargetOptions.md)
- [ExternalStorageOptions](interfaces/ExternalStorageOptions.md)
- [IArchiveService](interfaces/IArchiveService.md)
- [IConfig](interfaces/IConfig.md)
- [ISessionService](interfaces/ISessionService.md)
- [MeetingOptions](interfaces/MeetingOptions.md)
- [MeetingResponse](interfaces/MeetingResponse.md)
- [ResponseInterface](interfaces/ResponseInterface.md)
- [SessionOptions](interfaces/SessionOptions.md)
- [SessionResponse](interfaces/SessionResponse.md)
- [TwilioConfig](interfaces/TwilioConfig.md)
- [TwilioMeetingOptions](interfaces/TwilioMeetingOptions.md)
- [TwilioMeetingResponse](interfaces/TwilioMeetingResponse.md)
- [TwilioS3TargetOptions](interfaces/TwilioS3TargetOptions.md)
- [TwilioSessonOptions](interfaces/TwilioSessonOptions.md)
- [TwilioVideoChat](interfaces/TwilioVideoChat.md)
- [TwilioWebhookPayload](interfaces/TwilioWebhookPayload.md)
- [VideoChatFeatures](interfaces/VideoChatFeatures.md)
- [VideoChatInterface](interfaces/VideoChatInterface.md)
- [VideoChatSessionRelation](interfaces/VideoChatSessionRelation.md)
- [VonageAzureTargetOptions](interfaces/VonageAzureTargetOptions.md)
- [VonageConfig](interfaces/VonageConfig.md)
- [VonageMeetingOptions](interfaces/VonageMeetingOptions.md)
- [VonageMeetingResponse](interfaces/VonageMeetingResponse.md)
- [VonageS3TargetOptions](interfaces/VonageS3TargetOptions.md)
- [VonageSessionOptions](interfaces/VonageSessionOptions.md)
- [VonageSessionWebhookPayload](interfaces/VonageSessionWebhookPayload.md)
- [VonageVideoChat](interfaces/VonageVideoChat.md)
- [WebhookPayloadParameters](interfaces/WebhookPayloadParameters.md)

### Type Aliases

- [MeetingLinkIdGenerator](modules.md#meetinglinkidgenerator)

### Variables

- [MeetLinkGeneratorProvider](modules.md#meetlinkgeneratorprovider)
- [VideoConfDatasource](modules.md#videoconfdatasource)

## Type Aliases

### MeetingLinkIdGenerator

Ƭ **MeetingLinkIdGenerator**: () => `Promise`<`string`\>

#### Type declaration

▸ (): `Promise`<`string`\>

##### Returns

`Promise`<`string`\>

#### Defined in

[services/video-conferencing-service/src/services/meeting-link-id-generator.provider.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/services/meeting-link-id-generator.provider.ts#L8)

## Variables

### MeetLinkGeneratorProvider

• `Const` **MeetLinkGeneratorProvider**: `BindingKey`<[`MeetingLinkIdGenerator`](modules.md#meetinglinkidgenerator)\>

#### Defined in

[services/video-conferencing-service/src/keys.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/keys.ts#L35)

___

### VideoConfDatasource

• `Const` **VideoConfDatasource**: ``"videochatDb"``

#### Defined in

[services/video-conferencing-service/src/keys.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/video-conferencing-service/src/keys.ts#L40)
