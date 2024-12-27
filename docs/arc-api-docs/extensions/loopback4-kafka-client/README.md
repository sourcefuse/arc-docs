<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-kafka-client](https://github.com/sourcefuse/loopback4-kafka-client)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-kafka-client">
<img src="https://img.shields.io/npm/v/loopback4-kafka-client.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-kafka-client" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-kafka-client?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://github.com/sourcefuse/loopback4-kafka-client/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-kafka-client">
</a>
<a href="https://www.npmjs.com/package/loopback4-kafka-client" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-kafka-client.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-kafka-client/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-kafka-client.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

A Kafka Client for Loopback4 built on top of [KafkaJS](https://kafka.js.org/).

## Installation

Install KafkaConnectorComponent using `npm`;

```sh
$ [npm install | yarn add] loopback4-kafka-client
```

## Basic Use

Configure and load KafkaConnectorComponent in the application constructor
as shown below.

```ts
import {
  KafkaClientBindings,
  KafkaClientComponent,
  KafkaClientOptions,
} from 'loopback4-kafka-client';
// ...
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    this.configure<KafkaClientOptions>(KafkaClientBindings.Component).to({
      initObservers: true, // if you want to init consumer lifeCycleObserver
      topics: [Topics.First], // if you want to use producers for given topics
      connection: {
        // refer https://kafka.js.org/docs/configuration
        brokers: [process.env.KAFKA_SERVER ?? ''],
      },
    });
    this.bind(KafkaClientBindings.ProducerConfiguration).to({
      // your producer config
      // refer https://kafka.js.org/docs/producing#options
    });
    this.bind(KafkaClientBindings.ConsumerConfiguration).to({
      // refer https://kafka.js.org/docs/consuming#options
      groupId: process.env.KAFKA_CONSUMER_GROUP,
    });

    this.component(KafkaClientComponent);
    // ...
  }
  // ...
}
```

#### Producer and Consumer

### Stream

Producers and Consumers work on a `Stream` which defines the topic and events used by the application. You can implement the `IStreamDefinition` to create your own stream class.

##### Example

```ts
export class TestStream implements IStreamDefinition {
  topic = Topics.First;
  messages: {
    // [<event type key from enum>] : <event type or interface>
    [Events.start]: StartEvent;
    [Events.stop]: StopEvent;
  };
}
```

### Consumer

A Consumer is a [`loopback extension`](https://loopback.io/doc/en/lb4/Extension-point-and-extensions.html) that is used by the [`KafkaConsumerService`](./src/services/kafka-consumer.service.ts) to initialize consumers. It must implement one of the `IConsumer`, `ISharedConsumer` or `IGenericConsumer` interfaces and should be using the `asConsumer` binding template. If you want the consumers to start at the start of your application, you should pass the `initObservers` config to the Component configuration.

- `IConsumer` - simple consumer for 1 event in a stream
- `ISharedConsumer` - consumer that consumes data for multiple events in a stream (defined with an array of events)
- `IGenericConsumer` - consumer that consumes data for all events in a stream/topic (defined without any event). By default it is not triggered for an event if a more specific consumer is bound for that event. This behaviour can be changed using the `alwaysRunGenericConsumer` option in consumer configuration.

You can bind any consumer related configuration using the `KafkaClientBindings.ConsumerConfiguration` key. It accepts all the options of KafkaJS, along with an additional option - `alwaysRunGenericConsumer` - this option runs any generic consumer if available always, even if more specific consumers are bound by the client(only the specific consumer would run if this option is false or not provided).

##### Example

```ts
// application.ts
this.configure(KafkaConnectorComponentBindings.COMPONENT).to({
  ...
  initObservers: true
  ...
});
```

```ts
// start.consumer.ts
// use @genericConsumer for a generic consumer
@consumer<TestStream, Events.start>()
export class StartConsumer implements IConsumer<TestStream, Events.start> {
  constructor(
    @inject('test.handler.start')
    public handler: StreamHandler<TestStream, Events.start>,
  ) {}
  topic = Topics.First;
  event: Events.start = Events.start;
  // you can write the handler as a method
  handler(payload: StartEvent) {
    console.log(payload);
  }
}
```

If you want to write a shared handler for different events, you can use the `eventHandlerKey` to bind a handler in the application -

```ts
// application.ts
this.bind(eventHandlerKey(Events.Start)).to((payload: StartEvent) => {
  console.log(payload);
});
this.bind(eventHandlerKey<TestStream, Events.Stop>(Events.Stop)).toProvider(
  CustomEventHandlerProvider,
);
```

and then you can use the handler using the `@eventHandler` decorator -

```ts
// start.consumer.ts
@consumer<TestStream, Events.start>()
export class StartConsumer implements IConsumer<TestStream, Events.start> {
  constructor(
    @eventHandler<TestStream>(Events.Start)
    public handler: StreamHandler<TestStream, Events.start>,
  ) {}
  topic = Topics.First;
  event: Events.start = Events.start;
}
```

### Producer

A Producer is a loopback service for producing message for a particular topic, you can inject a producer using the `@producer(TOPIC_NAME)` decorator.
Note: The topic name passed to decorator must be first configured in the Component configuration's topic property -
If you want to produce a raw message without any event type, you can use the `@genericProducer(TOPIC_NAME)` decorator, note that in this case, the topic name must be passed in the genericTopics property of the component configuration.

#### Example

```ts
// application.ts
...
this.configure(KafkaConnectorComponentBindings.COMPONENT).to({
  ...
  topics: [Topics.First],
  ...
});
...
// test.service.ts
...
class TestService {
  constructor(
    @producer(Topics.First)
    private producer: Producer<TestStream>
  ) {}
}
```
