[@sourceloop/reporting-service](../README.md) / [Exports](../modules.md) / WhereCondition

# Interface: WhereCondition

## Table of contents

### Properties

- [field](WhereCondition.md#field)
- [operator](WhereCondition.md#operator)
- [value](WhereCondition.md#value)
- [valueType](WhereCondition.md#valuetype)

## Properties

### field

• **field**: [`FieldExpression`](../modules.md#fieldexpression)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:50](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L50)

___

### operator

• **operator**: [`Operator`](../modules.md#operator)

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L51)

___

### value

• **value**: ``null`` \| `number` \| `boolean` \| `string`[] \| [`FieldExpression`](../modules.md#fieldexpression) \| `number`[]

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:53](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L53)

___

### valueType

• `Optional` **valueType**: ``"literal"`` \| ``"column"``

#### Defined in

[services/reporting-service/src/interfaces/structured-query.interface.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/eb9d4d57/services/reporting-service/src/interfaces/structured-query.interface.ts#L63)
