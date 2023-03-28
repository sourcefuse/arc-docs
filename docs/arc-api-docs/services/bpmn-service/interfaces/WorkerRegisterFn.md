[@sourceloop/bpmn-service](../README.md) / [Exports](../modules.md) / WorkerRegisterFn

# Interface: WorkerRegisterFn<T, R\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | `AnyObject` |
| `R` | `AnyObject` |

## Callable

### WorkerRegisterFn

▸ **WorkerRegisterFn**(`bpmnName`, `topicName`, `commandCtor`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `bpmnName` | `string` |
| `topicName` | `string` |
| `commandCtor` | [`BPMTask`](../classes/BPMTask.md)<`T`, `R`\> |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/bpmn-service/src/types/types.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/a84fe677/services/bpmn-service/src/types/types.ts#L46)
