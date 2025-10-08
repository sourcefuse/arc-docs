# September 2025

### ARC IaC

1. **Amazon Redshift Module**: The new [ARC Redshift module](https://github.com/sourcefuse/terraform-aws-arc-redshift) provides a streamlined way to provision and manage Amazon Redshift clusters or serverless endpoints, with secure networking, parameter groups, and IAM roles pre-configured for best practices. This module is perfect for data-driven applications needing robust, scalable analytics solutions.

   **Key Features**

   - Supports both Provisioned Clusters and Serverless Redshift Workgroups for flexibility.
   - Designed with secure defaults and dynamic configurations to minimize manual tweaks.

2. **Simplified Serverless Deployment**: The [ARC Lambda module](https://github.com/sourcefuse/terraform-aws-arc-lambda-function) brings consistency and reusability to deploying AWS Lambda functions. Instead of repetitive manual steps, developers can now package and deploy functions with pre-defined configurations for environment variables, IAM roles, triggers, and permissions.

   **Key Features**

   - Deploy functions from local code, S3 buckets, or container images.
   - Auto-configure environment variables, runtime settings, permissions, and logging.
   - Pre-built structure ensures security and operational consistency across environments.

3. **Simplify API Exposure**: The [ARC API Gateway module](https://github.com/sourcefuse/terraform-aws-arc-api-gateway) helps you provision a secure API Gateway setup effortlessly, designed for standard RESTful APIs connected to Lambda functions or other backend services.

   **Key Features**

   - Easily manage REST API creation, route definitions, and integrations.
   - Built-in support for stages, usage plans, and API key management to control access and throttling.
   - Seamlessly integrates with the ARC Lambda module to enable end-to-end serverless solutions.

### ARC UI

1. **React SaaS Boiler plate**: React based [SaaS Control Plane Boilerplate](https://github.com/sourcefuse/arc-react-sass-ui) — a comprehensive starting point designed specifically for multi-tenant SaaS control plane. It provides a solid foundation, best practices baked in, and built-in support for secure and scalable SaaS patterns.

   **Key Features**

   - Plug-and-Play Setup – Start development right away with environment-based configuration management.
   - Secure Authentication – Out-of-the-box Keycloak & OAuth integration for user authentication.
   - Multi-Tenant Support – Seamlessly manage tenant subscriptions and dynamically alter app behavior based on tenant context.
   - White-Label Ready – Change branding, themes, and UI text dynamically via configuration.
   - Session Management & Observability – Built-in idle timeout alerts, logging hooks, and Grafana dashboards for monitoring.
   - Rapid Customization – Simple .env changes allow instant rebranding without code edits.
   - This boilerplate removes the typical SaaS development boilerplate burden, allowing teams to focus on business logic and differentiation.

### ARC API

1. **LLM Chat Component**: A Loopback4 based [extension](https://github.com/sourcefuse/loopback4-llm-chat-extension) designed to integrate a Langgraph.js-based endpoint into your application. It enables your application to utilize various LLM (Large Language Model) tools, providing a flexible and extensible framework to serve user queries via a `/generate` endpoint.

   **Capabilities include**

   - Pre-built integration with providers like Ollama, Gemini, Cerebras, Anthropic, OpenAI, and AWS Bedrock.
   - Built-in DbQueryComponent tools for database-centric operations:

     1. Generate SQL queries from user prompts.
     2. Improve and refine existing queries based on feedback.
     3. Answer user questions about datasets without directly running queries.

   - Easily extensible as developers can add custom tools by implementing a simple decorator interface.
