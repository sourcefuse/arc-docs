[@sourceloop/scheduler-service](../README.md) / [Exports](../modules.md) / FreeBusyDTO

# Class: FreeBusyDTO

## Hierarchy

- `Model`

  ↳ **`FreeBusyDTO`**

## Table of contents

### Constructors

- [constructor](FreeBusyDTO.md#constructor)

### Properties

- [items](FreeBusyDTO.md#items)
- [timeMax](FreeBusyDTO.md#timemax)
- [timeMin](FreeBusyDTO.md#timemin)

## Constructors

### constructor

• **new FreeBusyDTO**(`data?`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `data?` | `DataObject`<`Model`\> |

#### Inherited from

Model.constructor

#### Defined in

node_modules/@loopback/repository/dist/model.d.ts:180

## Properties

### items

• **items**: [`EventAttendeeViewItemDTO`](EventAttendeeViewItemDTO.md)[]

#### Defined in

[services/scheduler-service/src/models/free-busy.dto.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/free-busy.dto.ts#L23)

___

### timeMax

• **timeMax**: `Date`

#### Defined in

[services/scheduler-service/src/models/free-busy.dto.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/free-busy.dto.ts#L14)

___

### timeMin

• **timeMin**: `Date`

#### Defined in

[services/scheduler-service/src/models/free-busy.dto.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/scheduler-service/src/models/free-busy.dto.ts#L20)
