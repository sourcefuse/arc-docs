[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / TenantDeploymentHandlerProvider

# Class: TenantDeploymentHandlerProvider

## Implements

- `Provider`<[`TenantDeploymentHandler`](../modules.md#tenantdeploymenthandler)\>

## Table of contents

### Constructors

- [constructor](TenantDeploymentHandlerProvider.md#constructor)

### Methods

- [handler](TenantDeploymentHandlerProvider.md#handler)
- [value](TenantDeploymentHandlerProvider.md#value)

## Constructors

### constructor

• **new TenantDeploymentHandlerProvider**()

#### Defined in

[services/tenant-deployment-handler.service.ts:12](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deployment-handler.service.ts#L12)

## Methods

### handler

▸ `Private` **handler**(`body`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-deployment-handler.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deployment-handler.service.ts#L18)

___

### value

▸ **value**(): (`body`: `AnyObject`) => `Promise`<`void`\>

#### Returns

`fn`

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `AnyObject` |

##### Returns

`Promise`<`void`\>

#### Implementation of

Provider.value

#### Defined in

[services/tenant-deployment-handler.service.ts:14](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deployment-handler.service.ts#L14)
