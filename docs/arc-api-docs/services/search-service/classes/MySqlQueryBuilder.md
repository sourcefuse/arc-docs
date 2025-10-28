[@sourceloop/search-service](../README.md) / [Exports](../modules.md) / MySqlQueryBuilder

# Class: MySqlQueryBuilder<T\>

## Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

## Hierarchy

- [`SearchQueryBuilder`](SearchQueryBuilder.md)<`T`\>

  ↳ **`MySqlQueryBuilder`**

## Table of contents

### Constructors

- [constructor](MySqlQueryBuilder.md#constructor)

### Properties

- [\_placeholderIndex](MySqlQueryBuilder.md#_placeholderindex)
- [baseQueryList](MySqlQueryBuilder.md#basequerylist)
- [idType](MySqlQueryBuilder.md#idtype)
- [limitQuery](MySqlQueryBuilder.md#limitquery)
- [modelNameMap](MySqlQueryBuilder.md#modelnamemap)
- [orderQuery](MySqlQueryBuilder.md#orderquery)
- [query](MySqlQueryBuilder.md#query)
- [schema](MySqlQueryBuilder.md#schema)
- [unionString](MySqlQueryBuilder.md#unionstring)

### Accessors

- [placeholder](MySqlQueryBuilder.md#placeholder)

### Methods

- [build](MySqlQueryBuilder.md#build)
- [buildClauseFromExpress](MySqlQueryBuilder.md#buildclausefromexpress)
- [buildColumnValueForExpression](MySqlQueryBuilder.md#buildcolumnvalueforexpression)
- [buildExpression](MySqlQueryBuilder.md#buildexpression)
- [getColumnListFromArray](MySqlQueryBuilder.md#getcolumnlistfromarray)
- [getColumnListFromArrayOrMap](MySqlQueryBuilder.md#getcolumnlistfromarrayormap)
- [getColumnListFromMap](MySqlQueryBuilder.md#getcolumnlistfrommap)
- [getColumnName](MySqlQueryBuilder.md#getcolumnname)
- [getModelName](MySqlQueryBuilder.md#getmodelname)
- [getSchemaName](MySqlQueryBuilder.md#getschemaname)
- [getTableName](MySqlQueryBuilder.md#gettablename)
- [handleAndOr](MySqlQueryBuilder.md#handleandor)
- [handleKeys](MySqlQueryBuilder.md#handlekeys)
- [handleObjectValue](MySqlQueryBuilder.md#handleobjectvalue)
- [isDateType](MySqlQueryBuilder.md#isdatetype)
- [isNumberType](MySqlQueryBuilder.md#isnumbertype)
- [isStringType](MySqlQueryBuilder.md#isstringtype)
- [limit](MySqlQueryBuilder.md#limit)
- [order](MySqlQueryBuilder.md#order)
- [paramString](MySqlQueryBuilder.md#paramstring)
- [paramsBuild](MySqlQueryBuilder.md#paramsbuild)
- [parseIdPlaceholder](MySqlQueryBuilder.md#parseidplaceholder)
- [queryBuild](MySqlQueryBuilder.md#querybuild)
- [search](MySqlQueryBuilder.md#search)
- [toArrayPropTypes](MySqlQueryBuilder.md#toarrayproptypes)
- [toColumnValue](MySqlQueryBuilder.md#tocolumnvalue)
- [toDateType](MySqlQueryBuilder.md#todatetype)
- [whereBuild](MySqlQueryBuilder.md#wherebuild)

## Constructors

### constructor

• **new MySqlQueryBuilder**<`T`\>(`query`)

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model`<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `query` | `DataObject`<[`SearchQuery`](SearchQuery.md)\> |

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[constructor](SearchQueryBuilder.md#constructor)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/mysql/query.builder.ts#L14)

## Properties

### \_placeholderIndex

• **\_placeholderIndex**: `number` = `0`

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[_placeholderIndex](SearchQueryBuilder.md#_placeholderindex)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/mysql/query.builder.ts#L12)

___

### baseQueryList

• `Protected` **baseQueryList**: [`Query`](../modules.md#query)[]

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[baseQueryList](SearchQueryBuilder.md#basequerylist)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L29)

___

### idType

• `Protected` `Optional` **idType**: `string` = `'uuid'`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[idType](SearchQueryBuilder.md#idtype)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L34)

___

### limitQuery

• `Protected` **limitQuery**: `string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[limitQuery](SearchQueryBuilder.md#limitquery)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L30)

___

### modelNameMap

• `Protected` **modelNameMap**: `Map`<`string`, `string`\>

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[modelNameMap](SearchQueryBuilder.md#modelnamemap)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L36)

___

### orderQuery

• `Protected` **orderQuery**: `string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[orderQuery](SearchQueryBuilder.md#orderquery)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L31)

___

### query

• `Protected` **query**: `DataObject`<[`SearchQuery`](SearchQuery.md)\>

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[query](SearchQueryBuilder.md#query)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L32)

___

### schema

• `Protected` `Optional` **schema**: `string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[schema](SearchQueryBuilder.md#schema)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L33)

___

### unionString

• **unionString**: `string` = `' UNION ALL '`

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[unionString](SearchQueryBuilder.md#unionstring)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/mysql/query.builder.ts#L11)

## Accessors

### placeholder

• `Protected` `get` **placeholder**(): `string`

#### Returns

`string`

#### Inherited from

SearchQueryBuilder.placeholder

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L37)

• `Protected` `set` **placeholder**(`val`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `val` | `string` \| `number` |

#### Returns

`void`

#### Inherited from

SearchQueryBuilder.placeholder

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L41)

## Methods

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[build](SearchQueryBuilder.md#build)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[buildClauseFromExpress](SearchQueryBuilder.md#buildclausefromexpress)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[buildColumnValueForExpression](SearchQueryBuilder.md#buildcolumnvalueforexpression)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[buildExpression](SearchQueryBuilder.md#buildexpression)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:487](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L487)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[getColumnListFromArray](SearchQueryBuilder.md#getcolumnlistfromarray)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[getColumnListFromArrayOrMap](SearchQueryBuilder.md#getcolumnlistfromarrayormap)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[getColumnListFromMap](SearchQueryBuilder.md#getcolumnlistfrommap)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[getColumnName](SearchQueryBuilder.md#getcolumnname)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:399](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L399)

___

### getModelName

▸ **getModelName**(`model`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |

#### Returns

`any`

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[getModelName](SearchQueryBuilder.md#getmodelname)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/mysql/query.builder.ts#L49)

___

### getSchemaName

▸ **getSchemaName**(`model`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |

#### Returns

`string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[getSchemaName](SearchQueryBuilder.md#getschemaname)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[getTableName](SearchQueryBuilder.md#gettablename)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[handleAndOr](SearchQueryBuilder.md#handleandor)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[handleKeys](SearchQueryBuilder.md#handlekeys)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[handleObjectValue](SearchQueryBuilder.md#handleobjectvalue)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[isDateType](SearchQueryBuilder.md#isdatetype)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[isNumberType](SearchQueryBuilder.md#isnumbertype)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[isStringType](SearchQueryBuilder.md#isstringtype)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:438](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L438)

___

### limit

▸ **limit**(): `void`

#### Returns

`void`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[limit](SearchQueryBuilder.md#limit)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[order](SearchQueryBuilder.md#order)

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

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[paramString](SearchQueryBuilder.md#paramstring)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/mysql/query.builder.ts#L45)

___

### paramsBuild

▸ **paramsBuild**(`param`): `AnyObject` \| (`string` \| `AnyObject`)[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `param` | `string` |

#### Returns

`AnyObject` \| (`string` \| `AnyObject`)[]

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[paramsBuild](SearchQueryBuilder.md#paramsbuild)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[parseIdPlaceholder](SearchQueryBuilder.md#parseidplaceholder)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[queryBuild](SearchQueryBuilder.md#querybuild)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:214](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L214)

___

### search

▸ **search**(`model`, `columns`, `ignoredColumns`): `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | typeof `Model` |
| `columns` | keyof `T`[] \| [`ColumnMap`](../modules.md#columnmap)<`T`\> |
| `ignoredColumns` | keyof `T`[] |

#### Returns

`void`

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[search](SearchQueryBuilder.md#search)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/mysql/query.builder.ts#L18)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[toArrayPropTypes](SearchQueryBuilder.md#toarrayproptypes)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[toColumnValue](SearchQueryBuilder.md#tocolumnvalue)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[toDateType](SearchQueryBuilder.md#todatetype)

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

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[whereBuild](SearchQueryBuilder.md#wherebuild)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:255](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/search-service/src/classes/base/query.builder.ts#L255)
