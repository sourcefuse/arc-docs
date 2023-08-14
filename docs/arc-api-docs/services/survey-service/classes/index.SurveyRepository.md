[@sourceloop/survey-service](../README.md) / [Modules](../modules.md) / [index](../modules/index.md) / SurveyRepository

# Class: SurveyRepository

[index](../modules/index.md).SurveyRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Survey`](index.Survey.md), typeof [`id`](index.SurveyDto.md#id), [`SurveyRelations`](../interfaces/index.SurveyRelations.md)\>

  ↳ **`SurveyRepository`**

## Table of contents

### Constructors

- [constructor](index.SurveyRepository.md#constructor)

### Properties

- [getCurrentUser](index.SurveyRepository.md#getcurrentuser)
- [questionRepositoryGetter](index.SurveyRepository.md#questionrepositorygetter)
- [questions](index.SurveyRepository.md#questions)
- [sectionRepositoryGetter](index.SurveyRepository.md#sectionrepositorygetter)
- [sections](index.SurveyRepository.md#sections)
- [surveyCycleRepositoryGetter](index.SurveyRepository.md#surveycyclerepositorygetter)
- [surveyCycles](index.SurveyRepository.md#surveycycles)
- [surveyQuestionRepositoryGetter](index.SurveyRepository.md#surveyquestionrepositorygetter)
- [surveyResponderRepositoryGetter](index.SurveyRepository.md#surveyresponderrepositorygetter)
- [surveyResponders](index.SurveyRepository.md#surveyresponders)

### Methods

- [create](index.SurveyRepository.md#create)
- [createAll](index.SurveyRepository.md#createall)
- [replaceById](index.SurveyRepository.md#replacebyid)
- [save](index.SurveyRepository.md#save)
- [update](index.SurveyRepository.md#update)
- [updateAll](index.SurveyRepository.md#updateall)
- [updateById](index.SurveyRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyRepository**(`dataSource`, `surveyCycleRepositoryGetter`, `surveyResponderRepositoryGetter`, `surveyQuestionRepositoryGetter`, `questionRepositoryGetter`, `sectionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](index.SurveyCycleRepository.md)\> |
| `surveyResponderRepositoryGetter` | `Getter`<[`SurveyResponderRepository`](index.SurveyResponderRepository.md)\> |
| `surveyQuestionRepositoryGetter` | `Getter`<[`SurveyQuestionRepository`](index.SurveyQuestionRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](index.QuestionRepository.md)\> |
| `sectionRepositoryGetter` | `Getter`<[`SectionRepository`](index.SectionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Survey,
  typeof Survey.prototype.id,
  SurveyRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L51)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L65)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](index.QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L61)

___

### questions

• `Readonly` **questions**: `HasManyThroughRepositoryFactory`<[`Question`](index.Question.md), `undefined` \| `string`, [`SurveyQuestion`](index.SurveyQuestion.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L44)

___

### sectionRepositoryGetter

• `Protected` **sectionRepositoryGetter**: `Getter`<[`SectionRepository`](index.SectionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L63)

___

### sections

• `Readonly` **sections**: `HasManyRepositoryFactory`<[`Section`](index.Section.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L40)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](index.SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L54)

___

### surveyCycles

• `Readonly` **surveyCycles**: `HasManyRepositoryFactory`<[`SurveyCycle`](index.SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L30)

___

### surveyQuestionRepositoryGetter

• `Protected` **surveyQuestionRepositoryGetter**: `Getter`<[`SurveyQuestionRepository`](index.SurveyQuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L59)

___

### surveyResponderRepositoryGetter

• `Protected` **surveyResponderRepositoryGetter**: `Getter`<[`SurveyResponderRepository`](index.SurveyResponderRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L56)

___

### surveyResponders

• `Readonly` **surveyResponders**: `HasManyRepositoryFactory`<[`SurveyResponder`](index.SurveyResponder.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/d35fdb3f0/services/survey-service/src/repositories/survey.repository.ts#L35)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>[]\>

#### Inherited from

DefaultUserModifyCrudRepository.createAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:12

___

### replaceById

▸ **replaceById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

DefaultUserModifyCrudRepository.save

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:13

___

### update

▸ **update**(`entity`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Survey`](index.Survey.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.update

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:14

___

### updateAll

▸ **updateAll**(`data`, `where?`, `options?`): `Promise`<`Count`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `data` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`Count`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateAll

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:15

___

### updateById

▸ **updateById**(`id`, `data`, `options?`): `Promise`<`void`\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `id` | `undefined` \| `string` |
| `data` | `DataObject`<[`Survey`](index.Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
