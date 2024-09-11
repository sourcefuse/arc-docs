[@sourceloop/ctrl-plane-orchestrator-service](README.md) / Exports

# @sourceloop/ctrl-plane-orchestrator-service

## Table of contents

### Namespaces

- [OrchestratorServiceBindings](modules/OrchestratorServiceBindings.md)

### Enumerations

- [DefaultEventTypes](enums/DefaultEventTypes.md)

### Classes

- [BuilderService](classes/BuilderService.md)
- [OrchestratorService](classes/OrchestratorService.md)
- [OrchestratorServiceComponent](classes/OrchestratorServiceComponent.md)
- [TenantDeploymentHandlerProvider](classes/TenantDeploymentHandlerProvider.md)
- [TenantDeprovisioningHandlerProvider](classes/TenantDeprovisioningHandlerProvider.md)
- [TenantProvisioningFailureHandlerProvider](classes/TenantProvisioningFailureHandlerProvider.md)
- [TenantProvisioningHandlerProvider](classes/TenantProvisioningHandlerProvider.md)
- [TenantProvisioningSuccessHandlerProvider](classes/TenantProvisioningSuccessHandlerProvider.md)
- [TierDetailsProvider](classes/TierDetailsProvider.md)

### Interfaces

- [BuilderServiceInterface](interfaces/BuilderServiceInterface.md)
- [OrchestratorServiceInterface](interfaces/OrchestratorServiceInterface.md)

### Type Aliases

- [TenantDeploymentHandler](modules.md#tenantdeploymenthandler)
- [TenantDeprovisioningHandler](modules.md#tenantdeprovisioninghandler)
- [TenantProvisioningFailureHandler](modules.md#tenantprovisioningfailurehandler)
- [TenantProvisioningHandler](modules.md#tenantprovisioninghandler)
- [TenantProvisioningSuccessHandler](modules.md#tenantprovisioningsuccesshandler)
- [TierDetailsFn](modules.md#tierdetailsfn)

## Type Aliases

### TenantDeploymentHandler

Ƭ **TenantDeploymentHandler**<`T`\>: (`body`: `T`) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` = {} |

#### Type declaration

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `T` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-deployment-handler.service.ts:4](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deployment-handler.service.ts#L4)

___

### TenantDeprovisioningHandler

Ƭ **TenantDeprovisioningHandler**<`T`\>: (`body`: `T`) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` = {} |

#### Type declaration

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `T` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-deprovisioning-handler.service.ts:4](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-deprovisioning-handler.service.ts#L4)

___

### TenantProvisioningFailureHandler

Ƭ **TenantProvisioningFailureHandler**<`T`\>: (`body`: `T`) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` = {} |

#### Type declaration

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `T` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-provisioning-failure-handler.service.ts:4](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-failure-handler.service.ts#L4)

___

### TenantProvisioningHandler

Ƭ **TenantProvisioningHandler**<`T`\>: (`body`: `T`) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` = {} |

#### Type declaration

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `T` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-provisioning-handler.service.ts:4](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-handler.service.ts#L4)

___

### TenantProvisioningSuccessHandler

Ƭ **TenantProvisioningSuccessHandler**<`T`\>: (`body`: `T`) => `Promise`<`void`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` = {} |

#### Type declaration

▸ (`body`): `Promise`<`void`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `body` | `T` |

##### Returns

`Promise`<`void`\>

#### Defined in

[services/tenant-provisioning-success-handler.service.ts:4](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tenant-provisioning-success-handler.service.ts#L4)

___

### TierDetailsFn

Ƭ **TierDetailsFn**: (`tier`: `string`) => `ValueOrPromise`<`AnyObject`\>

#### Type declaration

▸ (`tier`): `ValueOrPromise`<`AnyObject`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `tier` | `string` |

##### Returns

`ValueOrPromise`<`AnyObject`\>

#### Defined in

[services/tier-details.service.ts:9](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/tier-details.service.ts#L9)
