@sourceloop/cli /

# @sourceloop-cli

<a style="position: relative; top: 10px;" href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

This is a `sourceloop` based cli that provides commands to scaffold a monorepo, add extensions, facades and microservices to it.

## Installation

```shell
npm install @sourceloop/cli
```

After installation, use either sl or arc to run any of the CLI commands.

## Commands

<!-- commands -->
- sl autocomplete
- sl cdk
- sl extension
- sl help 
- sl mcp
- sl microservice
- sl scaffold
- sl update

## sl autocomplete

Display autocomplete installation instructions

```
USAGE
  $ sl autocomplete

OPTIONS
  -r, --refresh-cache

EXAMPLES
  $ sl autocomplete
  $ sl autocomplete bash
  $ sl autocomplete zsh
  $ sl autocomplete --refresh-cache
```

## sl cdk

Add arc-cdk to your project

```
USAGE
  $ sl cdk

OPTIONS
  -a, --applicationClassName
  -d, --dir
  -i, --iac=(lambda)                              
  -o, --overwriteDockerfile                       
  -p, --packageJsonName
  -r, --relativePathToApp
```

## sl extension

Generate a local extension package in the packages folder.

```
USAGE
  $ sl extension
```

## sl help

Show help for a specific command.

```
USAGE
  $ sl help
```

## sl mcp

Run MCP server for CLI. This command is used internally.

```
USAGE
  $ sl mcp

DESCRIPTION
  Command that runs an MCP server for the sourceloop CLI, this is not supposed to be run directly, but rather used by 
  the MCP client to interact with the CLI commands. 
    You can use it using the following MCP server configuration:
      "sourceloop": {
        "command": "npx",
        "args": ["@sourceloop/cli", "mcp"],
        "timeout": 300
      }
```

## sl microservice

Add a microservice to services or facades folder. Supports custom and base microservice setup.

```
USAGE
  $ sl microservice

OPTIONS
  -p, --uniquePrefix
  -s, --baseService
  --[no-]baseOnService
  --customMigrations
  --datasourceName
  --datasourceType=(postgres|mysql)
  --[no-]facade
  --help
  --includeMigrations
  --sequelize

```

## sl scaffold

Scaffold a new ARC-based monorepo with initial structure.

```
USAGE
  $ sl scaffold


OPTIONS
  --cwd
  --description
  --helmPath
  --help                    
  --integrateWithBackstage   
  --issuePrefix
  --jenkinsfile          
  --owner
```

## sl update

Update the dependencies of a LoopBack project.

```
USAGE
  $ sl update

```
<!-- commandsstop -->