[@sourceloop/core](../README.md) / [Exports](../modules.md) / CoreModelBooter

# Class: CoreModelBooter

## Hierarchy

- `BaseBooter`

  ↳ **`CoreModelBooter`**

## Table of contents

### Constructors

- [constructor](CoreModelBooter.md#constructor)

### Properties

- [classes](CoreModelBooter.md#classes)
- [context](CoreModelBooter.md#context)
- [dirs](CoreModelBooter.md#dirs)
- [discovered](CoreModelBooter.md#discovered)
- [extensions](CoreModelBooter.md#extensions)
- [glob](CoreModelBooter.md#glob)
- [options](CoreModelBooter.md#options)
- [projectRoot](CoreModelBooter.md#projectroot)

### Accessors

- [artifactName](CoreModelBooter.md#artifactname)

### Methods

- [configure](CoreModelBooter.md#configure)
- [discover](CoreModelBooter.md#discover)
- [load](CoreModelBooter.md#load)

## Constructors

### constructor

• **new CoreModelBooter**(`context`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `context` | `Context` |

#### Overrides

BaseBooter.constructor

#### Defined in

[packages/core/src/booters/core-model.booter.ts:17](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-model.booter.ts#L17)

## Properties

### classes

• **classes**: `Constructor`<{}\>[]

List of exported classes discovered in the files

#### Inherited from

BaseBooter.classes

#### Defined in

[packages/core/src/booters/base.booter.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/base.booter.ts#L38)

___

### context

• `Protected` `Readonly` **context**: `Context`

#### Defined in

[packages/core/src/booters/core-model.booter.ts:19](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-model.booter.ts#L19)

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

#### Returns

`Promise`<`void`\>

#### Overrides

BaseBooter.discover

#### Defined in

[packages/core/src/booters/core-model.booter.ts:24](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-model.booter.ts#L24)

___

### load

▸ **load**(): `Promise`<`void`\>

#### Returns

`Promise`<`void`\>

#### Overrides

BaseBooter.load

#### Defined in

[packages/core/src/booters/core-model.booter.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/packages/core/src/booters/core-model.booter.ts#L29)
