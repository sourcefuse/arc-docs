[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / StructuredQueryInterface

# Interface: StructuredQueryInterface

## Table of contents

### Properties

- [from](StructuredQueryInterface.md#from)
- [limit](StructuredQueryInterface.md#limit)
- [offset](StructuredQueryInterface.md#offset)
- [orderBy](StructuredQueryInterface.md#orderby)
- [select](StructuredQueryInterface.md#select)
- [where](StructuredQueryInterface.md#where)

## Properties

### from

• **from**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `dataSources` | `string`[] |
| `joins?` | { `dataSource`: `string` ; `on`: `string` ; `type`: `string`  }[] |

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L30)

___

### limit

• `Optional` **limit**: `number`

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:43](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L43)

___

### offset

• `Optional` **offset**: `number`

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L44)

___

### orderBy

• `Optional` **orderBy**: { `field`: `string` ; `order`: ``"asc"`` \| ``"desc"``  }[]

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:39](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L39)

___

### select

• **select**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `distinct?` | `boolean` |
| `fields` | (`string` \| { `alias`: `string` ; `field`: `string`  })[] |
| `functions?` | { `alias?`: `string` ; `field`: `string` ; `functionType`: ``"COUNT"`` \| ``"SUM"`` \| ``"AVG"`` \| ``"MIN"`` \| ``"MAX"``  }[] |

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:21](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L21)

___

### where

• `Optional` **where**: [`WhereClause`](../modules.md#whereclause)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:38](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/reporting-service/src/interfaces/structured-query.interface.ts#L38)
