[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / StructuredQueryInterface

# Interface: StructuredQueryInterface

## Table of contents

### Properties

- [from](StructuredQueryInterface.md#from)
- [groupBy](StructuredQueryInterface.md#groupby)
- [having](StructuredQueryInterface.md#having)
- [join](StructuredQueryInterface.md#join)
- [limit](StructuredQueryInterface.md#limit)
- [offset](StructuredQueryInterface.md#offset)
- [orderBy](StructuredQueryInterface.md#orderby)
- [select](StructuredQueryInterface.md#select)
- [where](StructuredQueryInterface.md#where)

## Properties

### from

• **from**: [`DataSource`](../modules.md#datasource)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:85](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L85)

___

### groupBy

• `Optional` **groupBy**: [`FieldExpression`](../modules.md#fieldexpression)[]

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:89](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L89)

___

### having

• `Optional` **having**: [`WhereClause`](../modules.md#whereclause)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:90](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L90)

___

### join

• `Optional` **join**: [`JoinClause`](JoinClause.md)[]

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:86](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L86)

___

### limit

• `Optional` **limit**: `number`

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:91](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L91)

___

### offset

• `Optional` **offset**: `number`

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:92](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L92)

___

### orderBy

• `Optional` **orderBy**: { `field`: [`FieldExpression`](../modules.md#fieldexpression) ; `order`: [`OrderDirection`](../modules.md#orderdirection)  }[]

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:88](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L88)

___

### select

• **select**: [`SelectClause`](SelectClause.md)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:84](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L84)

___

### where

• `Optional` **where**: [`WhereClause`](../modules.md#whereclause)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L87)
