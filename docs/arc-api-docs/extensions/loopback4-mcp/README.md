<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-mcp](https://github.com/sourcefuse/loopback4-mcp)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-mcp">
<img src="https://img.shields.io/npm/v/loopback4-mcp.svg" alt="npm version" />
</a>
<a href="https://sonarcloud.io/summary/new_code?id=sourcefuse_loopback4-mcp" target="_blank">
<img alt="Sonar Quality Gate" src="https://img.shields.io/sonar/quality_gate/sourcefuse_loopback4-mcp?server=https%3A%2F%2Fsonarcloud.io">
</a>
<a href="https://github.com/sourcefuse/loopback4-mcp/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-mcp?">
</a>
<a href="https://www.npmjs.com/package/loopback4-mcp" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-mcp.svg">
</a>
<a href="./LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-mcp.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>

## Overview

This extension provides a plug-and-play integration between LoopBack4 applications and Model Context Protocol (MCP) specification. Its purpose is to enable LoopBack APIs, services, and business logic to be exposed as MCP Tools, allowing external MCP clients (such as LLMs, agents, or MCP-compatible apps) to discover and execute server-defined operations.

### Key Features

- **Automatic MCP Tool Discovery**: The extension scans your application at boot time and automatically registers all methods decorated with the custom `@mcpTool()` decorator. This allows you to define MCP tools anywhere in your LoopBack project without manually wiring metadata.

- **Lifecycle-managed Tool Registry**: A dedicated `McpToolRegistry` service maintains all discovered tool metadata, their handlers, and execution context. A `McpToolRegistryBootObserver` ensures that registration happens only after the application has fully booted.

- **Hook System Support**: Built-in support for pre and post hooks that enable validation, logging, audit trails, and custom business logic around tool execution.

- **Authorization Integration**: Seamless integration with LoopBack's authorization system, ensuring MCP tools respect your existing permission structure.

- **Simplified Endpoint Format**: Easy-to-use POST endpoint that accepts tool arguments directly without complex MCP protocol wrapping.

## Installation

```sh
npm install loopback4-mcp
```

## Integration Steps

### Step 1: Create Binding Keys

Create a `src/keys.ts` file to define binding keys for MCP hooks:

```typescript
import {BindingKey} from '@loopback/core';

export namespace McpHookBindings {
  export const PRE_HOOK = BindingKey.create<Function>('hooks.mcp.preHook');
  export const POST_HOOK = BindingKey.create<Function>('hooks.mcp.postHook');
}
```

### Step 2: Create Hook Providers

Create hook providers to implement pre and post-hook functionality:

```typescript
// src/providers/mcp-pre-hook.provider.ts
import {inject, Provider} from '@loopback/core';
import {McpHookContext} from 'loopback4-mcp';

export class McpPreHookProvider implements Provider<Function> {
  value(): Function {
    return async (context: McpHookContext) => {
      console.log(`Pre-hook executing for tool: ${context.toolName}`);
      // Add validation, sanitization, or pre-processing logic here
    };
  }
}

// src/providers/mcp-post-hook.provider.ts
export class McpPostHookProvider implements Provider<Function> {
  value(): Function {
    return async (context: McpHookContext) => {
      console.log(`Post-hook executing for tool: ${context.toolName}`);
      // Add logging, audit trails, or post-processing logic here
    };
  }
}
```

### Step 3: Configure Application

Update your `src/application.ts` to bind the component and hooks:

```typescript
export class MyApplication extends BootMixin(
  ServiceMixin(RepositoryMixin(RestApplication)),
) {
  constructor(options: ApplicationConfig = {}) {
    // Bind MCP component
    this.component(McpComponent);

    // Bind hook providers
    this.bind(McpHookBindings.PRE_HOOK).toProvider(McpPreHookProvider);
    this.bind(McpHookBindings.POST_HOOK).toProvider(McpPostHookProvider);
  }
}
```

### Step 4: Create MCP Tool Controllers

Add the `@mcpTool()` decorator to controller methods you want to expose as MCP tools. Here's a complete example showing the decorator stack with authorization and authentication:

```typescript
export class UserController {
  constructor(
    @repository(UserRepository)
    public userRepository: UserRepository,
  ) {}

  @authorize({
    permissions: [PermissionKey.CreateUser],
  })
  @authenticate(STRATEGY.BEARER, {
    passReqToCallback: true,
  })
  @mcpTool({
    name: 'createUser',
    description: 'Create a new user in the system',
    preHook: {binding: HookBindings.PRE_HOOK},
    postHook: {binding: HookBindings.POST_HOOK},
  })
  @post('/users', {
    security: OPERATION_SECURITY_SPEC,
    responses: {
      [STATUS_CODE.OK]: {
        description: 'User model instance',
        content: {
          'application/json': {schema: getModelSchemaRefSF(User)},
        },
      },
    },
  })
  async create(
    @param.query.object('user') user: Omit<User, 'id'>,
  ): Promise<object> {
    const created = await this.userRepository.create(user as User);

    return {
      content: [{
        type: 'text',
        text: `Successfully created user with id: ${created.id}`
      }]
    };
  }
}
```

## Parameter Decorator Guidelines

**Critical:** Use correct LoopBack `@param` decorators based on your route structure.

### Path Parameters
```typescript
@get('/users/{id}')
async findById(
  @param.path.string('id') id: string,  // ✅ Correct for /users/{id}
): Promise<User> {
  return this.userRepository.findById(id);
}
```

### Query Parameters
```typescript
@get('/users')
async findAll(
  @param.query.string('name') name?: string,  // ✅ Correct for /users?name=value
): Promise<User[]> {
  return this.userRepository.find({where: {name}});
}
```

### Request Body Parameters
```typescript
@post('/users')
async create(
  @param.request.body('user') user: User,  // ✅ Correct for POST body
): Promise<User> {
  return this.userRepository.create(user);
}
```

**Common Mistakes:**
- ❌ Using `@param.query.string('id')` for `/users/{id}` routes
- ✅ Use `@param.path.string('id')` for path parameters

## Decorator Configuration

The `@mcpTool()` decorator accepts the following configuration:

```typescript
@mcpTool({
  // Required fields
  name: 'tool-name',              // Unique identifier for the tool
  description: 'Tool description',  // Human-readable description

  // Optional fields
  schema: {                         // Zod validation schema
    email: z.string().email(),
    age: z.number().min(18),
  },
  preHookBinding: BindingKey.create('hooks.pre'),  // Pre-hook binding key
  postHookBinding: BindingKey.create('hooks.post'), // Post-hook binding key
})
```

## Testing

### Using MCP Inspector

The easiest way to test and visualize your MCP tools is using the MCP Inspector. This provides a web interface where all your endpoints are available and you can see hook responses in real-time.

**Start MCP Inspector:**
```bash
npx @modelcontextprotocol/inspector http://localhost:3000/mcp
```

**What MCP Inspector shows:**
- **All Available Tools**: Complete list of MCP tools exposed by your application
- **Tool Details**: Names, descriptions, and parameter schemas
- **Live Testing**: Test each tool directly from the web interface
- **Request/Response**: Real-time request and response data
- **Hook Execution**: Visualize pre and post-hook execution and their responses
- **Error Handling**: See error messages and debugging information

**Workflow with MCP Inspector:**
1. Start your LoopBack application
2. Run MCP Inspector with your MCP endpoint URL
3. Browse available tools in the web interface
4. Test tools with different parameters
5. Monitor hook execution and responses
6. Debug issues using the detailed logs


## License

[MIT](./LICENSE)

## Support

- GitHub Issues: [sourcefuse/loopback4-mcp/issues](https://github.com/sourcefuse/loopback4-mcp/issues)
- Documentation: [loopback.io](https://loopback.io/)

