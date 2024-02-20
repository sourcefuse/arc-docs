[@sourceloop/task-service](README.md) / Exports

# @sourceloop/task-service

## Table of contents

### Namespaces

- [TaskServiceBindings](modules/TaskServiceBindings.md)

### Enumerations

- [EventType](enums/EventType.md)
- [Source](enums/Source.md)
- [TaskPriority](enums/TaskPriority.md)
- [TaskSeverity](enums/TaskSeverity.md)
- [TaskStatus](enums/TaskStatus.md)
- [UserTaskStatus](enums/UserTaskStatus.md)

### Classes

- [BpmnProvider](classes/BpmnProvider.md)
- [CamundaService](classes/CamundaService.md)
- [ClientAppDTO](classes/ClientAppDTO.md)
- [CreateTaskCommand](classes/CreateTaskCommand.md)
- [EndTaskCommand](classes/EndTaskCommand.md)
- [Event](classes/Event.md)
- [EventController](classes/EventController.md)
- [EventProcessorService](classes/EventProcessorService.md)
- [EventRepository](classes/EventRepository.md)
- [EventWorkflow](classes/EventWorkflow.md)
- [EventWorkflowRepository](classes/EventWorkflowRepository.md)
- [HttpClientService](classes/HttpClientService.md)
- [SubscriberDTO](classes/SubscriberDTO.md)
- [SystemUserProvider](classes/SystemUserProvider.md)
- [Task](classes/Task.md)
- [TaskController](classes/TaskController.md)
- [TaskDto](classes/TaskDto.md)
- [TaskRepository](classes/TaskRepository.md)
- [TaskServiceComponent](classes/TaskServiceComponent.md)
- [TaskUserTaskController](classes/TaskUserTaskController.md)
- [TaskWorkFlowRepository](classes/TaskWorkFlowRepository.md)
- [TaskWorkflow](classes/TaskWorkflow.md)
- [UserTask](classes/UserTask.md)
- [UserTaskRepository](classes/UserTaskRepository.md)
- [UserTaskService](classes/UserTaskService.md)
- [UtilityService](classes/UtilityService.md)

### Interfaces

- [CamundaTask](interfaces/CamundaTask.md)
- [ICommand](interfaces/ICommand.md)
- [IEvent](interfaces/IEvent.md)
- [IEventAdapter](interfaces/IEventAdapter.md)
- [IEventProcessor](interfaces/IEventProcessor.md)
- [IIncomingConnector](interfaces/IIncomingConnector.md)
- [IOutgoingConnector](interfaces/IOutgoingConnector.md)
- [IUserTaskService](interfaces/IUserTaskService.md)
- [Message](interfaces/Message.md)

### Type Aliases

- [CamundaTaskParameters](modules.md#camundataskparameters)
- [EventFilter](modules.md#eventfilter)
- [HttpOptions](modules.md#httpoptions)
- [IEventStreamHandler](modules.md#ieventstreamhandler)
- [ProccessorFunction](modules.md#proccessorfunction)
- [TaskServiceConfig](modules.md#taskserviceconfig)
- [User](modules.md#user)

### Variables

- [AuthCacheSourceName](modules.md#authcachesourcename)
- [AuthDbSourceName](modules.md#authdbsourcename)
- [ExportedWorkflowServiceBindingConfig](modules.md#exportedworkflowservicebindingconfig)
- [TaskDbSourceName](modules.md#taskdbsourcename)
- [WorkflowServiceSourceName](modules.md#workflowservicesourcename)

## Type Aliases

### CamundaTaskParameters

Ƭ **CamundaTaskParameters**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `task` | `Task` |
| `taskService` | `CamundaTaskService` |

#### Defined in

[services/task-service/src/types.ts:93](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L93)

___

### EventFilter

Ƭ **EventFilter**: (`event`: [`IEvent`](interfaces/IEvent.md)) => `boolean`

#### Type declaration

▸ (`event`): `boolean`

##### Parameters

| Name | Type |
| :------ | :------ |
| `event` | [`IEvent`](interfaces/IEvent.md) |

##### Returns

`boolean`

#### Defined in

[services/task-service/src/types.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L91)

___

### HttpOptions

Ƭ **HttpOptions**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `headers?` | `AnyObject` |
| `query?` | `AnyObject` |
| `urlParams?` | `AnyObject` |

#### Defined in

[services/task-service/src/types.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L41)

___

### IEventStreamHandler

Ƭ **IEventStreamHandler**<`T`\>: (`event`: `T`) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | [`IEvent`](interfaces/IEvent.md) |

#### Type declaration

▸ (`event`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `event` | `T` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/task-service/src/interfaces/i-incoming-connector.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/interfaces/i-incoming-connector.ts#L8)

___

### ProccessorFunction

Ƭ **ProccessorFunction**: (`task`: `AnyObject`, `taskService`: `AnyObject`, `payload`: `AnyObject`) => { `payload`: `AnyObject` ; `vars`: `AnyObject` \| ``null``  }

#### Type declaration

▸ (`task`, `taskService`, `payload`): `Object`

##### Parameters

| Name | Type |
| :------ | :------ |
| `task` | `AnyObject` |
| `taskService` | `AnyObject` |
| `payload` | `AnyObject` |

##### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `payload` | `AnyObject` |
| `vars` | `AnyObject` \| ``null`` |

#### Defined in

[services/task-service/src/types.ts:27](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L27)

___

### TaskServiceConfig

Ƭ **TaskServiceConfig**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `useCustomSequence` | `boolean` |
| `useSequelize?` | `boolean` |

#### Defined in

[services/task-service/src/types.ts:98](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L98)

___

### User

Ƭ **User**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `userTenantId` | `string` |
| `username` | `string` |

#### Defined in

[services/task-service/src/types.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L103)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[services/task-service/src/types.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L17)

___

### AuthDbSourceName

• `Const` **AuthDbSourceName**: ``"AuthDB"``

#### Defined in

[services/task-service/src/types.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L16)

___

### ExportedWorkflowServiceBindingConfig

• `Const` **ExportedWorkflowServiceBindingConfig**: `BindingKey`<``null`` \| `IWorkflowServiceConfig`\> = `WorkflowServiceBindings.Config`

#### Defined in

[services/task-service/src/types.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L88)

___

### TaskDbSourceName

• `Const` **TaskDbSourceName**: ``"taskdb"``

#### Defined in

[services/task-service/src/types.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L86)

___

### WorkflowServiceSourceName

• `Const` **WorkflowServiceSourceName**: ``"WorkflowCache"``

#### Defined in

[services/task-service/src/types.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/task-service/src/types.ts#L87)
