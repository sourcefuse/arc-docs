[@sourceloop/survey-service](../README.md) / [Exports](../modules.md) / SurveyRepository

# Class: SurveyRepository

## Hierarchy

- `DefaultUserModifyCrudRepository`<[`Survey`](Survey.md), typeof [`id`](SurveyDto.md#id), [`SurveyRelations`](../interfaces/SurveyRelations.md)\>

  ↳ **`SurveyRepository`**

## Table of contents

### Constructors

- [constructor](SurveyRepository.md#constructor)

### Properties

- [getCurrentUser](SurveyRepository.md#getcurrentuser)
- [questionRepositoryGetter](SurveyRepository.md#questionrepositorygetter)
- [questions](SurveyRepository.md#questions)
- [sectionRepositoryGetter](SurveyRepository.md#sectionrepositorygetter)
- [sections](SurveyRepository.md#sections)
- [surveyCycleRepositoryGetter](SurveyRepository.md#surveycyclerepositorygetter)
- [surveyCycles](SurveyRepository.md#surveycycles)
- [surveyQuestionRepositoryGetter](SurveyRepository.md#surveyquestionrepositorygetter)
- [surveyResponderRepositoryGetter](SurveyRepository.md#surveyresponderrepositorygetter)
- [surveyResponders](SurveyRepository.md#surveyresponders)

### Methods

- [create](SurveyRepository.md#create)
- [createAll](SurveyRepository.md#createall)
- [replaceById](SurveyRepository.md#replacebyid)
- [save](SurveyRepository.md#save)
- [update](SurveyRepository.md#update)
- [updateAll](SurveyRepository.md#updateall)
- [updateById](SurveyRepository.md#updatebyid)

## Constructors

### constructor

• **new SurveyRepository**(`dataSource`, `surveyCycleRepositoryGetter`, `surveyResponderRepositoryGetter`, `surveyQuestionRepositoryGetter`, `questionRepositoryGetter`, `sectionRepositoryGetter`, `getCurrentUser`)

#### Parameters

| Name | Type |
| :------ | :------ |
| `dataSource` | `DataSource` |
| `surveyCycleRepositoryGetter` | `Getter`<[`SurveyCycleRepository`](SurveyCycleRepository.md)\> |
| `surveyResponderRepositoryGetter` | `Getter`<[`SurveyResponderRepository`](SurveyResponderRepository.md)\> |
| `surveyQuestionRepositoryGetter` | `Getter`<[`SurveyQuestionRepository`](SurveyQuestionRepository.md)\> |
| `questionRepositoryGetter` | `Getter`<[`QuestionRepository`](QuestionRepository.md)\> |
| `sectionRepositoryGetter` | `Getter`<[`SectionRepository`](SectionRepository.md)\> |
| `getCurrentUser` | `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\> |

#### Overrides

DefaultUserModifyCrudRepository&lt;
  Survey,
  typeof Survey.prototype.id,
  SurveyRelations
\&gt;.constructor

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:51](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L51)

## Properties

### getCurrentUser

• `Readonly` **getCurrentUser**: `Getter`<`IAuthUserWithPermissions`<`string`, `string`, `string`\>\>

#### Inherited from

DefaultUserModifyCrudRepository.getCurrentUser

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:65](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L65)

___

### questionRepositoryGetter

• `Protected` **questionRepositoryGetter**: `Getter`<[`QuestionRepository`](QuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:61](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L61)

___

### questions

• `Readonly` **questions**: `HasManyThroughRepositoryFactory`<[`Question`](Question.md), `undefined` \| `string`, [`SurveyQuestion`](SurveyQuestion.md)<`DataObject`<`Model`\>\>, `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:44](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L44)

___

### sectionRepositoryGetter

• `Protected` **sectionRepositoryGetter**: `Getter`<[`SectionRepository`](SectionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L63)

___

### sections

• `Readonly` **sections**: `HasManyRepositoryFactory`<[`Section`](Section.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L40)

___

### surveyCycleRepositoryGetter

• `Protected` **surveyCycleRepositoryGetter**: `Getter`<[`SurveyCycleRepository`](SurveyCycleRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:54](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L54)

___

### surveyCycles

• `Readonly` **surveyCycles**: `HasManyRepositoryFactory`<[`SurveyCycle`](SurveyCycle.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:30](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L30)

___

### surveyQuestionRepositoryGetter

• `Protected` **surveyQuestionRepositoryGetter**: `Getter`<[`SurveyQuestionRepository`](SurveyQuestionRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:59](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L59)

___

### surveyResponderRepositoryGetter

• `Protected` **surveyResponderRepositoryGetter**: `Getter`<[`SurveyResponderRepository`](SurveyResponderRepository.md)\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:56](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L56)

___

### surveyResponders

• `Readonly` **surveyResponders**: `HasManyRepositoryFactory`<[`SurveyResponder`](SurveyResponder.md), `undefined` \| `string`\>

#### Defined in

[services/survey-service/src/repositories/survey.repository.ts:35](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/services/survey-service/src/repositories/survey.repository.ts#L35)

## Methods

### create

▸ **create**(`entity`, `options?`): `Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | `DataObject`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\>

#### Inherited from

DefaultUserModifyCrudRepository.create

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:11

___

### createAll

▸ **createAll**(`entities`, `options?`): `Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>[]\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entities` | `DataObject`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\>[] |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>[]\>

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
| `data` | `DataObject`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.replaceById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:17

___

### save

▸ **save**(`entity`, `options?`): `Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\>

#### Parameters

| Name | Type |
| :------ | :------ |
| `entity` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\>

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
| `entity` | [`Survey`](Survey.md)<`DataObject`<`Model`\>\> |
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
| `data` | `DataObject`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |
| `where?` | `Where`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |
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
| `data` | `DataObject`<[`Survey`](Survey.md)<`DataObject`<`Model`\>\>\> |
| `options?` | `Options` |

#### Returns

`Promise`<`void`\>

#### Inherited from

DefaultUserModifyCrudRepository.updateById

#### Defined in

packages/core/dist/repositories/default-user-modify-crud.repository.base.d.ts:16
