<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-notifications](https://github.com/sourcefuse/loopback4-notifications)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-notifications">
<img src="https://img.shields.io/npm/v/loopback4-notifications.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-notifications" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-notifications?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://app.snyk.io/org/ashishkaushik/reporting?context[page]=issues-detail&project_target=%255B%2522sourcefuse%252Floopback4-notifications%2522%255D&project_origin=%255B%2522github%2522%255D&issue_status=%255B%2522Open%2522%255D&issue_by=Severity&table_issues_detail_cols=SCORE%257CCVE%257CCWE%257CPROJECT%257CEXPLOIT%2520MATURITY%257CAUTO%2520FIXABLE%257CINTRODUCED%257CSNYK%2520PRODUCT&v=1">
<img alt="Synk Status" src="https://img.shields.io/badge/SYNK_SECURITY-MONITORED-GREEN">
</a>
<a href="https://github.com/sourcefuse/loopback4-notifications/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-notifications">
</a>
<a href="https://www.npmjs.com/package/loopback4-notifications" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-notifications.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-notifications/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-notifications.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

This is a loopback-next extension for adding different notification mechanisms vis-à-vis, Push, SMS, Email to any loopback 4 based REST API application or microservice.

It provides a generic provider-based framework to add your own implementation or implement any external service provider to achieve the same. There are 3 different providers available to be injected namely, PushProvider, SMSProvider and EmailProvider. It also provides support for 7 very popular external services for sending notifications.

1. [AWS Simple Email Service](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/SES.html) - It's one of the EmailProvider for sending email messages.
2. [AWS Simple Notification Service](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/SNS.html) - It's one of the SMSProvider for sending SMS notifications.
3. [Pubnub](https://www.pubnub.com/docs/nodejs-javascript/pubnub-javascript-sdk) - It's one of the PushProvider for sending realtime push notifications to mobile applications as well as web applications.
4. [Socket.IO](https://socket.io/docs/) - It's one of the PushProvider for sending realtime push notifications to mobile applications as well as web applications.
5. [FCM](https://firebase.google.com/docs/cloud-messaging) - It's one of the PushProvider for sending realtime push notifications to mobile applications as well as web applications.
6. [Nodemailer](https://nodemailer.com/about/) - It's one of the EmailProvider for sending email messages.
7. [Apple Push Notification service](https://developer.apple.com/library/archive/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/APNSOverview.html#//apple_ref/doc/uid/TP40008194-CH8-SW1) - It's one of the push notification providers that integrates notification service created by Apple Inc. that enables third party application developers to send notification data to applications installed on Apple devices.
8. [Twilio SMS Service](https://www.twilio.com/docs/sms) - Twilio is a modern communication API Used by developers for establishing communications. Twilio can be used for sending SMS or [Whatapp notifications](https://www.twilio.com/docs/whatsapp).
   You can use one of these services or add your own implementation or integration using the same interfaces and attach it as a provider for that specific type.

You can use one of these services or add your own implementation or integration using the same interfaces and attach it as a provider for that specific type.

## Installation

```sh
npm install loopback4-notifications
```

## Usage

In order to use this component into your LoopBack application, please follow below steps.

Add component to application.

```ts
// application.ts
import {NotificationsComponent} from 'loopback4-notifications';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    // ...
  }
}
```

After the above, you need to configure one of the notification provider at least. Based upon the requirement, please choose and configure the respective provider for sending notifications. See below.

### Email Notifications using Amazon Simple Email Service

This extension provides in-built support of AWS Simple Email Service integration for sending emails from the application. In order to use it, run `npm install aws-sdk`, and then bind the SesProvider as below in `application.ts`.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {SesProvider} from 'loopback4-notifications/ses';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.EmailProvider).toProvider(SesProvider);
    // ...
  }
}
```

There are some additional configurations needed in order to allow SES to connect to AWS. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {SesProvider, SESBindings} from 'loopback4-notifications/ses';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(SESBindings.Config).to({
      accessKeyId: process.env.SES_ACCESS_KEY_ID,
      secretAccessKey: process.env.SES_SECRET_ACCESS_KEY,
      region: process.env.SES_REGION,
    });
    this.bind(NotificationBindings.EmailProvider).toProvider(SesProvider);
    // ...
  }
}
```

All the configurations as specified by AWS docs [here](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/SES.html#constructor-property) are supported in above `SESBindings.Config` key.

In addition to this, some general configurations can also be done, like below.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {SesProvider, SESBindings} from 'loopback4-notifications/ses';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.Config).to({
      sendToMultipleReceivers: false,
      senderEmail: 'support@myapp.com',
    });
    this.bind(SESBindings.Config).to({
      accessKeyId: process.env.SES_ACCESS_KEY_ID,
      secretAccessKey: process.env.SES_SECRET_ACCESS_KEY,
      region: process.env.SES_REGION,
    });
    this.bind(NotificationBindings.EmailProvider).toProvider(SesProvider);
    // ...
  }
}
```

Possible configuration options for the above are mentioned below.

| Option                  | Type    | Description                                                                                                                                                            |
| ----------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| sendToMultipleReceivers | boolean | If set to true, single email will be sent to all receivers mentioned in payload. If set to false, multiple emails will be sent for each receiver mentioned in payload. |
| senderEmail             | string  | This will be used as from email header in sent email.                                                                                                                  |

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to SesProvider we have. Add that provider in place of SesProvider. Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/email/ses/).

```ts
this.bind(NotificationBindings.EmailProvider).toProvider(MyOwnProvider);
```

### Email Notifications Using Nodemailer

This extension provides in-built support of Nodemailer integration for sending emails from the application. In order to use it, run `npm install nodemailer`, and then bind the NodemailerProvider as below in `application.ts`.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {NodemailerProvider} from 'loopback4-notifications/nodemailer';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.EmailProvider).toProvider(
      NodemailerProvider,
    );
    // ...
  }
}
```

There are some additional configurations needed in order to allow NodeMailer to works. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {
  NodemailerProvider,
  NodemailerBindings,
} from 'loopback4-notifications/nodemailer';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NodemailerBindings.Config).to({
      pool: true,
      maxConnections: 100,
      url: '',
      host: 'smtp.example.com',
      port: 80,
      secure: false,
      auth: {
        user: 'username',
        pass: 'password',
      },
      tls: {
        rejectUnauthorized: true,
      },
    });
    this.bind(NotificationBindings.EmailProvider).toProvider(
      NodemailerProvider,
    );
    // ...
  }
}
```

All the configurations as specified by Nodemailer docs for SMTP transport [here](https://nodemailer.com/smtp/) are supported in above NodemailerBindings.Config key.

In addition to this, some general configurations can also be done, like below.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {
  NodemailerProvider,
  NodemailerBindings,
} from 'loopback4-notifications/nodemailer';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.Config).to({
      sendToMultipleReceivers: false,
      senderEmail: 'support@myapp.com',
    });
    this.bind(NodemailerBindings.Config).to({
      pool: true,
      maxConnections: 100,
      url: '',
      host: 'smtp.example.com',
      port: 80,
      secure: false,
      auth: {
        user: 'username',
        pass: 'password',
      },
      tls: {
        rejectUnauthorized: true,
      },
    });
    this.bind(NotificationBindings.EmailProvider).toProvider(
      NodemailerProvider,
    );
    // ...
  }
}
```

Possible configuration options for the above are mentioned below.

| Option                  | Type    | Description                                                                                                                                                            |
| ----------------------- | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| sendToMultipleReceivers | boolean | If set to true, single email will be sent to all receivers mentioned in payload. If set to false, multiple emails will be sent for each receiver mentioned in payload. |
| senderEmail             | string  | This will be used as from email header in sent email.                                                                                                                  |

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to NodemailerProvider we have. Add that provider in place of NodemailerProvider. Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/email/nodemailer/).

```ts
this.bind(NotificationBindings.EmailProvider).toProvider(MyOwnProvider);
```

### SMS Notifications using AWS SNS

This extension provides in-built support of AWS Simple Notification Service integration for sending SMS from the application. In order to use it, run `npm install aws-sdk`, and then bind the SnsProvider as below in `application.ts`.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {SnsProvider} from 'loopback4-notification/sns';
// ...

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.SMSProvider).toProvider(SnsProvider);
    // ...
  }
}
```

There are some additional configurations needed in order to allow SNS to connect to AWS. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {SNSBindings, SnsProvider} from 'loopback4-notification/sns';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(SNSBindings.Config).to({
      accessKeyId: process.env.SNS_ACCESS_KEY_ID,
      secretAccessKey: process.env.SNS_SECRET_ACCESS_KEY,
      region: process.env.SNS_REGION,
    });
    this.bind(NotificationBindings.SMSProvider).toProvider(SnsProvider);
    // ...
  }
}
```

All the configurations as specified by AWS docs [here](https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/SNS.html#constructor-property) are supported in above SNSBindings.Config key.

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to SnsProvider we have. Add that provider in place of SnsProvider.Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/sms/sns/).

```ts
this.bind(NotificationBindings.SMSProvider).toProvider(MyOwnProvider);
```

### SMS / Whatsapp Notifications using Twilio

This extension provides in-built support of Twilio integration for sending SMS / whatsapp notifications from the application. In order to use it, run `npm install twilio`, and then bind the TwilioProvider as below in application.ts.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {
  TwilioProvider
} from 'loopback4-notification/twilio';
....

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    ....

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.SMSProvider).toProvider(TwilioProvider);
    ....
  }
}
```

There are some additional configurations needed in order to connect to Twilio. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {
  TwilioBindings,
  TwilioProvider
} from 'loopback4-notification/twilio';
....

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    ....

    this.component(NotificationsComponent);
    this.bind(TwilioBindings.Config).to({
      accountSid: process.env.TWILIO_ACCOUNT_SID,
      authToken: process.env.TWILIO_AUTH_TOKEN,
      waFrom: process.env.TWILIO_WA_FROM,
      smsFrom: process.env.TWILIO_SMS_FROM,
      waStatusCallback:process.env.TWILIO_WA_STATUS_CALLBACK,
      smsStatusCallback:process.env.TWILIO_SMS_STATUS_CALLBACK,
    });
    this.bind(NotificationBindings.SMSProvider).toProvider(TwilioProvider);
    ....
  }
}
```

All the configurations as specified by Twilio docs and console are supported in above TwilioBindings Config key. smsFrom could be messaging service id, twilio number or short code. waFrom could be whats app number or number associated to channel.

### Push Notifications with Pubnub

This extension provides in-built support of Pubnub integration for sending realtime push notifications from the application. In order to use it, run `npm install pubnub`, and then bind the PushProvider as below in `application.ts`.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {PubNubProvider} from 'loopback4-notifications/pubnub';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.PushProvider).toProvider(PubNubProvider);
    // ...
  }
}
```

There are some additional configurations needed in order to allow Pubnub connection. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {PubnubBindings, PubNubProvider} from 'loopback4-notifications/pubnub';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(PubNubProvider.Config).to({
      subscribeKey: process.env.PUBNUB_SUBSCRIBE_KEY,
      publishKey: process.env.PUBNUB_PUBLISH_KEY,
      secretKey: process.env.PUBNUB_SECRET_KEY,
      ssl: true,
      logVerbosity: true,
      uuid: 'my-app',
      cipherKey: process.env.PUBNUB_CIPHER_KEY,
      apns2Env: 'production',
      apns2BundleId: 'com.app.myapp',
    });
    this.bind(NotificationBindings.PushProvider).toProvider(PubNubProvider);
    // ...
  }
}
```

All the configurations as specified by Pubnub docs [here](https://www.pubnub.com/docs/web-javascript/api-reference-configuration) are supported in above PubNubProvider.Config key.

Additionally, PubNubProvider also supports Pubnub Access Manager integration. Refer [docs](https://www.pubnub.com/docs/platform/security/access-control#overview) here for details.

For PAM support, PubNubProvider exposes two more methods - grantAccess and revokeAccess. These can be used to grant auth tokens and revoke them from Pubnub.

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to PubNubProvider we have. Add that provider in place of PubNubProvider. Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/push/pubnub/).

```ts
this.bind(NotificationBindings.PushProvider).toProvider(MyOwnProvider);
```

### Push Notifications With Socket.io

This extension provides in-built support of Socket.io integration for sending realtime notifications from the application. In order to use it, run `npm install socket.io-client`, and bind the PushProvider as below in `application.ts`.

This provider sends the message to the channel passed via config (or while publishing) and accepts a fix interface to interact with.
The interface could be imported into the project by the name SocketMessage.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {SocketIOProvider} from 'loopback4-notifications/socketio';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(NotificationBindings.PushProvider).toProvider(SocketIOProvider);
    // ...
  }
}
```

There are some additional configurations needed in order to allow Socket connection. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {
  SocketBindings,
  SocketIOProvider,
} from 'loopback4-notifications/socketio';

export class NotificationServiceApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...

    this.component(NotificationsComponent);
    this.bind(SocketBindings.Config).to({
      url: process.env.SOCKETIO_SERVER_URL,
    });
    this.bind(NotificationBindings.PushProvider).toProvider(SocketIOProvider);
    // ...
  }
}
```

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to SocketIOProvider we have. Add that provider in place of SocketIOProvider. Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/push/socketio/).

```ts
this.bind(NotificationBindings.PushProvider).toProvider(MyOwnProvider);
```

### Push Notifications With FCM

This extension provides in-built support of Firebase Cloud Messaging integration for sending realtime push notifications from the application. In order to use it, run `npm i firebase-admin`, and then bind the PushProvider as below in `application.ts`.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {FcmProvider} from 'loopback4-notifications/fcm';
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...
    this.component(NotificationsComponent);
    this.bind(NotificationBindings.PushProvider).toProvider(FcmProvider);
    // ...
  }
}
```

There are some additional configurations needed in order to use Firebase Cloud Messaging. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {FcmProvider, FcmBindings} from 'loopback4-notifications/fcm';
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...
    this.component(NotificationsComponent);
    this.bind(FcmBindings.Config).to({
      apiKey: 'API_KEY',
      authDomain: 'PROJECT_ID.firebaseapp.com',
      // The value of `databaseURL` depends on the location of the database
      databaseURL: 'https://DATABASE_NAME.firebaseio.com',
      projectId: 'PROJECT_ID',
      storageBucket: 'PROJECT_ID.appspot.com',
      messagingSenderId: 'SENDER_ID',
      appId: 'APP_ID',
      // For Firebase JavaScript SDK v7.20.0 and later, `measurementId` is an optional field
      measurementId: 'G-MEASUREMENT_ID',
    });
    this.bind(NotificationBindings.PushProvider).toProvider(FcmProvider);
    // ...
  }
}
```

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to FcmProvider we have. Add that provider in place of FcmProvider. Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/push/fcm/).

```ts
this.bind(NotificationBindings.PushProvider).toProvider(MyOwnProvider);
```

### Push Notifications With APNs

This extension provides in-built support of Apple Push Notification service for sending notification to applications installed on Apple devices. In order to use it bind the PushProvider as below in `application.ts`.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {ApnsProvider} from 'loopback4-notifications/apns';
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...
    this.component(NotificationsComponent);
    this.bind(NotificationBindings.PushProvider).toProvider(ApnsProvider);
    // ...
  }
}
```

There are some additional configurations needed in order to use Apple Push Notification service. You need to add them as below. Make sure these are added before the provider binding.

```ts
import {
  NotificationsComponent,
  NotificationBindings,
} from 'loopback4-notifications';
import {ApnsProvider, ApnsBinding} from 'loopback4-notifications/apns';
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // ...
    this.component(NotificationsComponent);
    this.bind(ApnsBinding.Config).to({
      providerOptions: {
        /* APNs Connection options, see below. */
      };
      options: {
        badge: 1, // optional
        topic: "string"
      };
    });
    this.bind(NotificationBindings.PushProvider).toProvider(ApnsProvider);
    // ...
  }
}
```

For more information about `providerOptions` check: [provider documentation](https://github.com/parse-community/node-apn/blob/master/doc/provider.markdown#apnprovideroptions)

If you wish to use any other service provider of your choice, you can create a provider for the same, similar to ApnsProvider we have. Add that provider in place of ApnsProvider. Refer to the implementation [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/src/providers/push/apns/).

```ts
this.bind(NotificationBindings.PushProvider).toProvider(MyOwnProvider);
```

### Controller Usage

Once the providers are set, the implementation of notification is very easy. Just add an entity implementing the Message interface provided by the component. For specific type, you can also implement specific interfaces like, SMSMessage, PushMessage, EmailMessage. See example below.

```ts
import {Entity, model, property} from '@loopback/repository';
import {
  Message,
  Receiver,
  MessageType,
  MessageOptions,
} from 'loopback4-notifications';

@model({
  name: 'notifications',
})
export class Notification extends Entity implements Message {
  @property({
    type: 'string',
    id: true,
  })
  id?: string;

  @property({
    type: 'string',
    jsonSchema: {
      nullable: true,
    },
  })
  subject?: string;

  @property({
    type: 'string',
    required: true,
  })
  body: string;

  @property({
    type: 'object',
    required: true,
  })
  receiver: Receiver;

  @property({
    type: 'number',
    required: true,
  })
  type: MessageType;

  @property({
    type: 'date',
    name: 'sent',
  })
  sentDate: Date;

  @property({
    type: 'object',
  })
  options?: MessageOptions;

  constructor(data?: Partial<Notification>) {
    super(data);
  }
}
```

After this, you can publish notification from controller API methods as below. You don't need to invoke different methods for different notification. Same publish method will take care of it based on message type sent in request body.

```ts
export class NotificationController {
  constructor(
    // ...
    @inject(NotificationBindings.NotificationProvider)
    private readonly notifProvider: INotification,
  ) {}

  @post('/notifications', {
    responses: {
      [STATUS_CODE.OK]: {
        description: 'Notification model instance',
        content: {
          [CONTENT_TYPE.JSON]: {schema: getModelSchemaRef(Notification)},
        },
      },
    },
  })
  async create(
    @requestBody({
      content: {
        [CONTENT_TYPE.JSON]: {
          schema: getModelSchemaRef(Notification, {exclude: ['id']}),
        },
      },
    })
    notification: Omit<Notification, 'id'>,
  ): Promise<Notification> {
    await this.notifProvider.publish(notification);
  }
}
```

As you can see above, one controller method can now cater to all the different type of notifications.

## Feedback

If you've noticed a bug or have a question or have a feature request, [search the issue tracker](https://github.com/sourcefuse/loopback4-notifications/issues) to see if someone else in the community has already created a ticket.
If not, go ahead and [make one](https://github.com/sourcefuse/loopback4-notifications/issues/new/choose)!
All feature requests are welcome. Implementation time may vary. Feel free to contribute the same, if you can.
If you think this extension is useful, please [star](https://help.github.com/en/articles/about-stars) it. Appreciation really helps in keeping this project alive.

## Contributing

Please read [CONTRIBUTING.md](https://github.com/sourcefuse/loopback4-notifications/blob/master/.github/CONTRIBUTING.md) for details on the process for submitting pull requests to us.

## Code of conduct

Code of conduct guidelines [here](https://github.com/sourcefuse/loopback4-notifications/blob/master/.github/CODE_OF_CONDUCT.md).

## License

[MIT](https://github.com/sourcefuse/loopback4-notifications/blob/master/LICENSE)
