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

[services/search-service/src/classes/mysql/query.builder.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/mysql/query.builder.ts#L14)

## Properties

### \_placeholderIndex

• **\_placeholderIndex**: `number` = `0`

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[_placeholderIndex](SearchQueryBuilder.md#_placeholderindex)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/mysql/query.builder.ts#L12)

___

### baseQueryList

• `Protected` **baseQueryList**: [`Query`](../modules.md#query)[]

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[baseQueryList](SearchQueryBuilder.md#basequerylist)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L29)

___

### idType

• `Protected` `Optional` **idType**: `string` = `'uuid'`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[idType](SearchQueryBuilder.md#idtype)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L34)

___

### limitQuery

• `Protected` **limitQuery**: `string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[limitQuery](SearchQueryBuilder.md#limitquery)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L30)

___

### modelNameMap

• `Protected` **modelNameMap**: `Map`<`string`, `string`\>

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[modelNameMap](SearchQueryBuilder.md#modelnamemap)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:36](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L36)

___

### orderQuery

• `Protected` **orderQuery**: `string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[orderQuery](SearchQueryBuilder.md#orderquery)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:31](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L31)

___

### query

• `Protected` **query**: `DataObject`<[`SearchQuery`](SearchQuery.md)\>

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[query](SearchQueryBuilder.md#query)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:32](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L32)

___

### schema

• `Protected` `Optional` **schema**: `string`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[schema](SearchQueryBuilder.md#schema)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:33](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L33)

___

### unionString

• **unionString**: `string` = `' UNION ALL '`

#### Overrides

[SearchQueryBuilder](SearchQueryBuilder.md).[unionString](SearchQueryBuilder.md#unionstring)

#### Defined in

[services/search-service/src/classes/mysql/query.builder.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/mysql/query.builder.ts#L11)

## Accessors

### placeholder

• `Protected` `get` **placeholder**(): `string`

#### Returns

`string`

#### Inherited from

SearchQueryBuilder.placeholder

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:37](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L37)

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

[services/search-service/src/classes/base/query.builder.ts:41](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L41)

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

[services/search-service/src/classes/base/query.builder.ts:58](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L58)

___

### buildClauseFromExpress

▸ **buildClauseFromExpress**(`values`, `separator`, `grouping`, `getPlaceholder`): [`Query`](../modules.md#query)

#### Parameters

| Name | Type |
| :------ | :------ |
| `values` | [`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query) \| ([`ShortHandEqualType`](../modules.md#shorthandequaltype) \| [`Query`](../modules.md#query))[] |
| `separator` | `string` |
| `grouping` | `boolean` |
| `getPlaceholder` | () => `string` |

#### Returns

[`Query`](../modules.md#query)

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[buildClauseFromExpress](SearchQueryBuilder.md#buildclausefromexpress)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:527](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L527)

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

[services/search-service/src/classes/base/query.builder.ts:368](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L368)

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

[services/search-service/src/classes/base/query.builder.ts:463](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L463)

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

[services/search-service/src/classes/base/query.builder.ts:179](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L179)

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

[services/search-service/src/classes/base/query.builder.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L132)

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

[services/search-service/src/classes/base/query.builder.ts:144](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L144)

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

[services/search-service/src/classes/base/query.builder.ts:391](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L391)

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

[services/search-service/src/classes/mysql/query.builder.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/mysql/query.builder.ts#L49)

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

[services/search-service/src/classes/base/query.builder.ts:567](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L567)

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

[services/search-service/src/classes/base/query.builder.ts:563](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L563)

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

[services/search-service/src/classes/base/query.builder.ts:312](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L312)

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

[services/search-service/src/classes/base/query.builder.ts:269](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L269)

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

[services/search-service/src/classes/base/query.builder.ts:343](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L343)

___

### limit

▸ **limit**(): `void`

#### Returns

`void`

#### Inherited from

[SearchQueryBuilder](SearchQueryBuilder.md).[limit](SearchQueryBuilder.md#limit)

#### Defined in

[services/search-service/src/classes/base/query.builder.ts:77](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L77)

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

[services/search-service/src/classes/base/query.builder.ts:102](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L102)

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

[services/search-service/src/classes/mysql/query.builder.ts:45](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/mysql/query.builder.ts#L45)

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

[services/search-service/src/classes/base/query.builder.ts:200](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L200)

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

[services/search-service/src/classes/base/query.builder.ts:383](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L383)

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

[services/search-service/src/classes/base/query.builder.ts:212](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L212)

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

[services/search-service/src/classes/mysql/query.builder.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/mysql/query.builder.ts#L18)

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

[services/search-service/src/classes/base/query.builder.ts:447](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L447)

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

[services/search-service/src/classes/base/query.builder.ts:398](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L398)

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

[services/search-service/src/classes/base/query.builder.ts:434](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L434)

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

[services/search-service/src/classes/base/query.builder.ts:255](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/search-service/src/classes/base/query.builder.ts#L255)
