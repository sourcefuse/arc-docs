[@sourceloop/ctrl-plane-orchestrator-service](../README.md) / [Exports](../modules.md) / OrchestratorServiceBindings

# Namespace: OrchestratorServiceBindings

## Table of contents

### Variables

- [BUILDER\_SERVICE](OrchestratorServiceBindings.md#builder_service)
- [ORCHESTRATOR\_SERVICE](OrchestratorServiceBindings.md#orchestrator_service)
- [TENANT\_DEPLOYMENT\_HANDLER](OrchestratorServiceBindings.md#tenant_deployment_handler)
- [TENANT\_DEPROVISIONING\_HANDLER](OrchestratorServiceBindings.md#tenant_deprovisioning_handler)
- [TENANT\_PROVISIONING\_FAILURE\_HANDLER](OrchestratorServiceBindings.md#tenant_provisioning_failure_handler)
- [TENANT\_PROVISIONING\_HANDLER](OrchestratorServiceBindings.md#tenant_provisioning_handler)
- [TENANT\_PROVISIONING\_SUCCESS\_HANDLER](OrchestratorServiceBindings.md#tenant_provisioning_success_handler)
- [TIER\_DETAILS\_PROVIDER](OrchestratorServiceBindings.md#tier_details_provider)

## Variables

### BUILDER\_SERVICE

• `Const` **BUILDER\_SERVICE**: `BindingKey`<[`BuilderServiceInterface`](../interfaces/BuilderServiceInterface.md)\>

#### Defined in

[services/types.ts:36](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L36)

___

### ORCHESTRATOR\_SERVICE

• `Const` **ORCHESTRATOR\_SERVICE**: `BindingKey`<[`OrchestratorServiceInterface`](../interfaces/OrchestratorServiceInterface.md)<[`DefaultEventTypes`](../enums/DefaultEventTypes.md), `AnyObject`\>\>

#### Defined in

[services/types.ts:39](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L39)

___

### TENANT\_DEPLOYMENT\_HANDLER

• `Const` **TENANT\_DEPLOYMENT\_HANDLER**: `BindingKey`<[`TenantDeploymentHandler`](../modules.md#tenantdeploymenthandler)<{}\>\>

#### Defined in

[services/types.ts:32](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L32)

___

### TENANT\_DEPROVISIONING\_HANDLER

• `Const` **TENANT\_DEPROVISIONING\_HANDLER**: `BindingKey`<[`TenantDeprovisioningHandler`](../modules.md#tenantdeprovisioninghandler)<{}\>\>

#### Defined in

[services/types.ts:20](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L20)

___

### TENANT\_PROVISIONING\_FAILURE\_HANDLER

• `Const` **TENANT\_PROVISIONING\_FAILURE\_HANDLER**: `BindingKey`<[`TenantProvisioningFailureHandler`](../modules.md#tenantprovisioningfailurehandler)<{}\>\>

#### Defined in

[services/types.ts:28](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L28)

___

### TENANT\_PROVISIONING\_HANDLER

• `Const` **TENANT\_PROVISIONING\_HANDLER**: `BindingKey`<[`TenantProvisioningHandler`](../modules.md#tenantprovisioninghandler)<{}\>\>

#### Defined in

[services/types.ts:16](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L16)

___

### TENANT\_PROVISIONING\_SUCCESS\_HANDLER

• `Const` **TENANT\_PROVISIONING\_SUCCESS\_HANDLER**: `BindingKey`<[`TenantProvisioningSuccessHandler`](../modules.md#tenantprovisioningsuccesshandler)<{}\>\>

#### Defined in

[services/types.ts:24](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L24)

___

### TIER\_DETAILS\_PROVIDER

• `Const` **TIER\_DETAILS\_PROVIDER**: `BindingKey`<[`TierDetailsFn`](../modules.md#tierdetailsfn)\>

#### Defined in

[services/types.ts:13](https://github.com/sourcefuse/arc-saas/blob/5e03dcb/services/orchestrator-service/src/services/types.ts#L13)
