[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / ErrorKeys

# Enumeration: ErrorKeys

## Table of contents

### Enumeration Members

- [BodyNotFound](ErrorKeys.md#bodynotfound)
- [DraftError](ErrorKeys.md#drafterror)
- [GroupKeyMandatory](ErrorKeys.md#groupkeymandatory)
- [GroupedDraftError](ErrorKeys.md#groupeddrafterror)
- [GroupedDraftFromEmailError](ErrorKeys.md#groupeddraftfromemailerror)
- [GroupedDraftReceiverError](ErrorKeys.md#groupeddraftreceivererror)
- [GroupedDraftSubjectError](ErrorKeys.md#groupeddraftsubjecterror)
- [MandatoryGroupKey](ErrorKeys.md#mandatorygroupkey)
- [NoDraftFound](ErrorKeys.md#nodraftfound)
- [NoUserFoundToSendNotification](ErrorKeys.md#nouserfoundtosendnotification)
- [ReceiverNotFound](ErrorKeys.md#receivernotfound)
- [StartEndTimeBothMandatoryTogether](ErrorKeys.md#startendtimebothmandatorytogether)

## Enumeration Members

### BodyNotFound

• **BodyNotFound** = ``"Body Not Found"``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L7)

___

### DraftError

• **DraftError** = ``"For drafting notification with out group key, subject, receiver and fromEmail in options are mandatory."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L13)

___

### GroupKeyMandatory

• **GroupKeyMandatory** = ``"For draft notification group key is mandatory."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L8)

___

### GroupedDraftError

• **GroupedDraftError** = ``"For drafting notification with group key subject, receiver and fromEmail in options does not need to be in request."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L9)

___

### GroupedDraftFromEmailError

• **GroupedDraftFromEmailError** = ``"For drafting notification with group key fromEmail should not be in the options key of request."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L12)

___

### GroupedDraftReceiverError

• **GroupedDraftReceiverError** = ``"For drafting notification with group key receiver should not be in the request."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L11)

___

### GroupedDraftSubjectError

• **GroupedDraftSubjectError** = ``"For drafting notification with group key subject should not be in the request."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L10)

___

### MandatoryGroupKey

• **MandatoryGroupKey** = ``"Group key is mandatory."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L14)

___

### NoDraftFound

• **NoDraftFound** = ``"There is no draft notification found to send."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:15](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L15)

___

### NoUserFoundToSendNotification

• **NoUserFoundToSendNotification** = ``"No user is found with given criteria to send notifications."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L17)

___

### ReceiverNotFound

• **ReceiverNotFound** = ``"ReceiverNotFound"``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L6)

___

### StartEndTimeBothMandatoryTogether

• **StartEndTimeBothMandatoryTogether** = ``"In case start time is given end time is mandatory and vice-versa."``

#### Defined in

[services/notification-service/src/enums/error-keys.enum.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/notification-service/src/enums/error-keys.enum.ts#L16)
