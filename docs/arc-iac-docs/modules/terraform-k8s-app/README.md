# terraform-k8s-app

## Overview

Terraform module for deploying an application to a Kubernetes cluster.  

## Usage

<details open="true">

```hcl
module "terraform-k8s-app" {
  source = "git::https://github.com/sourcefuse/terraform-k8s-app.git"
  
  for_each              = local.k8s_apps
  app_label             = each.value.app_label
  container_image       = each.value.container_image
  container_name        = each.value.container_name
  container_port        = each.value.container_port
  deployment_name       = each.value.deployment_name
  namespace_name        = each.value.namespace_name
  port                  = each.value.port
  port_name             = each.value.port_name
  protocol              = each.value.protocol
  service_name          = each.value.service_name
  target_port           = each.value.target_port
  replica_count         = each.value.replica_count

  ## pvc
  persistent_volume_claim_enable           = try(each.value.persistent_volume_claim_enable, false)
  persistent_volume_claim_name             = try(each.value.persistent_volume_claim_name, null)
  persistent_volume_claim_labels           = try(each.value.persistent_volume_claim_labels, {})
  persistent_volume_claim_namespace        = try(each.value.persistent_volume_claim_namespace, null)
  persistent_volume_claim_resource_request = try(each.value.persistent_volume_claim_resource_request, {})

  environment_variables = each.value.environment_variables
}

locals {
  redis_host = "redis.${kubernetes_namespace.sourceloop_sandbox.metadata[0].name}.svc.cluster.local"
  k8s_apps = {
    redis_application = {
      app_label             = "redis"
      container_image       = var.redis_image
      container_name        = "redis"
      container_port        = 6379
      deployment_name       = "redis"
      namespace_name        = kubernetes_namespace.sourceloop_sandbox.metadata[0].name
      port                  = 6379
      port_name             = "6379"
      protocol              = "TCP"
      service_name          = "redis"
      target_port           = 6379
      replica_count         = 1
      environment_variables = []
    }
  }
}
```

</details>

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.6.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.7.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_config_map.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_deployment.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_persistent_volume.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume) | resource |
| [kubernetes_persistent_volume_claim.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume_claim) | resource |
| [kubernetes_secret.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [kubernetes_service.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [time_sleep.create_config](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_label"></a> [app\_label](#input\_app\_label) | Value for the app label used for label matching | `string` | n/a | yes |
| <a name="input_config_map_binary_data"></a> [config\_map\_binary\_data](#input\_config\_map\_binary\_data) | Map of binary data for the config map. | `map(any)` | `{}` | no |
| <a name="input_config_map_data"></a> [config\_map\_data](#input\_config\_map\_data) | Map of data for the config map. | `map(any)` | `{}` | no |
| <a name="input_config_map_enabled"></a> [config\_map\_enabled](#input\_config\_map\_enabled) | Enable the Kubernetes config map. | `bool` | `false` | no |
| <a name="input_config_map_name"></a> [config\_map\_name](#input\_config\_map\_name) | Name to give the config map. | `any` | `null` | no |
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | Docker image for the k8s deployment | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of container for the k8s deployment | `string` | n/a | yes |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Container port for the k8s deployment | `number` | n/a | yes |
| <a name="input_container_resources_enabled"></a> [container\_resources\_enabled](#input\_container\_resources\_enabled) | Enable container resource limits / requests. | `bool` | `false` | no |
| <a name="input_container_resources_limits"></a> [container\_resources\_limits](#input\_container\_resources\_limits) | Describes the maximum amount of compute resources allowed. For more info see http://kubernetes.io/docs/user-guide/compute-resources | <pre>object({<br>    cpu    = string<br>    memory = string<br>  })</pre> | <pre>{<br>  "cpu": "0.5",<br>  "memory": "512Mi"<br>}</pre> | no |
| <a name="input_container_resources_requests"></a> [container\_resources\_requests](#input\_container\_resources\_requests) | Describes the minimum amount of compute resources required. | <pre>object({<br>    cpu    = string<br>    memory = string<br>  })</pre> | <pre>{<br>  "cpu": "250m",<br>  "memory": "50Mi"<br>}</pre> | no |
| <a name="input_csi_secret_volumes"></a> [csi\_secret\_volumes](#input\_csi\_secret\_volumes) | List of maps of CSI volumes. These are used to dynamically generate the volume specs. | <pre>list(object({<br>    volume_name = string,<br>    mount_path  = string,<br>    read_only   = bool,<br>    driver      = string,<br>    volume_attributes = object({<br>      secretProviderClass = string<br>    })<br>  }))</pre> | `[]` | no |
| <a name="input_deployment_name"></a> [deployment\_name](#input\_deployment\_name) | Name of the k8s deployment | `string` | n/a | yes |
| <a name="input_enable_kubernetes_service"></a> [enable\_kubernetes\_service](#input\_enable\_kubernetes\_service) | Enable the kubernetes service. | `bool` | `true` | no |
| <a name="input_env_secret_refs"></a> [env\_secret\_refs](#input\_env\_secret\_refs) | List of secretKeyRefs to add to ENV variables. | <pre>list(object({<br>    env_var_name        = string,<br>    secret_key_ref_name = string,<br>    secret_key_ref_key  = string<br>  }))</pre> | `[]` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | List of maps for environment variables | `list(object({ name = string, value = string }))` | `[]` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of the k8s namespace | `string` | n/a | yes |
| <a name="input_persistent_volume_access_modes"></a> [persistent\_volume\_access\_modes](#input\_persistent\_volume\_access\_modes) | Contains all ways the volume can be mounted. Valid values are ReadWriteOnce, ReadOnlyMany, ReadWriteMany. | `list(string)` | <pre>[<br>  "ReadWriteMany"<br>]</pre> | no |
| <a name="input_persistent_volume_annotations"></a> [persistent\_volume\_annotations](#input\_persistent\_volume\_annotations) | An unstructured key value map stored with the persistent volume that may be used to store arbitrary metadata. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_claim_access_modes"></a> [persistent\_volume\_claim\_access\_modes](#input\_persistent\_volume\_claim\_access\_modes) | A set of the desired access modes the volume should have. | `list(string)` | <pre>[<br>  "ReadWriteMany"<br>]</pre> | no |
| <a name="input_persistent_volume_claim_annotations"></a> [persistent\_volume\_claim\_annotations](#input\_persistent\_volume\_claim\_annotations) | An unstructured key value map stored with the persistent volume claim that may be used to store arbitrary metadata. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_claim_enable"></a> [persistent\_volume\_claim\_enable](#input\_persistent\_volume\_claim\_enable) | Enable a persistent volume claim. | `bool` | `false` | no |
| <a name="input_persistent_volume_claim_labels"></a> [persistent\_volume\_claim\_labels](#input\_persistent\_volume\_claim\_labels) | Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume claim. May match selectors of replication controllers and services. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_claim_name"></a> [persistent\_volume\_claim\_name](#input\_persistent\_volume\_claim\_name) | Name of the persistent volume claim, must be unique. Cannot be updated. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_namespace"></a> [persistent\_volume\_claim\_namespace](#input\_persistent\_volume\_claim\_namespace) | Namespace defines the space within which name of the persistent volume claim must be unique. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_resource_limits"></a> [persistent\_volume\_claim\_resource\_limits](#input\_persistent\_volume\_claim\_resource\_limits) | Map describing the maximum amount of compute resources allowed. | `map(string)` | `{}` | no |
| <a name="input_persistent_volume_claim_resource_request"></a> [persistent\_volume\_claim\_resource\_request](#input\_persistent\_volume\_claim\_resource\_request) | Map describing the minimum amount of compute resources required. | `map(string)` | <pre>{<br>  "storage": "5Gi"<br>}</pre> | no |
| <a name="input_persistent_volume_claim_storage_class_name"></a> [persistent\_volume\_claim\_storage\_class\_name](#input\_persistent\_volume\_claim\_storage\_class\_name) | Name of the storage class requested by the claim. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_storage_size"></a> [persistent\_volume\_claim\_storage\_size](#input\_persistent\_volume\_claim\_storage\_size) | Map describing the minimum amount of compute resources required. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_volume_name"></a> [persistent\_volume\_claim\_volume\_name](#input\_persistent\_volume\_claim\_volume\_name) | The binding reference to the PersistentVolume backing this claim. | `any` | `null` | no |
| <a name="input_persistent_volume_enable"></a> [persistent\_volume\_enable](#input\_persistent\_volume\_enable) | Enable a persistent volume. | `bool` | `false` | no |
| <a name="input_persistent_volume_labels"></a> [persistent\_volume\_labels](#input\_persistent\_volume\_labels) | Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume. May match selectors of replication controllers and services. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_mount_path"></a> [persistent\_volume\_mount\_path](#input\_persistent\_volume\_mount\_path) | Path to mount the persistent volume for secrets | `string` | `"/mnt/secrets-store"` | no |
| <a name="input_persistent_volume_name"></a> [persistent\_volume\_name](#input\_persistent\_volume\_name) | Name of the persistent volume, must be unique. Cannot be updated. | `any` | `null` | no |
| <a name="input_persistent_volume_reclaim_policy"></a> [persistent\_volume\_reclaim\_policy](#input\_persistent\_volume\_reclaim\_policy) | What happens to a persistent volume when released from its claim. Valid options are Retain (default), Delete and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. | `string` | `"Delete"` | no |
| <a name="input_persistent_volume_secret_provider_class"></a> [persistent\_volume\_secret\_provider\_class](#input\_persistent\_volume\_secret\_provider\_class) | Name of the secret provider class for CSI driver volume mounts for secret | `string` | `null` | no |
| <a name="input_persistent_volume_secrets_driver"></a> [persistent\_volume\_secrets\_driver](#input\_persistent\_volume\_secrets\_driver) | Driver for persistent volume. Defaults to CSI driver setting | `string` | `"secrets-store.csi.k8s.io"` | no |
| <a name="input_persistent_volume_storage_path"></a> [persistent\_volume\_storage\_path](#input\_persistent\_volume\_storage\_path) | Path of the directory on the host. | `any` | `null` | no |
| <a name="input_persistent_volume_storage_size"></a> [persistent\_volume\_storage\_size](#input\_persistent\_volume\_storage\_size) | Persistent volume size. | `string` | `"1Gi"` | no |
| <a name="input_port"></a> [port](#input\_port) | k8s service port | `number` | n/a | yes |
| <a name="input_port_name"></a> [port\_name](#input\_port\_name) | Name of the service port | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | k8s service protocol | `string` | n/a | yes |
| <a name="input_replica_count"></a> [replica\_count](#input\_replica\_count) | k8s Deployment replica count | `number` | n/a | yes |
| <a name="input_secret_annotations"></a> [secret\_annotations](#input\_secret\_annotations) | An unstructured key value map stored with the secret that may be used to store arbitrary metadata. | `any` | `null` | no |
| <a name="input_secret_data"></a> [secret\_data](#input\_secret\_data) | A map of the secret data. | `map(any)` | `{}` | no |
| <a name="input_secret_enable"></a> [secret\_enable](#input\_secret\_enable) | Enable Kubernetes secrets resource. | `bool` | `false` | no |
| <a name="input_secret_labels"></a> [secret\_labels](#input\_secret\_labels) | Map of string keys and values that can be used to organize and categorize (scope and select) the secret. | `map(any)` | `{}` | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Name of the secret, must be unique. Cannot be updated. | `any` | `null` | no |
| <a name="input_secret_namespace"></a> [secret\_namespace](#input\_secret\_namespace) | Namespace defines the space within which name of the secret must be unique. | `any` | `null` | no |
| <a name="input_secret_type"></a> [secret\_type](#input\_secret\_type) | The secret type. Defaults to Opaque. See https://kubernetes.io/docs/concepts/configuration/secret/#secret-types for the different types. | `string` | `"Opaque"` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Name of the service account to be used for this deployment. | `any` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of the k8s service | `string` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | k8s service target port | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host"></a> [host](#output\_host) | n/a |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | n/a |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Prerequisites

* [Docker (Optional)](https://docs.docker.com/engine/install/)
* [golang](https://golang.org/doc/install#install)
* [golint](https://github.com/golang/lint#installation)
* [pre-commit](https://pre-commit.com/#install)
* [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
* [terraform-docs](https://github.com/segmentio/terraform-docs)

### Configurations

### Tests
Tests are available in `test` directory located in the root of this project.    

#### Adding a new test  
When something new has been added to the terraform `example` configuration, it needs to be updated to include testing. 
This can be achieved by adding the test to `test/example_test.go`.  

* For more information on Terratest, please see their [_Getting Started_](https://terratest.gruntwork.io/docs/#getting-started) docs.  
* For more information on k8s testing, see the [k8s docs](https://pkg.go.dev/github.com/gruntwork-io/terratest/modules/k8s?utm_source=godoc).


#### Running with Docker
The following instructions will be done from the root of the project.  

* Build the image locally:  
  ```shell
  docker build -t terraform-k8s-app-test -f Dockerfile-test .
  ```
  
* Start the container:
  ```shell
  docker run -it -v $HOME/.kube/config:/home/tester/.kube/config:ro --net=host  terraform-k8s-app-test
  ```

#### Running on the local system
**TL;DR:** From the `test` directory, run `go-test.sh` to get all requirements and run a test.  

* Configure golang deps for tests
  ```sh
  go get github.com/gruntwork-io/terratest/modules/terraform
  go get github.com/gruntwork-io/terratest/modules/k8s
  go get github.com/stretchr/testify/assert
  go get testing
  go get fmt
  ```

  **-OR-**  
  
  ```shell
  ./go-get.sh 
  ```

* From the `test` directory, run the below command:
  ```sh
  go test
  ```
  
  **-OR-**  
  
  ```shell
  ./go-test.sh 
  ```

## Authors

This project is authored by:  
* SourceFuse  

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.6.1 |
| <a name="provider_time"></a> [time](#provider\_time) | 0.7.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_config_map.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/config_map) | resource |
| [kubernetes_deployment.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/deployment) | resource |
| [kubernetes_persistent_volume.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume) | resource |
| [kubernetes_persistent_volume_claim.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume_claim) | resource |
| [kubernetes_secret.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/secret) | resource |
| [kubernetes_service.default](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service) | resource |
| [time_sleep.create_config](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/sleep) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_label"></a> [app\_label](#input\_app\_label) | Value for the app label used for label matching | `string` | n/a | yes |
| <a name="input_config_map_binary_data"></a> [config\_map\_binary\_data](#input\_config\_map\_binary\_data) | Map of binary data for the config map. | `map(any)` | `{}` | no |
| <a name="input_config_map_data"></a> [config\_map\_data](#input\_config\_map\_data) | Map of data for the config map. | `map(any)` | `{}` | no |
| <a name="input_config_map_enabled"></a> [config\_map\_enabled](#input\_config\_map\_enabled) | Enable the Kubernetes config map. | `bool` | `false` | no |
| <a name="input_config_map_name"></a> [config\_map\_name](#input\_config\_map\_name) | Name to give the config map. | `any` | `null` | no |
| <a name="input_container_image"></a> [container\_image](#input\_container\_image) | Docker image for the k8s deployment | `string` | n/a | yes |
| <a name="input_container_name"></a> [container\_name](#input\_container\_name) | Name of container for the k8s deployment | `string` | n/a | yes |
| <a name="input_container_port"></a> [container\_port](#input\_container\_port) | Container port for the k8s deployment | `number` | n/a | yes |
| <a name="input_container_resources_enabled"></a> [container\_resources\_enabled](#input\_container\_resources\_enabled) | Enable container resource limits / requests. | `bool` | `false` | no |
| <a name="input_container_resources_limits"></a> [container\_resources\_limits](#input\_container\_resources\_limits) | Describes the maximum amount of compute resources allowed. For more info see http://kubernetes.io/docs/user-guide/compute-resources | <pre>object({<br>    cpu    = string<br>    memory = string<br>  })</pre> | <pre>{<br>  "cpu": "0.5",<br>  "memory": "512Mi"<br>}</pre> | no |
| <a name="input_container_resources_requests"></a> [container\_resources\_requests](#input\_container\_resources\_requests) | Describes the minimum amount of compute resources required. | <pre>object({<br>    cpu    = string<br>    memory = string<br>  })</pre> | <pre>{<br>  "cpu": "250m",<br>  "memory": "50Mi"<br>}</pre> | no |
| <a name="input_csi_secret_volumes"></a> [csi\_secret\_volumes](#input\_csi\_secret\_volumes) | List of maps of CSI volumes. These are used to dynamically generate the volume specs. | <pre>list(object({<br>    volume_name = string,<br>    mount_path  = string,<br>    read_only   = bool,<br>    driver      = string,<br>    volume_attributes = object({<br>      secretProviderClass = string<br>    })<br>  }))</pre> | `[]` | no |
| <a name="input_deployment_name"></a> [deployment\_name](#input\_deployment\_name) | Name of the k8s deployment | `string` | n/a | yes |
| <a name="input_enable_kubernetes_service"></a> [enable\_kubernetes\_service](#input\_enable\_kubernetes\_service) | Enable the kubernetes service. | `bool` | `true` | no |
| <a name="input_env_secret_refs"></a> [env\_secret\_refs](#input\_env\_secret\_refs) | List of secretKeyRefs to add to ENV variables. | <pre>list(object({<br>    env_var_name        = string,<br>    secret_key_ref_name = string,<br>    secret_key_ref_key  = string<br>  }))</pre> | `[]` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | List of maps for environment variables | `list(object({ name = string, value = string }))` | `[]` | no |
| <a name="input_namespace_name"></a> [namespace\_name](#input\_namespace\_name) | Name of the k8s namespace | `string` | n/a | yes |
| <a name="input_persistent_volume_access_modes"></a> [persistent\_volume\_access\_modes](#input\_persistent\_volume\_access\_modes) | Contains all ways the volume can be mounted. Valid values are ReadWriteOnce, ReadOnlyMany, ReadWriteMany. | `list(string)` | <pre>[<br>  "ReadWriteMany"<br>]</pre> | no |
| <a name="input_persistent_volume_annotations"></a> [persistent\_volume\_annotations](#input\_persistent\_volume\_annotations) | An unstructured key value map stored with the persistent volume that may be used to store arbitrary metadata. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_claim_access_modes"></a> [persistent\_volume\_claim\_access\_modes](#input\_persistent\_volume\_claim\_access\_modes) | A set of the desired access modes the volume should have. | `list(string)` | <pre>[<br>  "ReadWriteMany"<br>]</pre> | no |
| <a name="input_persistent_volume_claim_annotations"></a> [persistent\_volume\_claim\_annotations](#input\_persistent\_volume\_claim\_annotations) | An unstructured key value map stored with the persistent volume claim that may be used to store arbitrary metadata. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_claim_enable"></a> [persistent\_volume\_claim\_enable](#input\_persistent\_volume\_claim\_enable) | Enable a persistent volume claim. | `bool` | `false` | no |
| <a name="input_persistent_volume_claim_labels"></a> [persistent\_volume\_claim\_labels](#input\_persistent\_volume\_claim\_labels) | Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume claim. May match selectors of replication controllers and services. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_claim_name"></a> [persistent\_volume\_claim\_name](#input\_persistent\_volume\_claim\_name) | Name of the persistent volume claim, must be unique. Cannot be updated. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_namespace"></a> [persistent\_volume\_claim\_namespace](#input\_persistent\_volume\_claim\_namespace) | Namespace defines the space within which name of the persistent volume claim must be unique. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_resource_limits"></a> [persistent\_volume\_claim\_resource\_limits](#input\_persistent\_volume\_claim\_resource\_limits) | Map describing the maximum amount of compute resources allowed. | `map(string)` | `{}` | no |
| <a name="input_persistent_volume_claim_resource_request"></a> [persistent\_volume\_claim\_resource\_request](#input\_persistent\_volume\_claim\_resource\_request) | Map describing the minimum amount of compute resources required. | `map(string)` | <pre>{<br>  "storage": "5Gi"<br>}</pre> | no |
| <a name="input_persistent_volume_claim_storage_class_name"></a> [persistent\_volume\_claim\_storage\_class\_name](#input\_persistent\_volume\_claim\_storage\_class\_name) | Name of the storage class requested by the claim. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_storage_size"></a> [persistent\_volume\_claim\_storage\_size](#input\_persistent\_volume\_claim\_storage\_size) | Map describing the minimum amount of compute resources required. | `any` | `null` | no |
| <a name="input_persistent_volume_claim_volume_name"></a> [persistent\_volume\_claim\_volume\_name](#input\_persistent\_volume\_claim\_volume\_name) | The binding reference to the PersistentVolume backing this claim. | `any` | `null` | no |
| <a name="input_persistent_volume_enable"></a> [persistent\_volume\_enable](#input\_persistent\_volume\_enable) | Enable a persistent volume. | `bool` | `false` | no |
| <a name="input_persistent_volume_labels"></a> [persistent\_volume\_labels](#input\_persistent\_volume\_labels) | Map of string keys and values that can be used to organize and categorize (scope and select) the persistent volume. May match selectors of replication controllers and services. | `map(any)` | `{}` | no |
| <a name="input_persistent_volume_mount_path"></a> [persistent\_volume\_mount\_path](#input\_persistent\_volume\_mount\_path) | Path to mount the persistent volume for secrets | `string` | `"/mnt/secrets-store"` | no |
| <a name="input_persistent_volume_name"></a> [persistent\_volume\_name](#input\_persistent\_volume\_name) | Name of the persistent volume, must be unique. Cannot be updated. | `any` | `null` | no |
| <a name="input_persistent_volume_reclaim_policy"></a> [persistent\_volume\_reclaim\_policy](#input\_persistent\_volume\_reclaim\_policy) | What happens to a persistent volume when released from its claim. Valid options are Retain (default), Delete and Recycle. Recycling must be supported by the volume plugin underlying this persistent volume. | `string` | `"Delete"` | no |
| <a name="input_persistent_volume_secret_provider_class"></a> [persistent\_volume\_secret\_provider\_class](#input\_persistent\_volume\_secret\_provider\_class) | Name of the secret provider class for CSI driver volume mounts for secret | `string` | `null` | no |
| <a name="input_persistent_volume_secrets_driver"></a> [persistent\_volume\_secrets\_driver](#input\_persistent\_volume\_secrets\_driver) | Driver for persistent volume. Defaults to CSI driver setting | `string` | `"secrets-store.csi.k8s.io"` | no |
| <a name="input_persistent_volume_storage_path"></a> [persistent\_volume\_storage\_path](#input\_persistent\_volume\_storage\_path) | Path of the directory on the host. | `any` | `null` | no |
| <a name="input_persistent_volume_storage_size"></a> [persistent\_volume\_storage\_size](#input\_persistent\_volume\_storage\_size) | Persistent volume size. | `string` | `"1Gi"` | no |
| <a name="input_port"></a> [port](#input\_port) | k8s service port | `number` | n/a | yes |
| <a name="input_port_name"></a> [port\_name](#input\_port\_name) | Name of the service port | `string` | n/a | yes |
| <a name="input_protocol"></a> [protocol](#input\_protocol) | k8s service protocol | `string` | n/a | yes |
| <a name="input_replica_count"></a> [replica\_count](#input\_replica\_count) | k8s Deployment replica count | `number` | n/a | yes |
| <a name="input_secret_annotations"></a> [secret\_annotations](#input\_secret\_annotations) | An unstructured key value map stored with the secret that may be used to store arbitrary metadata. | `any` | `null` | no |
| <a name="input_secret_data"></a> [secret\_data](#input\_secret\_data) | A map of the secret data. | `map(any)` | `{}` | no |
| <a name="input_secret_enable"></a> [secret\_enable](#input\_secret\_enable) | Enable Kubernetes secrets resource. | `bool` | `false` | no |
| <a name="input_secret_labels"></a> [secret\_labels](#input\_secret\_labels) | Map of string keys and values that can be used to organize and categorize (scope and select) the secret. | `map(any)` | `{}` | no |
| <a name="input_secret_name"></a> [secret\_name](#input\_secret\_name) | Name of the secret, must be unique. Cannot be updated. | `any` | `null` | no |
| <a name="input_secret_namespace"></a> [secret\_namespace](#input\_secret\_namespace) | Namespace defines the space within which name of the secret must be unique. | `any` | `null` | no |
| <a name="input_secret_type"></a> [secret\_type](#input\_secret\_type) | The secret type. Defaults to Opaque. See https://kubernetes.io/docs/concepts/configuration/secret/#secret-types for the different types. | `string` | `"Opaque"` | no |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | Name of the service account to be used for this deployment. | `any` | `null` | no |
| <a name="input_service_name"></a> [service\_name](#input\_service\_name) | Name of the k8s service | `string` | n/a | yes |
| <a name="input_target_port"></a> [target\_port](#input\_target\_port) | k8s service target port | `number` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_host"></a> [host](#output\_host) | n/a |
| <a name="output_service_name"></a> [service\_name](#output\_service\_name) | n/a |
| <a name="output_service_port"></a> [service\_port](#output\_service\_port) | n/a |
<!-- END_TF_DOCS -->
