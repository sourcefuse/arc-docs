[@sourceloop/ctrl-plane-tenant-management-service](../README.md) / [Exports](../modules.md) / CodeBuildService

# Class: CodeBuildService

Service for handling AWS CodeBuild operations.
This service is responsible for starting build processes using the AWS CodeBuild client.

## Table of contents

### Constructors

- [constructor](CodeBuildService.md#constructor)

### Properties

- [codeBuildClient](CodeBuildService.md#codebuildclient)

### Methods

- [\_buildEnvironment](CodeBuildService.md#_buildenvironment)
- [startBuild](CodeBuildService.md#startbuild)

## Constructors

### constructor

• **new CodeBuildService**(`codeBuildClient`)

Constructs a new instance of the CodeBuildService.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `codeBuildClient` | `CodeBuildClient` | The AWS CodeBuild client to use. |

#### Defined in

[services/tenant-management-service/src/services/aws/codebuild.service.ts:21](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/aws/codebuild.service.ts#L21)

## Properties

### codeBuildClient

• `Private` `Readonly` **codeBuildClient**: `CodeBuildClient`

The AWS CodeBuild client to use.

#### Defined in

[services/tenant-management-service/src/services/aws/codebuild.service.ts:23](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/aws/codebuild.service.ts#L23)

## Methods

### \_buildEnvironment

▸ `Private` **_buildEnvironment**<`T`\>(`data`): `EnvironmentVariable`[]

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `T` |

#### Returns

`EnvironmentVariable`[]

#### Defined in

[services/tenant-management-service/src/services/aws/codebuild.service.ts:45](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/aws/codebuild.service.ts#L45)

___

### startBuild

▸ **startBuild**<`T`\>(`type`, `data`): `Promise`<`StartBuildCommandOutput`\>

The `startBuild` function starts a build process with the specified project name and environment
variables.

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `AnyObject` |

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `type` | `string` | The `type` parameter is a string that represents the project name for the build. |
| `data` | `T` | The `data` parameter is of type `T`, which extends `AnyObject`. It represents the data that will be used to override the environment variables for the build. |

#### Returns

`Promise`<`StartBuildCommandOutput`\>

The `startBuild` function is returning a promise that resolves to the result of sending a
`StartBuildCommand` using the `codeBuildClient`.

#### Defined in

[services/tenant-management-service/src/services/aws/codebuild.service.ts:36](https://github.com/sourcefuse/arc-saas/blob/c6084d0/services/tenant-management-service/src/services/aws/codebuild.service.ts#L36)
