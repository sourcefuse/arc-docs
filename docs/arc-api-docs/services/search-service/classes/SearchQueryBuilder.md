[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / SearchQueryBuilder

# Class: SearchQueryBuilder<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

## Hierarchy

- **`SearchQueryBuilder`**

  ↳ [`MySqlQueryBuilder`](MySqlQueryBuilder.md)

  ↳ [`PsqlQueryBuilder`](PsqlQueryBuilder.md)

## Table of contents

### Constructors

- [constructor](SearchQueryBuilder.md#constructor)

### Properties

- [\_placeholderIndex](SearchQueryBuilder.md#_placeholderindex)
- [baseQueryList](SearchQueryBuilder.md#basequerylist)
- [idType](SearchQueryBuilder.md#idtype)
- [limitQuery](SearchQueryBuilder.md#limitquery)
- [modelNameMap](SearchQueryBuilder.md#modelnamemap)
- [orderQuery](SearchQueryBuilder.md#orderquery)
- [query](SearchQueryBuilder.md#query)
- [schema](SearchQueryBuilder.md#schema)
- [unionString](SearchQueryBuilder.md#unionstring)

### Accessors

- [placeholder](SearchQueryBuilder.md#placeholder)

### Methods

- [\_formatColumnSameInDb](SearchQueryBuilder.md#_formatcolumnsameindb)
- [\_isQuery](SearchQueryBuilder.md#_isquery)
- [build](SearchQueryBuilder.md#build)
- [buildClauseFromExpress](SearchQueryBuilder.md#buildclausefromexpress)
- [buildColumnValueForExpression](SearchQueryBuilder.md#buildcolumnvalueforexpression)
- [buildExpression](SearchQueryBuilder.md#buildexpression)
- [buildStatement](SearchQueryBuilder.md#buildstatement)
- [getColumnListFromArray](SearchQueryBuilder.md#getcolumnlistfromarray)
- [getColumnListFromArrayOrMap](SearchQueryBuilder.md#getcolumnlistfromarrayormap)
- [getColumnListFromMap](SearchQueryBuilder.md#getcolumnlistfrommap)
- [getColumnName](SearchQueryBuilder.md#getcolumnname)
- [getModelName](SearchQueryBuilder.md#getmodelname)
- [getSchemaName](SearchQueryBuilder.md#getschemaname)
- [getTableName](SearchQueryBuilder.md#gettablename)
- [handleAndOr](SearchQueryBuilder.md#handleandor)
- [handleKeys](SearchQueryBuilder.md#handlekeys)
- [handleObjectValue](SearchQueryBuilder.md#handleobjectvalue)
- [isDateType](SearchQueryBuilder.md#isdatetype)
- [isNumberType](SearchQueryBuilder.md#isnumbertype)
- [isStringType](SearchQueryBuilder.md#isstringtype)
- [limit](SearchQueryBuilder.md#limit)
- [order](SearchQueryBuilder.md#order)
- [paramString](SearchQueryBuilder.md#paramstring)
- [paramsBuild](SearchQueryBuilder.md#paramsbuild)
- [parseIdPlaceholder](SearchQueryBuilder.md#parseidplaceholder)
- [queryBuild](SearchQueryBuilder.md#querybuild)
- [search](SearchQueryBuilder.md#search)
- [toArrayPropTypes](SearchQueryBuilder.md#toarrayproptypes)
- [toColumnValue](SearchQueryBuilder.md#tocolumnvalue)
- [toDateType](SearchQueryBuilder.md#todatetype)
- [whereBuild](SearchQueryBuilder.md#wherebuild)

## Constructors

### constructor

• **new SearchQueryBuilder**<`T`\>(`query`, `schema?`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model`<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | `DataObject`<[`SearchQuery`](SearchQuery.md)\> |
| `schema?` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:46](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L46)

## Properties

### \_placeholderIndex

• `Protected` **\_placeholderIndex**: `number` = `0`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L35)

___

### baseQueryList

• `Protected` **baseQueryList**: [`Query`](../modules.md#query)[]

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L29)

___

### idType

• `Protected` `Optional` **idType**: `string` = `'uuid'`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L34)

___

### limitQuery

• `Protected` **limitQuery**: `string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L30)

___

### modelNameMap

• `Protected` **modelNameMap**: `Map`<`string`, `string`\>

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L36)

___

### orderQuery

• `Protected` **orderQuery**: `string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L31)

___

### query

• `Protected` **query**: `DataObject`<[`SearchQuery`](SearchQuery.md)\>

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L32)

___

### schema

• `Protected` `Optional` **schema**: `string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L33)

___

### unionString

• `Abstract` **unionString**: `string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L56)

## Accessors

### placeholder

• `Protected` `get` **placeholder**(): `string`

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L37)

• `Protected` `set` **placeholder**(`val`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `val` | `string` \| `number` |

#### Returns

`void`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L41)

## Methods

### \_formatColumnSameInDb

▸ `Private` **_formatColumnSameInDb**(`modelColumn`, `dbColumn`): `string` \| keyof `T`

#### Parameters

| Name | Type |
| :------ | :------ |
| `modelColumn` | keyof `T` |
| `dbColumn` | `string` |

#### Returns

`string` \| keyof `T`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:620](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L620)

___

### \_isQuery

▸ `Private` **_isQuery**(`query`): query is Query

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | [`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query) |

#### Returns

query is Query

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:616](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L616)

___

### build

▸ **build**(`models`, `ignoredColumns?`, `type?`, `idType?`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `models` | (typeof `Model` \| [`SearchableModel`](SearchableModel.md)<`T`, typeof `Model`\>)[] |
| `ignoredColumns?` | `Exclude`<keyof `T`, ``"getId"`` \| ``"getIdObject"`` \| ``"toJSON"`` \| ``"toObject"``\>[] |
| `type?` | typeof `Model` |
| `idType?` | `string` |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `params` | `AnyObject` \| (`string` \| `AnyObject`)[] |
| `query` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L58)

___

### buildClauseFromExpress

▸ **buildClauseFromExpress**(`values`, `separator`, `grouping`, `getPlaceholder`): [`Query`](../modules.md#query)

The function `buildClauseFromExpress` constructs a SQL clause from an array of values, a separator,
and other parameters.

#### Parameters

| Name | Type | Description |
| :------ | :------ | :------ |
| `values` | [`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query) \| ([`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query))[] | The `values` parameter in the `buildClauseFromExpress` function can be one of the following types: |
| `separator` | `string` | The `separator` parameter is a string that will be used to separate the values in the resulting clause. |
| `grouping` | `boolean` | The `grouping` parameter in the `buildClauseFromExpress` function is a boolean flag that determines whether the generated SQL clause should be wrapped in parentheses for grouping purposes. If `grouping` is set to `true`, the SQL clause will be enclosed in parentheses. If `grouping` |
| `getPlaceholder` | () => `string` | The `buildClauseFromExpress` function takes in four parameters: |

#### Returns

[`Query`](../modules.md#query)

The `buildClauseFromExpress` function returns an object with `sql` and `params`
properties. The `sql` property contains the generated SQL clause based on the input values,
separator, and grouping settings. The `params` property contains an array of parameters used in the
SQL clause.

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:568](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L568)

___

### buildColumnValueForExpression

▸ **buildColumnValueForExpression**(`expressionValue`, `p`): `any`[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `expressionValue` | [`PredicateValueType`](../modules.md#predicatevaluetype)<[`ShortHandEqualType`](../modules.md#shorthandequaltype)\> |
| `p` | `PropertyDefinition` |

#### Returns

`any`[]

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:376](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L376)

___

### buildExpression

▸ **buildExpression**(`columnName`, `prop`, `operator`, `value`, `model`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `columnName` | keyof `T` |
| `prop` | `PropertyDefinition` |
| `operator` | `string` |
| `value` | [`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query) \| ([`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query))[] |
| `model` | typeof `Model` |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `params` | [`ShortHandEqualType`](../modules.md#shorthandequaltype)[] |
| `sql` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:487](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L487)

___

### buildStatement

▸ `Private` **buildStatement**<`K`\>(`expression`, `columnName`, `propSchema`, `key`, `model`): `undefined` \| [`Query`](../modules.md#query)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `K` | extends `never` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `expression` | [`SearchWhereFilter`](../modules.md#searchwherefilter)<`T`\>[`K`] |
| `columnName` | `string` |
| `propSchema` | `PropertyDefinition` |
| `key` | `K` |
| `model` | typeof `Model` |

#### Returns

`undefined` \| [`Query`](../modules.md#query)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:292](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L292)

___

### getColumnListFromArray

▸ **getColumnListFromArray**(`model`, `columns`, `filter`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `columns` | keyof `T`[] |
| `filter` | keyof `T`[] |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `columnList` | `string` |
| `selectors` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:181](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L181)

___

### getColumnListFromArrayOrMap

▸ **getColumnListFromArrayOrMap**(`model`, `columns`, `filter`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `columns` | keyof `T`[] \| [`ColumnMap`](../modules.md#columnmap)<`T`\> |
| `filter` | keyof `T`[] |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `columnList` | `string` |
| `selectors` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:134](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L134)

___

### getColumnListFromMap

▸ **getColumnListFromMap**(`model`, `columns`, `filter`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `columns` | [`ColumnMap`](../modules.md#columnmap)<`T`\> |
| `filter` | keyof `T`[] |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `columnList` | `string` |
| `selectors` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:146](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L146)

___

### getColumnName

▸ **getColumnName**(`model`, `name`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `name` | keyof `T` |

#### Returns

`any`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:399](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L399)

___

### getModelName

▸ **getModelName**(`model`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:611](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L611)

___

### getSchemaName

▸ **getSchemaName**(`model`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:607](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L607)

___

### getTableName

▸ **getTableName**(`model`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:603](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L603)

___

### handleAndOr

▸ **handleAndOr**<`S`\>(`where`, `key`, `model`): `undefined` \| [`Query`](../modules.md#query)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `S` | extends typeof `Model` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `where` | [`SearchWhereFilter`](../modules.md#searchwherefilter)<`AnyObject`\> |
| `key` | `never` |
| `model` | `S` |

#### Returns

`undefined` \| [`Query`](../modules.md#query)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:320](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L320)

___

### handleKeys

▸ **handleKeys**(`model`, `key`, `where`): `undefined` \| [`Query`](../modules.md#query) \| [`Queries`](../modules.md#queries)

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `key` | `never` |
| `where` | [`SearchWhereFilter`](../modules.md#searchwherefilter)<`AnyObject`\> |

#### Returns

`undefined` \| [`Query`](../modules.md#query) \| [`Queries`](../modules.md#queries)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:269](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L269)

___

### handleObjectValue

▸ **handleObjectValue**<`S`\>(`expression`, `p`, `key`, `model`): `undefined` \| [`Query`](../modules.md#query)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `S` | extends typeof `Model` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `expression` | [`PredicateComparison`](../modules.md#predicatecomparison)<[`ShortHandEqualType`](../modules.md#shorthandequaltype)\> |
| `p` | `PropertyDefinition` |
| `key` | `never` |
| `model` | `S` |

#### Returns

`undefined` \| [`Query`](../modules.md#query)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:351](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L351)

___

### isDateType

▸ **isDateType**(`type`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `type` | `PropertyType` |

#### Returns

`boolean`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:445](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L445)

___

### isNumberType

▸ **isNumberType**(`type`, `val`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `type` | `PropertyType` |
| `val` | [`PredicateValueType`](../modules.md#predicatevaluetype)<[`ShortHandEqualType`](../modules.md#shorthandequaltype)\> |

#### Returns

`boolean`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:451](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L451)

___

### isStringType

▸ **isStringType**(`type`, `val`): `boolean`

#### Parameters

| Name | Type |
| :------ | :------ |
| `type` | `PropertyType` |
| `val` | [`PredicateValueType`](../modules.md#predicatevaluetype)<[`ShortHandEqualType`](../modules.md#shorthandequaltype)\> |

#### Returns

`boolean`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:438](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L438)

___

### limit

▸ **limit**(): `void`

#### Returns

`void`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L77)

___

### order

▸ **order**(`columns`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `columns` | keyof `T`[] |

#### Returns

`void`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:104](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L104)

___

### paramString

▸ **paramString**(`index`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `index` | `number` |

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:210](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L210)

___

### paramsBuild

▸ **paramsBuild**(`param`): `AnyObject` \| (`string` \| `AnyObject`)[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `param` | `string` |

#### Returns

`AnyObject` \| (`string` \| `AnyObject`)[]

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:202](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L202)

___

### parseIdPlaceholder

▸ **parseIdPlaceholder**(`prop`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `prop` | `PropertyDefinition` |

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:391](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L391)

___

### queryBuild

▸ **queryBuild**(`models`, `ignoredColumns?`, `type?`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `models` | (typeof `Model` \| [`SearchableModel`](SearchableModel.md)<`T`, typeof `Model`\>)[] |
| `ignoredColumns?` | keyof `T`[] |
| `type?` | typeof `Model` |

#### Returns

`string`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:214](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L214)

___

### search

▸ `Abstract` **search**(`model`, `columns`, `ignoredColumns`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `columns` | keyof `T`[] \| [`ColumnMap`](../modules.md#columnmap)<`T`\> |
| `ignoredColumns` | keyof `T`[] |

#### Returns

`void`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L50)

___

### toArrayPropTypes

▸ **toArrayPropTypes**<`R`\>(`prop`, `val`): `any`

#### Type parameters

| Name |
| :------ |
| `R` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `prop` | `PropertyDefinition` |
| `val` | `R` \| `R`[] |

#### Returns

`any`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:471](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L471)

___

### toColumnValue

▸ **toColumnValue**(`prop`, `val`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `prop` | `PropertyDefinition` |
| `val` | [`PredicateValueType`](../modules.md#predicatevaluetype)<[`ShortHandEqualType`](../modules.md#shorthandequaltype)\> |

#### Returns

`any`

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:406](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L406)

___

### toDateType

▸ **toDateType**(`val`): `Object`

#### Parameters

| Name | Type |
| :------ | :------ |
| `val` | `string` \| `Date` |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `params` | `string`[] |
| `sql` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:458](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L458)

___

### whereBuild

▸ **whereBuild**<`S`\>(`model`, `where?`): `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `S` | extends typeof `Model` |

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | `S` |
| `where?` | [`SearchWhereFilter`](../modules.md#searchwherefilter)<`AnyObject`\> |

#### Returns

`Object`

| Name | Type |
| :------ | :------ |
| `params` | [`ShortHandEqualType`](../modules.md#shorthandequaltype)[] |
| `sql` | `string` |

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:255](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L255)
