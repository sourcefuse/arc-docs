<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [A Loopback4 LLM Chat Extension](https://github.com/sourcefuse/loopback4-llm-chat-extension)

<p align="left">
<a href="https://www.npmjs.com/package/lb4-llm-chat-component">
<img src="https://img.shields.io/npm/v/lb4-llm-chat-component.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_llm-chat-component" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_llm-chat-component?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://github.com/sourcefuse/loopback4-llm-chat-extension/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-llm-chat-extension?">
</a>
<a href="https://www.npmjs.com/package/loopback4-authentication" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-llm-chat-extension.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-llm-chat-extension/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-llm-chat-extension.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

### Overview

A Loopack4 based component to integrate a basic Langgraph.js based endpoint in your application which can use any tool that you register using the provided decorator.

### Installation

Install AIIntegrationsComponent using `npm`;

```sh
$ [npm install | yarn add] lb4-llm-chat-component
```

### Basic Usage

Configure and load the AIIntegrations component in the application constructor
as shown below.

```ts
import {AiIntegrationsComponent} from 'lb4-llm-chat-component';
// ...
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // could be any LLM provider or your own LangGraph supported LLM provider
    // you can also have different LLM for different LLM type - cheap, smart and multimodal
    this.bind(AiIntegrationBindings.CheapLLM).toProvider(Ollama);
    this.bind(AiIntegrationBindings.SmartLLM).toProvider(Ollama);
    this.bind(AiIntegrationBindings.FileLLM).toProvider(Ollama);
    // configuration
    this.bind(AiIntegrationBindings.Config).to({
      // if not set to true, it will bind a ARC based sequence from @sourceloop/core with authentication and authorization
      useCustomSequence: true,
      // if not set to false, it will bind the core component from @sourceloop/core by default
      mountCore: false
      // if not set to false, it will bind @sourceloop/file-utils component with defaults config
      mountFileUtils: false
    });
    this.component(AiIntegrationsComponent);

    // ...
  }
  // ...
}
```

## LLM Providers

### Ollama

To need the `Ollama` based models, install the package - `@langchain/ollama` and update your application.ts -

```ts
this.bind(AiIntegrationBindings.CheapLLM).toProvider(Ollama);
this.bind(AiIntegrationBindings.SmartLLM).toProvider(Ollama);
this.bind(AiIntegrationBindings.FileLLM).toProvider(Ollama);
```

### Gemini

To use the `Gemini` based models, install the package - `@google/generative-ai` and `@langchain/google-genai` and update your application.ts -

```ts
this.bind(AiIntegrationBindings.CheapLLM).toProvider(Gemini);
this.bind(AiIntegrationBindings.SmartLLM).toProvider(Gemini);
this.bind(AiIntegrationBindings.FileLLM).toProvider(Gemini);
```

### Cerebras

To use the `Cerebras` based models, install the package - `@langchain/cerebras` and update your application.ts -

```ts
this.bind(AiIntegrationBindings.CheapLLM).toProvider(Cerebras);
this.bind(AiIntegrationBindings.SmartLLM).toProvider(Cerebras);
this.bind(AiIntegrationBindings.FileLLM).toProvider(Cerebras);
```

### Anthropic

To use the `Anthropic` based models, install the package - `@langchain/anthropic` and update your application.ts -

```ts
this.bind(AiIntegrationBindings.CheapLLM).toProvider(Anthropic);
this.bind(AiIntegrationBindings.SmartLLM).toProvider(Anthropic);
this.bind(AiIntegrationBindings.FileLLM).toProvider(Anthropic);
```

### OpenAI

To use the `OpenAI` models, install the package - `@langchain/openai` and update your application.ts -

```ts
this.bind(AiIntegrationBindings.CheapLLM).toProvider(OpenAI);
this.bind(AiIntegrationBindings.SmartLLM).toProvider(OpenAI);
this.bind(AiIntegrationBindings.FileLLM).toProvider(OpenAI);
```

### Bedrock

To use the `Bedrock` based models, install the package - `@langchain/aws` and update your application.ts -

```ts
this.bind(AiIntegrationBindings.CheapLLM).toProvider(Bedrock);
this.bind(AiIntegrationBindings.SmartLLM).toProvider(Bedrock);
this.bind(AiIntegrationBindings.FileLLM).toProvider(Bedrock);
```

This binding would add an endpoint `/generate` in your service, that can answer user's query using the registered tools. By default, the module gives one set of tools through the `DbQueryComponent`

## Limiters

The package provides a way to limit the usage of the LLM Chat functionality by binding a provider on the key `AiIntegrationBindings.LimitStrategy` that follows the interface - `ILimitStrategy`.

The packages comes with 3 strategies by default that are bound automatically on the basis of `AiIntegrationBindings.Config` -

- **ChatCountStrategy** - Applies limits per user based on number of chats. It is used if only `chatLimit` and `period` is provided in `tokenCounterConfig`.
- **TokenCountStrategy** - Applies a fixed limit per user based on number of tokens used. It is used if `tokenLimit` and `period` are provided with `bufferToken` as optional field that determines that how much buffer to keep while checking for token limit.
- **TokenCountPerUserStrategy** - Applies token based limit similar to `TokenCountStrategy` except the number of tokens commes from user permission `TokenUsage:NUMBER` in the user's token. It applies if only `period` is set in `tokenCounterConfig`, it also works with `bufferToken` just like `TokenCountStrategy`.

## DbQueryComponent

This component provides a set of pre-built tools that can be plugged into any Loopback4 application -

- **generate-query** - this tool can be used by the LLM to generate a database query based on user's prompt. It will return a `DataSet` instead of the query directly to the LLM.
- **improve-query** - this tool takes a `DataSet`'s id and feedback from the user, and uses it to modify the existing `DataSet` query. Users can also vote on datasets via the dataset actions endpoint.
- **ask-about-dataset** - this tool takes a `DataSet`'s id and a user prompt, and tries to answer user's question about the database query. Note that it can not run the query.

### Database Schema

The component uses a dedicated `chatbot` schema with the following tables:

- **datasets** - Stores generated SQL queries with metadata including description, prompt, tables involved, and schema hash
- **dataset_actions** - Tracks user actions on datasets (votes, comments, improvements)
- **chats** - Stores chat sessions with metadata and token usage
- **messages** - Stores individual messages within chats

### Dataset Feedback System

Users can provide feedback on generated datasets through the dataset actions endpoint. Each dataset can receive votes and comments, which can be used to improve future query generation. The system tracks:

- Vote count for each dataset
- User comments and suggestions
- Improvement history
- Creation and modification timestamps

### Query Generation Flow

![alt text](https://raw.githubusercontent.com/sourcefuse/llm-chat-component/refs/heads/main/db-query-graph.png)

## VisualizerComponent

The `VisualizerComponent` extends the LLM Chat functionality by providing intelligent data visualization capabilities. This component automatically generates charts and graphs based on database query results, making data insights more accessible and visually appealing.

### Features

- **Automatic Visualization Selection** - The system intelligently selects the most appropriate visualization type based on the data structure and user prompt
- **Multiple Chart Types** - Supports bar charts, line charts, and pie charts out of the box
- **LLM-Powered Configuration** - Uses AI to generate optimal chart configurations including axis selection, orientation, and styling
- **Seamless Integration** - Works directly with datasets generated by the DbQueryComponent

### Available Visualizers

The component includes three built-in visualizers:

#### Bar Chart Visualizer (`src/components/visualization/visualizers/bar.visualizer.ts:13`)

- **Best for**: Comparing values across different categories or showing trends over time
- **Configuration**: Automatically determines category column (x-axis) and value column (y-axis)
- **Options**: Supports both vertical and horizontal orientations

#### Line Chart Visualizer (`src/components/visualization/visualizers/line.visualizer.ts`)

- **Best for**: Displaying trends and changes over time
- **Configuration**: Optimized for time-series data and continuous variables

#### Pie Chart Visualizer (`src/components/visualization/visualizers/pie.visualizer.ts`)

- **Best for**: Showing proportions and percentages of a whole
- **Configuration**: Automatically identifies categorical data and corresponding values

### Usage

#### Basic Setup

```ts
import {VisualizerComponent} from 'lb4-llm-chat-component';

export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // Add the visualizer component
    this.component(VisualizerComponent);

    // ... other configuration
  }
}
```

#### Generate Visualization Tool

The component provides a `generate-visualization` tool that can be used by the LLM to create visualizations:

- **Input**: Takes a user prompt and dataset ID from a previously generated query
- **Process**: Automatically selects the best visualization type and generates optimal configuration
- **Output**: Renders the visualization in the UI for the user

#### Example Usage Flow

1. User asks: "Show me sales by region as a chart"
2. LLM uses `generate-query` tool to create a dataset with sales data by region
3. LLM uses `generate-visualization` tool with the dataset ID
4. System selects bar chart as the most appropriate visualization
5. Chart is rendered with regions on x-axis and sales values on y-axis

### Visualization Graph Flow

The visualization process follows a structured graph workflow (`src/components/visualization/visualization.graph.ts:9`):

1. **Get Dataset Data** - Retrieves the dataset and query information
2. **Select Visualization** - Chooses the most appropriate chart type based on data structure
3. **Render Visualization** - Generates the final chart configuration and displays it

### Creating Custom Visualizers

You can extend the system with custom visualizers by implementing the `IVisualizer` interface (`src/components/visualization/types.ts:4`):

```ts
import {visualizer} from 'lb4-llm-chat-component';
import {IVisualizer, VisualizationGraphState} from 'lb4-llm-chat-component';

@visualizer()
export class CustomVisualizer implements IVisualizer {
  name = 'custom-chart';
  description = 'Description of when to use this visualizer';

  async getConfig(state: VisualizationGraphState): Promise<AnyObject> {
    // Generate configuration based on the data and user prompt
    return {
      // your custom chart configuration
    };
  }
}
```

### Configuration

The visualizer component automatically registers all available visualizers and makes them available to the LLM. No additional configuration is required for basic usage. You can register a new visualizer using the `@visualizer` decorator on a class following the IVisualizer interface.

### Integration with DbQueryComponent

The visualizer component works seamlessly with the `DbQueryComponent`:

1. Use database query tools to generate datasets
2. The visualization tool automatically accesses dataset metadata including:
   - SQL query structure
   - Query description
   - User's original prompt
3. This context helps generate more accurate and relevant visualizations

## Providing Context

There are two ways to provide context to the LLM -

### Global Context

Global context can be provided as an array of strings through a binding on key `DbQueryAIExtensionBindings.GlobalContext`. This binding can be a constant or come through a dynamic provider, something like this -

```ts
export class ChecksProvider implements Provider<string[]> {
  constructor(
    @repository(CurrencyRepository)
    private readonly currencyRepository: CurrencyRepository,
  ) {}
  async value(): Promise<string[]> {
    return [`Current date is ${new Date().toISOString().split('T')[0]}`];
  }
}
```

in application.ts -

```ts
...
this.bind(DbQueryAIExtensionBindings.GlobalContext).toProvider(ChecksProvider);
...
```

### Model Context

Each model can have associated context in 3 ways -

```ts
@model({
  name: 'employees', // Use plural form for table name
  settings: {
    description: 'Model representing an employee in the system.',
    context: [
      'employee salary must be converted to USD, using the currency_id column and the exchange rate table',
    ],
  },
})
export class Employee extends Entity {
  ...
  @property({
    type: 'string',
    required: true,
    description: 'Name of the employee',
  })
  name: string;

  @property({
    type: 'string',
    required: true,
    description: 'Unique code for the employee, used for identification',
  })
  code: string;

  @property({
    type: 'number',
    required: true,
    description:
      'The salary of the employee in the currency stored in currency_id column',
  })
  salary: number;
  ...
}
```

- Model description - this is the primary description of the model, it is used to select model for generation, so it should only define the purpose of the model itself.
- Model context - this is secondary information about the model, usually defining some specific details about the model that must be kept in mind while using it. NOTE - These values should always include the model name. This must be information that is applicable to overall model usage, or atleast to multiple columns, and not related to any single field of the model.
- Property description - this is the description for a property of a model, providing context for the LLM on how to use and understand a particular property.

## Usage

You just need to register your models in the configuration of the component, and if the Models have proper and detailed descriptions, the tools should be able to answer the user's prompts based on those descriptions.

```ts
this.bind(DbQueryAIExtensionBindings.Config).to({
  models: [
    {
      model: Employee, // A normal loopback4 model class with proper description
      readPermissionKey: '1', // permission key used to check access for this particular model/table
    },
  ],
  db: {
    dialect: SupportedDBs.PostgreSQL, // dialect for which the SQL will be generated.
    schema: 'public', // schema of the database in case of DBs like Postgresql
    ignoredColumns: ['deleted'], // list of db column names that will be ignored for query generation (Do not use Loopback field names in this list)
  },
  readAccessForAI: false // give access of the query result to the llm
  maxRowsForAI: 0 // number of rows from the result that are passed to the LLM
  columnSelection: false // add a column selection step in generation in case you have tables with a lot of columns.
});
```

## Connectors

The package comes with 3 connectors by default -

- **PgConnector** - basic connector for PostgreSQL databases
- **SqlLiteConnector** - basic connector SqlLite databases, can be used for testing
- **PgWithRlsConnector** - Connector for PostgreSQL databases with support for [Row Security Policies](https://www.postgresql.org/docs/current/ddl-rowsecurity.html). Refer [`PgWithRlsConnector`](#pgwithrlsconnector) for more details.

You can write your own connector by following the `IDbConnector` interface and and binding it on `DbQueryAIExtensionBindings.Connector`.

By default, the package binds `PgWithRlsConnector` but if you are not planning to use row security policies or default conditions, you can bind `PgConnector` -

```ts
// application.ts
this.bind(DbQueryAIExtensionBindings.Connector).toClass(PgConnector);
```

## Default Conditions

The package allows binding an optional provider on key `DbQueryAIExtensionBindings.DefaultConditions` that are applied on every query generated by the LLM. **NOTE** This only works for connectors that support this option.

As of now, the only provider that supports this is `PgWithRlsConnector`.

## PgWithRlsConnector

You can take advantage of the `DbQueryAIExtensionBindings.DefaultConditions` by using this connector with a PostgreSQL database. To use this you need to first setup your database to use [Row Security Policies](https://www.postgresql.org/docs/current/ddl-rowsecurity.html). You can use an SQL script that looks something like this to do this -

```sql
DO $$
DECLARE
    tbl text;
    tables text[] := ARRAY[
        'main.test-table',
    ];
BEGIN
    FOREACH tbl IN ARRAY tables LOOP
        -- Enable RLS
        EXECUTE format('ALTER TABLE %I ENABLE ROW LEVEL SECURITY;', tbl);

        -- Drop existing policy if it already exists (to avoid duplicates)
        EXECUTE format('DROP POLICY IF EXISTS tenant_policy ON %I;', tbl);

        -- Create policy (applies to SELECT, INSERT, UPDATE, DELETE)
        EXECUTE format($f$
            CREATE POLICY tenant_policy ON %I
            -- conditions to apply by default are tenant id = some value and deleted = false
            USING (tenant_id = current_setting('app.current_tenant')::int AND deleted = false)
            WITH CHECK (false);
        $f$, tbl);
    END LOOP;
END$$;
```

Once the policies are setup, you can bind the provider for `DbQueryAIExtensionBindings.DefaultConditions` -

```ts
// default-conditions.provider.ts
import {IAuthUserWithPermissions} from '@sourceloop/core';
import {AuthenticationBindings} from 'loopback4-authentication';
import {AnyObject} from '@loopback/repository';
import {Provider} from '@loopback/core';

class DefaultConditionsProvider implements Provider<AnyObject> {
  constructor(
    @inject(AuthenticationBindings.CURRENT_USER)
    private readonly user: IAuthUserWithPermissions,
  ) {}
  value() {
    return {
      tenant_id: this.user.tenantId,
    };
  }
}
```

```ts
// application.ts
this.bind(DbQueryAIExtensionBindings.DefaultConditions).to(
  DefaultConditionsProvider,
);
```

## Writing Your Own Tool

You can register your own tools by simply using the `@graphTool()` decorator and implementing the `IGraphTool` interface. Any such class would be automatically registered with the `/generate` endpoint and the LLM would be able to use it as a tool.

```ts
import {tool} from '@langchain/core/tools';
import z from 'zod';
import {graphTool, IGraphTool} from 'lb4-llm-chat-component';

...
@graphTool()
export class AddTool implements IGraphTool {
  needsReview = false;

  build() {
    return tool((ob: {a: number, b: number}) => {
        return ob.a + ob.b
    },
    {
        name: 'add-tool',
        description: 'a tool to add two numbers',
        schema: z.object({
            a: z.number(),
            b: z.number()
        })
    });
  }
}
```

# Observability

## With Langsmith

You can enable langsmith observability by simply adding the Langsmith env variables. Refer [this](https://docs.langchain.com/langsmith/observability-quickstart) for more details.

## With Langfuse

You can enable Langfuse based tracing with the following steps -

- install the following packages -

```sh
npm i @langfuse/core @langfuse/langchain @langfuse/otel
```

- adding the following component in your LB4 application -

```ts
import {LangfuseComponent} from 'lb4-llm-chat-component/langfuse';
...

this.component(LangfuseComponent);
```

- set up langfuseSpanProcessor -

```ts
import {LangfuseSpanProcessor} from '@langfuse/otel';
import {OTLPTraceExporter} from '@opentelemetry/exporter-trace-otlp-http';
import {DnsInstrumentation} from '@opentelemetry/instrumentation-dns';
import {HttpInstrumentation} from '@opentelemetry/instrumentation-http';
import {PgInstrumentation} from '@opentelemetry/instrumentation-pg';
import {
  defaultResource,
  resourceFromAttributes,
} from '@opentelemetry/resources';
import {NodeSDK} from '@opentelemetry/sdk-node';
import {BatchSpanProcessor, SpanProcessor} from '@opentelemetry/sdk-trace-base';
import {
  ATTR_SERVICE_NAME,
  ATTR_SERVICE_VERSION,
} from '@opentelemetry/semantic-conventions';
import * as dotenv from 'dotenv';
import * as dotenvExt from 'dotenv-extended';

dotenv.config();
dotenvExt.load({
  schema: '.env.example',
  errorOnMissing: true,
  includeProcessEnv: true,
});

if (!!+(process.env.ENABLE_TRACING ?? 0)) {
  const resource = defaultResource().merge(
    resourceFromAttributes({
      [ATTR_SERVICE_NAME]: process.env.SERVICE_NAME ?? 'reporting-service',
      [ATTR_SERVICE_VERSION]: process.env.SERVICE_VERSION ?? '1.0.0',
    }),
  );

  const spanProcessors: SpanProcessor[] = [];
  const instrumentations = [];

  // Add OTLP exporter if Jaeger endpoint is configured
  if (process.env.OPENTELEMETRY_HOST && process.env.OPENTELEMETRY_PORT) {
    const otlpExporter = new OTLPTraceExporter({
      url: `http://${process.env.OPENTELEMETRY_HOST}:${process.env.OPENTELEMETRY_PORT}/v1/traces`,
    });
    spanProcessors.push(new BatchSpanProcessor(otlpExporter));
    instrumentations.push(
      new HttpInstrumentation(),
      new DnsInstrumentation(),
      new PgInstrumentation(),
    );
  }

  if (process.env.LANGFUSE_BASE_URL) {
    console.log('Langfuse tracing enabled');
    spanProcessors.push(new LangfuseSpanProcessor());
  }

  const sdk = new NodeSDK({
    resource: resource,
    spanProcessors: spanProcessors,
    instrumentations,
  });

  // Initialize the SDK
  console.log('Starting OpenTelemetry SDK');
  sdk.start();

  // Graceful shutdown
  process.on('SIGTERM', () => {
    sdk
      .shutdown()
      .then(() => console.log('Tracing terminated'))
      .catch(error => console.log('Error terminating tracing', error))
      .finally(() => process.exit(0));
  });
}
```

- setup env -

```sh
export ENABLE_TRACING=1
export LANGFUSE_SECRET_KEY="sk-lf-..."
export LANGFUSE_PUBLIC_KEY="pk-lf-..."
export LANGFUSE_BASE_URL="https://cloud.langfuse.com"
```

# Testing

## Generation Acceptance Builder

The `generation.acceptance.builder.ts` file provides a utility to run acceptance tests for the `llm-chat-component`. These tests validate the functionality of the `/reply` endpoint and ensure that the generated SQL queries and their results align with expectations.

## Overview

This builder facilitates the execution of multiple test cases, each defined with specific prompts, expected results, and configurations. It also generates detailed reports to analyze the performance and correctness of the tests.

## Key Features

- **Dynamic Prompt Parsing**: Replaces placeholders in prompts with environment-specific values.
- **Token Generation**: Creates JWT tokens with required permissions for test execution.
- **Query Execution**: Executes the generated SQL queries and compares the results with expected outputs.
- **Detailed Reporting**: Generates markdown reports with metrics such as success rates, token usage, and execution times.

## Usage

### Importing the Builder

```typescript
import {generationAcceptanceBuilder} from './generation.acceptance.builder';
```

### Running Tests

To use the builder, define your test cases as an array of `GenerationAcceptanceTestCase` objects and pass them to the `generationAcceptanceBuilder` function along with the required parameters.

#### Example

```typescript
const testCases = [
  {
    case: 'Test Case 1',
    prompt: 'Find all the active resources',
    outputInstructions:
      'The output should have a single column `resource_name` arranged in alphabetical order.',
    resultQuery:
      'SELECT name as resource_name FROM resource WHERE status = 1 ORDER BY name',
    count: 1,
  },
];

const result = await generationAcceptanceBuilder(
  testCases,
  client,
  app,
  1,
  true,
);
console.log(result);
```

### Parameters

- `cases`: An array of test cases to execute.
- `client`: The LoopBack test client.
- `app`: The LoopBack application instance.
- `countPerPrompt`: Number of iterations per test case (default: 1).
- `writeReport`: Whether to generate a markdown report (default: false).

### Test Case Structure

Each test case should follow the `GenerationAcceptanceTestCase` interface:

```typescript
interface GenerationAcceptanceTestCase {
  case: string; // Name of the test case
  prompt: string; // Prompt to send to the LLM
  outputInstructions: string; // Additional instructions for the output
  resultQuery: string; // Expected SQL query
  count?: number; // Number of iterations (optional)
  only?: boolean; // Run only this test case (optional)
  skip?: boolean; // Skip this test case (optional)
}
```

## Report Generation

The builder generates a markdown report summarizing the test results. The report includes:

- Success metrics
- Time metrics
- Token usage metrics
- Detailed results for each test case
- Failed queries with actual and expected results

The report is saved in the `llm-reports` directory with a filename based on the model name.

## Environment Variables

The builder relies on the following environment variables:

- `SAMPLE_DEAL_NAME`: Default value for `<testDeal>` placeholder.
- `TEST_TENANT_ID`: Tenant ID for token generation.
- `JWT_SECRET`: Secret key for signing JWT tokens.
- `JWT_ISSUER`: Issuer for JWT tokens.

## Dependencies

- `@loopback/testlab`
- `@loopback/core`
- `@loopback/repository`
- `@sourceloop/core`
- `jsonwebtoken`
- `crypto`
- `fs`
