[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreControllerBooter

# Class: CoreControllerBooter

## Hierarchy

- `BaseBooter`

  ↳ **`CoreControllerBooter`**

## Table of contents

### Constructors

- [constructor](CoreControllerBooter.md#constructor)

### Properties

- [application](CoreControllerBooter.md#application)
- [classes](CoreControllerBooter.md#classes)
- [dirs](CoreControllerBooter.md#dirs)
- [discovered](CoreControllerBooter.md#discovered)
- [extensions](CoreControllerBooter.md#extensions)
- [glob](CoreControllerBooter.md#glob)
- [options](CoreControllerBooter.md#options)
- [projectRoot](CoreControllerBooter.md#projectroot)

### Accessors

- [artifactName](CoreControllerBooter.md#artifactname)

### Methods

- [bindController](CoreControllerBooter.md#bindcontroller)
- [configure](CoreControllerBooter.md#configure)
- [discover](CoreControllerBooter.md#discover)
- [load](CoreControllerBooter.md#load)

## Constructors

### constructor

• **new CoreControllerBooter**(`application`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `application` | `RestApplication` |

#### Overrides

BaseBooter.constructor

#### Defined in

[packages/core/src/booters/core-controller.booter.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-controller.booter.ts#L14)

## Properties

### application

• `Protected` **application**: `RestApplication`

#### Defined in

[packages/core/src/booters/core-controller.booter.ts:16](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-controller.booter.ts#L16)

___

### classes

• **classes**: `Constructor`<{}\>[]

List of exported classes discovered in the files

#### Inherited from

BaseBooter.classes

#### Defined in

[packages/core/src/booters/base.booter.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L38)

___

### dirs

• **dirs**: `string`[]

Relative paths of directories to be searched

#### Inherited from

BaseBooter.dirs

#### Defined in

[packages/core/src/booters/base.booter.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L21)

___

### discovered

• **discovered**: `string`[]

List of files discovered by the Booter that matched artifact requirements

#### Inherited from

BaseBooter.discovered

#### Defined in

[packages/core/src/booters/base.booter.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L34)

___

### extensions

• **extensions**: `string`[]

File extensions to be searched

#### Inherited from

BaseBooter.extensions

#### Defined in

[packages/core/src/booters/base.booter.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L25)

___

### glob

• **glob**: `string`

`glob` pattern to match artifact paths

#### Inherited from

BaseBooter.glob

#### Defined in

[packages/core/src/booters/base.booter.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L29)

___

### options

• **options**: `ArtifactOptions`

Options being used by the Booter.

#### Inherited from

BaseBooter.options

#### Defined in

[packages/core/src/booters/base.booter.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L13)

___

### projectRoot

• **projectRoot**: `string`

Project root relative to which all other paths are resolved

#### Inherited from

BaseBooter.projectRoot

#### Defined in

[packages/core/src/booters/base.booter.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L17)

## Accessors

### artifactName

• `get` **artifactName**(): `string`

Get the name of the artifact loaded by this booter, e.g. "Controller".
Subclasses can override the default logic based on the class name.

#### Returns

`string`

#### Inherited from

BaseBooter.artifactName

#### Defined in

[packages/core/src/booters/base.booter.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L44)

## Methods

### bindController

▸ **bindController**(`controllerClass`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `controllerClass` | `ControllerClass`<`unknown`\> |

#### Returns

`void`

#### Defined in

[packages/core/src/booters/core-controller.booter.ts:28](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-controller.booter.ts#L28)

___

### configure

▸ **configure**(): `Promise`<`void`\>

Configure the Booter by initializing the 'dirs', 'extensions' and 'glob'
properties.

NOTE: All properties are configured even if all aren't used.

#### Returns

`Promise`<`void`\>

#### Inherited from

BaseBooter.configure

#### Defined in

[packages/core/src/booters/base.booter.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L54)

___

### discover

▸ **discover**(): `Promise`<`void`\>

Discover files based on the 'glob' property relative to the 'projectRoot'.
Discovered artifact files matching the pattern are saved to the
'discovered' property.

#### Returns

`Promise`<`void`\>

#### Inherited from

BaseBooter.discover

#### Defined in

[packages/core/src/booters/base.booter.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L81)

___

### load

▸ **load**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Overrides

BaseBooter.load

#### Defined in

[packages/core/src/booters/core-controller.booter.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-controller.booter.ts#L21)
