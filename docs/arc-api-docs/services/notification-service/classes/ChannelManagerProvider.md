[@sourceloop/notification-service](../README.md) / [Exports](../modules.md) / ChannelManagerProvider

# Class: ChannelManagerProvider

## Implements

- `Provider`<[`IChannelManager`](../interfaces/IChannelManager.md)\>

## Table of contents

### Constructors

- [constructor](ChannelManagerProvider.md#constructor)

### Methods

- [value](ChannelManagerProvider.md#value)

## Constructors

### constructor

• **new ChannelManagerProvider**()

## Methods

### value

▸ **value**(): `Object`

The function `value` returns an object with a method `isChannelAccessAllowed` that always returns
`true`.

#### Returns

`Object`

The `value()` function is returning an object with a property `isChannelAccessAllowed`
which is a function that always returns `true`.

| Name | Type |
| :------ | :------ |
| `isChannelAccessAllowed` | () => `boolean` |

#### Implementation of

Provider.value

#### Defined in

[services/notification-service/src/providers/channel-manager.service.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/notification-service/src/providers/channel-manager.service.ts#L16)
