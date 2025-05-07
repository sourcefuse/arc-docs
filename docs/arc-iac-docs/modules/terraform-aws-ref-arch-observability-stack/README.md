![Module Structure](./static/banner.png)

# [terraform-aws-arc-observability-stack](https://github.com/sourcefuse/terraform-aws-arc-observability-stack)

<a href="https://github.com/sourcefuse/terraform-aws-arc-observability-stack/releases/latest"><img src="https://img.shields.io/github/release/sourcefuse/terraform-aws-arc-observability-stack.svg?style=for-the-badge" alt="Latest Release"/></a> <a href="https://github.com/sourcefuse/terraform-aws-arc-observability-stack/commits"><img src="https://img.shields.io/github/last-commit/sourcefuse/terraform-aws-arc-observability-stack.svg?style=for-the-badge" alt="Last Updated"/></a> ![Terraform](https://img.shields.io/badge/terraform-%235835CC.svg?style=for-the-badge&logo=terraform&logoColor=white) ![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

[![Quality gate](https://sonarcloud.io/api/project_badges/quality_gate?project=sourcefuse_terraform-aws-arc-observability-stack&token=bf80d04b87395dadd9473538860728fd9d32cfc6)](https://sonarcloud.io/summary/new_code?id=sourcefuse_terraform-aws-arc-observability-stack)

[![Known Vulnerabilities](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/actions/workflows/snyk.yaml/badge.svg)](https://github.com/sourcefuse/terraform-aws-arc-observability-stack/actions/workflows/snyk.yaml)
## Introduction

The Observability Terraform Module is a comprehensive solution designed to simplify the deployment of a full-stack observability ecosystem in Kubernetes environments. This module enables organizations to monitor and troubleshoot their infrastructure and applications effectively, offering the flexibility to choose between various open-source tools.

### Key Features:
1. EFK Stack for Log Management:

- Deploy either Fluentd or Fluent Bit as the log collector, providing lightweight and efficient options for log aggregation.
- Seamlessly integrate with either Elasticsearch or OpenSearch for scalable and reliable log storage.

2. Prometheus Stack for Metrics Monitoring:

- Includes Prometheus for metrics collection and Alertmanager for alerting.
- Integrated support for Grafana, offering rich dashboards to visualize metrics effectively.
- Enables monitoring of HTTP endpoints using the Blackbox Exporter.

3. Flexibility and Customization:

- Fully customizable configurations for each component, allowing fine-grained control over deployment and resources.
- Supports multiple log collectors and storage backends, giving users the freedom to choose based on their requirements.

4. Streamlined Deployment:

- Automates the deployment of the entire observability stack, reducing complexity and ensuring consistency.
- Includes preconfigured dashboards and alert rules for quick setup and immediate insights.

5. Signoz Community Edition Support
- Adds native support for Signoz CE, an all-in-one observability platform.
- Enables logs, metrics, and traces to be collected and correlated in one unified interface.
- Simplifies tracing setup with OpenTelemetry Collector and works out of the box with distributed applications.

For more information about this repository and its usage, please see [Terraform AWS ARC Observability Module Usage Guide](docs/module-usage-guide/README.md).


Create the following resources in a single region.

* VPC
* Multi-AZ private and public subnets
* Route tables, internet gateway, and NAT gateways
* Configurable VPC Endpoints

### Prerequisites
Before using this module, ensure you have the following:

- AWS credentials configured.
- Terraform installed.
- A working knowledge of Terraform.

## Usage
See the `examples` folder for a complete example.

### EFK Stack
```hcl

module "efk" {
  source                      = "sourcefuse/arc-observability-stack/aws"
  version                     = "0.0.1"

  environment = var.environment
  namespace   = var.namespace

  search_engine  = "elasticsearch"
  log_aggregator = "fluentd"

  elasticsearch_config = {
    name = "elasticsearch-master"
    k8s_namespace = {
      name   = "logging"
      create = true
    }

    tls_self_signed_cert_data = {
      organisation          = "ARC"
      validity_period_hours = 26280 # 3 years validity
      early_renewal_hours   = 168   # 1 week early renewal
    }

    cluster_config = {
      port           = "9200"
      transport_port = "9300"
      user           = "elastic"
      log_level      = "INFO"
      cpu_limit      = "2000m"
      memory_limit   = "4Gi"
      cpu_request    = "1000m"
      memory_request = "2Gi"
      storage_class  = "gp2"
      storage        = "40Gi"
    }

    kibana_config = {
      log_level      = "info"
      cpu_limit      = "500m"
      memory_limit   = "1Gi"
      cpu_request    = "250m"
      memory_request = "500Mi"

      ingress_enabled     = true
      aws_certificate_arn = "arn:aws:acm:us-east-1:xx:certificate/xx-46e7-4d99-a523-xxxx"
      ingress_host        = "kibana.xx-xx.xx"

    }
  }

  fluentd_config = {
    k8s_namespace = {
      name   = "logging"
      create = false
    }
    name                = "fluentd"
    search_engine       = "elasticsearch"
    cpu_limit           = "100m"
    memory_limit        = "512Mi"
    cpu_request         = "100m"
    memory_request      = "128Mi"
    logstash_dateformat = "%Y.%m.%d"
    log_level           = "info"
  }
}


```
### Prometheus

```hcl

module "prometheus" {
  source                      = "sourcefuse/arc-observability-stack/aws"
  version                     = "0.0.1"

  environment = var.environment
  namespace   = var.namespace

  metrics_monitoring_system = "prometheus"

  prometheus_config = {
    k8s_namespace = {
      name   = "metrics"
      create = true
    }
    log_level = "info"
    resources = {
      cpu_limit      = "100m"
      memory_limit   = "512Mi"
      cpu_request    = "100m"
      memory_request = "128Mi"
    }
    replicas                  = 1
    storage                   = "8Gi"
    enable_kube_state_metrics = true
    enable_node_exporter      = true
    retention_period          = "30d"

    grafana_config = {
      replicas            = 1
      ingress_enabled     = true
      ingress_host        = "grafana.arc-xx.xx"
      aws_certificate_arn = "arn:aws:acm:us-east-1:xx:certificate/xx-46e7-4d99-a523-xxxx"
      lb_visibility       = "internet-facing"
      dashboard_list = [
        {
          name = "node-metrics"
          json = templatefile("${path.module}/grafana-dashbord.json", {})
        }
      ]
    }

    blackbox_exporter_config = {
      name = "blackbox-exporter"
      monitoring_targets = [{
        name                     = "google"
        url                      = "https://google.com"
        scrape_interval          = "60s"
        status_code_pattern_list = "[http_2xx]" // Note :- This i string not list
      }]
    }

    alertmanager_config = {
      name            = "alertmanager"
      replica_count   = 1
      alert_rule_yaml = ""
    }

  }
}

```
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.4, < 2.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0, < 6.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.17.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.6.0 |
| <a name="requirement_tls"></a> [tls](#requirement\_tls) | ~> 4.0.6 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_elasticsearch"></a> [elasticsearch](#module\_elasticsearch) | ./modules/elasticsearch | n/a |
| <a name="module_fluentbit"></a> [fluentbit](#module\_fluentbit) | ./modules/fluent-bit | n/a |
| <a name="module_fluentd"></a> [fluentd](#module\_fluentd) | ./modules/fluentd | n/a |
| <a name="module_jaeger"></a> [jaeger](#module\_jaeger) | ./modules/jaeger | n/a |
| <a name="module_prometheus"></a> [prometheus](#module\_prometheus) | ./modules/prometheus | n/a |
| <a name="module_signoz"></a> [signoz](#module\_signoz) | ./modules/signoz | n/a |
| <a name="module_signoz_metrics_logs"></a> [signoz\_metrics\_logs](#module\_signoz\_metrics\_logs) | ./modules/signoz-infra | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_elasticsearch_config"></a> [elasticsearch\_config](#input\_elasticsearch\_config) | Configuration settings for deploying Elasticsearch | <pre>object({<br>    name = optional(string, "elasticsearch-master") # Name of the Elasticsearch cluster<br>    k8s_namespace = object({<br>      name   = optional(string, "logging")<br>      create = optional(bool, true)<br>    })<br><br>    tls_self_signed_cert_data = optional(object({     # Self-signed TLS certificate data<br>      organisation          = optional(string, null)  # Organisation name for certificate<br>      validity_period_hours = optional(number, 26280) # 3 years validity<br>      early_renewal_hours   = optional(number, 168)   # 1 week early renewal<br>    }))<br><br>    cluster_config = object({<br>      port           = optional(string, "9200")    # Elasticsearch HTTP port<br>      transport_port = optional(string, "9300")    # Elasticsearch transport port<br>      user           = optional(string, "elastic") # Elasticsearch username<br>      log_level      = optional(string, "INFO")    # Log level (DEBUG, INFO, WARN, ERROR)<br>      cpu_limit      = optional(string, "2000m")   # CPU limit for the Elasticsearch container<br>      memory_limit   = optional(string, "4Gi")     # Memory limit for the Elasticsearch container<br>      cpu_request    = optional(string, "1000m")   # CPU request for the Elasticsearch container<br>      memory_request = optional(string, "2Gi")     # Memory request for the Elasticsearch container<br>      storage_class  = optional(string, "gp2")<br>      storage        = optional(string, "30Gi") # Persistent volume storage for Elasticsearch<br>      replica_count  = optional(string, 3)<br>    })<br><br>    kibana_config = object({<br>      name                = optional(string, "kibana")<br>      replica_count       = optional(string, 3)<br>      http_port           = optional(string, "5601")<br>      user                = optional(string, "elastic")<br>      log_level           = optional(string, "info") // values include Options are all, fatal, error, warn, info, debug, trace, off<br>      cpu_limit           = optional(string, "500m")<br>      memory_limit        = optional(string, "1Gi")<br>      cpu_request         = optional(string, "250m")<br>      memory_request      = optional(string, "500Mi")<br>      ingress_enabled     = optional(bool, false)<br>      ingress_host        = optional(string, "")<br>      aws_certificate_arn = optional(string, "")<br>      lb_visibility       = optional(string, "internet-facing")<br>    })<br>  })</pre> | <pre>{<br>  "cluster_config": {<br>    "cpu_limit": "2000m",<br>    "cpu_request": "1000m",<br>    "log_level": "INFO",<br>    "memory_limit": "4Gi",<br>    "memory_request": "2Gi",<br>    "port": "9200",<br>    "replica_count": 3,<br>    "storage": "30Gi",<br>    "transport_port": "9300",<br>    "user": "elastic"<br>  },<br>  "k8s_namespace": {<br>    "create": true,<br>    "name": "logging"<br>  },<br>  "kibana_config": {<br>    "cpu_limit": "500m",<br>    "cpu_request": "250m",<br>    "elasticsearch_url": "https://elasticsearch-master:9200",<br>    "http_port": "5601",<br>    "ingress_enabled": false,<br>    "ingress_host": "",<br>    "log_level": "info",<br>    "memory_limit": "1Gi",<br>    "memory_request": "500Mi",<br>    "name": "kibana",<br>    "user": "elastic"<br>  },<br>  "name": "elasticsearch-master",<br>  "tls_self_signed_cert_data": {<br>    "early_renewal_hours": 168,<br>    "organisation": null,<br>    "validity_period_hours": 26280<br>  }<br>}</pre> | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment name | `string` | n/a | yes |
| <a name="input_fluentbit_config"></a> [fluentbit\_config](#input\_fluentbit\_config) | Configuration for Fluentbit | <pre>object({<br>    k8s_namespace = object({<br>      name   = optional(string, "logging")<br>      create = optional(bool, false)<br>    })<br>    name                = optional(string, "fluent-bit")<br>    cpu_limit           = optional(string, "100m")<br>    memory_limit        = optional(string, "512Mi")<br>    cpu_request         = optional(string, "100m")<br>    memory_request      = optional(string, "128Mi")<br>    logstash_dateformat = optional(string, "%Y.%m.%d") # Default time format<br>    time_format         = optional(string, "%Y-%m-%dT%H:%M:%S.%L")<br>    log_level           = optional(string, "info") # Default log level<br>    aws_region          = optional(string, "")<br>    aws_role_arn        = optional(string, "")<br>  })</pre> | <pre>{<br>  "cpu_limit": "100m",<br>  "cpu_request": "100m",<br>  "k8s_namespace": {<br>    "create": false,<br>    "name": "logging"<br>  },<br>  "logstash_dateformat": "%Y.%m.%d",<br>  "memory_limit": "512Mi",<br>  "memory_request": "128Mi",<br>  "name": "fluent-bit",<br>  "search_engine": "elasticsearch"<br>}</pre> | no |
| <a name="input_fluentd_config"></a> [fluentd\_config](#input\_fluentd\_config) | Configuration for Fluentd | <pre>object({<br>    k8s_namespace = object({<br>      name   = optional(string, "logging")<br>      create = optional(bool, false)<br>    })<br>    name                = optional(string, "fluentd")<br>    cpu_limit           = optional(string, "100m")<br>    memory_limit        = optional(string, "512Mi")<br>    cpu_request         = optional(string, "100m")<br>    memory_request      = optional(string, "128Mi")<br>    logstash_dateformat = optional(string, "%Y.%m.%d") # Default time format<br>    log_level           = optional(string, "info")     # Default log level<br>    opensearch_url      = optional(string, "")<br>    aws_region          = optional(string, "")<br>    aws_role_arn        = optional(string, "")<br>  })</pre> | <pre>{<br>  "cpu_limit": "100m",<br>  "cpu_request": "100m",<br>  "k8s_namespace": {<br>    "create": false,<br>    "name": "logging"<br>  },<br>  "logstash_dateformat": "%Y.%m.%d",<br>  "memory_limit": "512Mi",<br>  "memory_request": "128Mi",<br>  "name": "fluentd",<br>  "search_engine": "elasticsearch"<br>}</pre> | no |
| <a name="input_log_aggregator"></a> [log\_aggregator](#input\_log\_aggregator) | (optional) Log aggregator to choose | `string` | `null` | no |
| <a name="input_metrics_monitoring_system"></a> [metrics\_monitoring\_system](#input\_metrics\_monitoring\_system) | Monotoring system for metrics | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for the resources. | `string` | n/a | yes |
| <a name="input_prometheus_config"></a> [prometheus\_config](#input\_prometheus\_config) | Configuration settings for deploying Prometheus | <pre>object({<br>    name = optional(string, "prometheus")<br>    k8s_namespace = object({<br>      name   = optional(string, "metrics")<br>      create = optional(bool, true)<br>    })<br>    log_level                 = optional(string, "info")<br>    replica_count             = optional(number, 1)<br>    storage                   = optional(string, "8Gi")<br>    storage_class             = optional(string, "gp2")<br>    enable_kube_state_metrics = optional(bool, true)<br>    enable_node_exporter      = optional(bool, true)<br>    cpu_limit                 = optional(string, "100m")<br>    memory_limit              = optional(string, "512Mi")<br>    cpu_request               = optional(string, "100m")<br>    memory_request            = optional(string, "128Mi")<br>    retention_period          = optional(string, "15d")<br><br>    grafana_config = object({<br>      name                = optional(string, "grafana")<br>      replica_count       = optional(number, 1)<br>      ingress_enabled     = optional(bool, false)<br>      lb_visibility       = optional(string, "internet-facing") # Options: "internal" or "internet-facing"<br>      aws_certificate_arn = optional(string, "")<br>      ingress_host        = optional(string, "")<br>      admin_user          = optional(string, "admin")<br>      cpu_limit           = optional(string, "100m")<br>      memory_limit        = optional(string, "128Mi")<br>      cpu_request         = optional(string, "100m")<br>      memory_request      = optional(string, "128Mi")<br>      dashboard_list = optional(list(object({<br>        name = string<br>        json = string<br>      })), [])<br>    })<br><br>    blackbox_exporter_config = object({<br>      name           = optional(string, "blackbox-exporter")<br>      replica_count  = optional(number, 1)<br>      cpu_limit      = optional(string, "100m")<br>      memory_limit   = optional(string, "500Mi")<br>      cpu_request    = optional(string, "100m")<br>      memory_request = optional(string, "50Mi")<br>      monitoring_targets = list(object({<br>        name                     = string                         # Target name (e.g., google)<br>        url                      = string                         # URL to monitor (e.g., https://google.com)<br>        scrape_interval          = optional(string, "60s")        # Scrape interval (e.g., 60s)<br>        scrape_timeout           = optional(string, "60s")        # Scrape timeout (e.g., 60s)<br>        status_code_pattern_list = optional(string, "[http_2xx]") # Blackbox module to use (e.g., http_2xx)<br>      }))<br>    })<br><br>    alertmanager_config = object({<br>      name                        = optional(string, "alertmanager")<br>      replica_count               = optional(number, 1)<br>      cpu_limit                   = optional(string, "100m")<br>      memory_limit                = optional(string, "128Mi")<br>      cpu_request                 = optional(string, "10m")<br>      memory_request              = optional(string, "32Mi")<br>      custom_alerts               = optional(string, "")<br>      alert_notification_settings = optional(string, "")<br>    })<br>  })</pre> | <pre>{<br>  "alertmanager_config": {<br>    "name": "alertmanager"<br>  },<br>  "blackbox_exporter_config": {<br>    "monitoring_targets": [],<br>    "name": "blackbox-exporter"<br>  },<br>  "enable_kube_state_metrics": true,<br>  "enable_node_exporter": true,<br>  "grafana_config": {<br>    "admin_user": "admin",<br>    "ingress_enabled": false,<br>    "lb_visibility": "internet-facing",<br>    "prometheus_endpoint": "prometheus"<br>  },<br>  "k8s_namespace": {<br>    "create": true,<br>    "name": "metrics"<br>  },<br>  "log_level": "info",<br>  "replica_count": 1,<br>  "resources": {<br>    "cpu_limit": "100m",<br>    "cpu_request": "100m",<br>    "memory_limit": "512Mi",<br>    "memory_request": "128Mi"<br>  },<br>  "retention_period": "15d",<br>  "storage": "8Gi"<br>}</pre> | no |
| <a name="input_search_engine"></a> [search\_engine](#input\_search\_engine) | (optional) Search engine for logs | `string` | `null` | no |
| <a name="input_signoz_config"></a> [signoz\_config](#input\_signoz\_config) | Configuration for observability components in the monitoring stack. This variable encapsulates<br>settings for the following components:<br><br>- ClickHouse:<br>  Used as the backend storage engine for observability data (like traces and metrics).<br>  Includes credentials and resource limits/requests for tuning performance.<br><br>- SigNoz:<br>  Provides the UI and analytics for monitoring and tracing applications.<br>  Includes ingress setup and compute resource configuration.<br><br>- Alertmanager:<br>  Handles alerting rules and notifications for monitoring data.<br>  Includes configuration for storage, scaling, and ingress settings.<br><br>- OTEL Collector:<br>  Collects telemetry data (logs, metrics, traces) from the applications and<br>  routes it to appropriate backends.<br>  Includes resource definitions and optional ingress configuration.<br><br>This structure enables centralized management of observability stack deployment in Kubernetes<br>via Terraform. | <pre>object({<br>    k8s_namespace = object({<br>      name   = optional(string, "signoz")<br>      create = optional(bool, false)<br>    })<br>    name          = optional(string, "signoz")<br>    storage_class = optional(string, "gp3")<br>    cluster_name  = string<br>    clickhouse = optional(object({<br>      user           = optional(string, "admin")<br>      cpu_limit      = optional(string, "2000m")<br>      memory_limit   = optional(string, "4Gi")<br>      cpu_request    = optional(string, "100m")<br>      memory_request = optional(string, "200Mi")<br>      storage        = optional(string, "20Gi")<br>    }))<br><br>    signoz_bin = optional(object({<br>      replica_count       = optional(number, 1)<br>      cpu_limit           = optional(string, "750m")<br>      memory_limit        = optional(string, "1000Mi")<br>      cpu_request         = optional(string, "100m")<br>      memory_request      = optional(string, "200Mi")<br>      ingress_enabled     = optional(bool, false)<br>      aws_certificate_arn = optional(string, null)<br>      domain              = string<br>      root_domain         = optional(string, null)              // if root domain is provided, it creates DNS record<br>      lb_visibility       = optional(string, "internet-facing") # Options: "internal" or "internet-facing"<br>    }))<br><br>    alertmanager = optional(object({<br>      enable              = optional(bool, false)<br>      replica_count       = optional(number, 1)<br>      cpu_limit           = optional(string, "750m")<br>      memory_limit        = optional(string, "1000Mi")<br>      cpu_request         = optional(string, "100m")<br>      memory_request      = optional(string, "200Mi")<br>      storage             = optional(string, "100Mi")<br>      enable_ingress      = optional(bool, false)<br>      aws_certificate_arn = optional(string, null)<br>      domain              = optional(string, "signoz.example.com")<br>    }))<br><br>    otel_collector = optional(object({<br>      cpu_limit           = optional(string, "1")<br>      memory_limit        = optional(string, "2Gi")<br>      cpu_request         = optional(string, "100m")<br>      memory_request      = optional(string, "200Mi")<br>      storage             = optional(string, "100Mi")<br>      enable_ingress      = optional(bool, false)<br>      aws_certificate_arn = optional(string, null)<br>      domain              = optional(string, "signoz.example.com")<br>    }))<br>  })</pre> | <pre>{<br>  "cluster_name": null,<br>  "k8s_namespace": {<br>    "create": true,<br>    "name": "signoz"<br>  },<br>  "name": null<br>}</pre> | no |
| <a name="input_signoz_infra_monitor_config"></a> [signoz\_infra\_monitor\_config](#input\_signoz\_infra\_monitor\_config) | Configuration object for deploying SigNoz infrastructure monitoring components.<br><br>Attributes:<br>- name: A name identifier for the monitoring deployment (used in naming resources).<br>- storage\_class: (Optional) The Kubernetes storage class to be used for persistent volumes. Defaults to "gp3".<br>- cluster\_name: The name of the Kubernetes cluster where SigNoz is being deployed.<br>- otel\_collector\_endpoint: The endpoint URL for the OpenTelemetry Collector to which metrics, logs, and traces will be exported.<br>- metric\_collection\_interval: (Optional) The interval at which metrics are collected. Defaults to "30s".<br>- if any one ofr the values enable\_log\_collection,enable\_metrics\_collection is true, then helm chart gets installed<br><br>This variable is used to centralize configuration related to monitoring infrastructure via SigNoz. | <pre>object({<br>    k8s_namespace = optional(object({<br>      name   = optional(string, "signoz")<br>      create = optional(bool, false)<br>    }))<br>    name                       = string<br>    storage_class              = optional(string, "gp3")<br>    cluster_name               = string<br>    enable_log_collection      = optional(bool, false)<br>    enable_metrics_collection  = optional(bool, false)<br>    otel_collector_endpoint    = optional(string, null)<br>    metric_collection_interval = optional(string, "30s")<br>  })</pre> | <pre>{<br>  "cluster_name": null,<br>  "name": null<br>}</pre> | no |
| <a name="input_tags"></a> [tags](#input\_tags) | (optional) Tags for AWS resources | `map(string)` | `{}` | no |
| <a name="input_tracing_stack"></a> [tracing\_stack](#input\_tracing\_stack) | (optional) Distributed tracing stack | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_grafana_lb_dns"></a> [grafana\_lb\_dns](#output\_grafana\_lb\_dns) | Grafana ingress loadbalancer DNS |
| <a name="output_kibana_lb_dns"></a> [kibana\_lb\_dns](#output\_kibana\_lb\_dns) | Kibana ingress loadbalancer DNS |
| <a name="output_otel_collector_endpoint"></a> [otel\_collector\_endpoint](#output\_otel\_collector\_endpoint) | OTEL collector endpoint |
| <a name="output_signoz_lb_dns"></a> [signoz\_lb\_dns](#output\_signoz\_lb\_dns) | Signoz ingress loadbalancer DNS |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Development

### Prerequisites
- [terraform](https://learn.hashicorp.com/terraform/getting-started/install#installing-terraform)
- [terraform-docs](https://github.com/segmentio/terraform-docs)
- [pre-commit](https://pre-commit.com/#install)
- [golang](https://golang.org/doc/install#install)
- [golint](https://github.com/golang/lint#installation)

### Configurations
- Configure pre-commit hooks
  ```sh
  pre-commit install
  ```
- Configure golang deps for tests
  ```sh
  go get github.com/gruntwork-io/terratest/modules/terraform
  go get github.com/stretchr/testify/assert
  ```
### Git commits

while Contributing or doing git commit please specify the breaking change in your commit message whether its major,minor or patch

For Example

```sh
git commit -m "your commit message #major"
```
By specifying this , it will bump the version and if you dont specify this in your commit message then by default it will consider patch and will bump that accordingly

### Tests
- Tests are available in `test` directory
- In the test directory, run the below command
  ```sh
  go test -timeout 1800s
  ```

## Authors
This project is authored by:
- SourceFuse
