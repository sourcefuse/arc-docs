[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / OrchestratorService

# Class: OrchestratorService

## Implements

- [`OrchestratorServiceInterface`](../interfaces/OrchestratorServiceInterface.md)

## Table of contents

### Constructors

- [constructor](OrchestratorService.md#constructor)

### Properties

- [handleTenantDeployment](OrchestratorService.md#handletenantdeployment)
- [handleTenantDeprovisioning](OrchestratorService.md#handletenantdeprovisioning)
- [handleTenantProvisioning](OrchestratorService.md#handletenantprovisioning)
- [handleTenantProvisioningFailure](OrchestratorService.md#handletenantprovisioningfailure)
- [handleTenantProvisioningSuccess](OrchestratorService.md#handletenantprovisioningsuccess)

### Methods

- [handleEvent](OrchestratorService.md#handleevent)

## Constructors

### constructor

• **new OrchestratorService**(`handleTenantProvisioning`, `handleTenantDeprovisioning`, `handleTenantProvisioningSuccess`, `handleTenantProvisioningFailure`, `handleTenantDeployment`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `handleTenantProvisioning` | [`TenantProvisioningHandler`](../modules.md#tenantprovisioninghandler)<{}\> |
| `handleTenantDeprovisioning` | [`TenantDeprovisioningHandler`](../modules.md#tenantdeprovisioninghandler)<{}\> |
| `handleTenantProvisioningSuccess` | [`TenantProvisioningSuccessHandler`](../modules.md#tenantprovisioningsuccesshandler)<{}\> |
| `handleTenantProvisioningFailure` | [`TenantProvisioningFailureHandler`](../modules.md#tenantprovisioningfailurehandler)<{}\> |
| `handleTenantDeployment` | [`TenantDeploymentHandler`](../modules.md#tenantdeploymenthandler)<{}\> |

#### Defined in

[services/orchestrator.service.ts:18](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L18)

## Properties

### handleTenantDeployment

• `Private` **handleTenantDeployment**: [`TenantDeploymentHandler`](../modules.md#tenantdeploymenthandler)<{}\>

#### Defined in

[services/orchestrator.service.ts:28](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L28)

___

### handleTenantDeprovisioning

• `Private` **handleTenantDeprovisioning**: [`TenantDeprovisioningHandler`](../modules.md#tenantdeprovisioninghandler)<{}\>

#### Defined in

[services/orchestrator.service.ts:22](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L22)

___

### handleTenantProvisioning

• `Private` **handleTenantProvisioning**: [`TenantProvisioningHandler`](../modules.md#tenantprovisioninghandler)<{}\>

#### Defined in

[services/orchestrator.service.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L20)

___

### handleTenantProvisioningFailure

• `Private` **handleTenantProvisioningFailure**: [`TenantProvisioningFailureHandler`](../modules.md#tenantprovisioningfailurehandler)<{}\>

#### Defined in

[services/orchestrator.service.ts:26](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L26)

___

### handleTenantProvisioningSuccess

• `Private` **handleTenantProvisioningSuccess**: [`TenantProvisioningSuccessHandler`](../modules.md#tenantprovisioningsuccesshandler)<{}\>

#### Defined in

[services/orchestrator.service.ts:24](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L24)

## Methods

### handleEvent

▸ **handleEvent**(`eventType`, `eventBody`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `eventType` | [`DefaultEventTypes`](../enums/DefaultEventTypes.md) |
| `eventBody` | `AnyObject` |

#### Returns

`Promise`<`void`\>

#### Implementation of

[OrchestratorServiceInterface](../interfaces/OrchestratorServiceInterface.md).[handleEvent](../interfaces/OrchestratorServiceInterface.md#handleevent)

#### Defined in

[services/orchestrator.service.ts:31](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/orchestrator.service.ts#L31)
