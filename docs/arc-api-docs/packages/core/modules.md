[@sourceloop/core](README.md) / Exports

# @sourceloop/core

## Table of contents

### Namespaces

- [BearerVerifierBindings](modules/BearerVerifierBindings.md)
- [LOGGER](modules/LOGGER.md)
- [OASBindings](modules/OASBindings.md)
- [ProxyBuilderBindings](modules/ProxyBuilderBindings.md)
- [SFCoreBindings](modules/SFCoreBindings.md)
- [SwaggerAuthenticationBindings](modules/SwaggerAuthenticationBindings.md)
- [TenantUtilitiesBindings](modules/TenantUtilitiesBindings.md)

### Enumerations

- [AuthProvider](enums/AuthProvider.md)
- [AuthenticateErrorKeys](enums/AuthenticateErrorKeys.md)
- [BearerVerifierType](enums/BearerVerifierType.md)
- [ConfigKey](enums/ConfigKey.md)
- [Gender](enums/Gender.md)
- [HttpMethod](enums/HttpMethod.md)
- [LocaleKey](enums/LocaleKey.md)
- [RoleTypes](enums/RoleTypes.md)
- [STATUS\_CODE](enums/STATUS_CODE.md)
- [TenantStatus](enums/TenantStatus.md)
- [TenantUtilitiesErrorKeys](enums/TenantUtilitiesErrorKeys.md)
- [UserStatus](enums/UserStatus.md)

### Classes

- [AnyAdapter](classes/AnyAdapter.md)
- [AuthenticateSwaggerMiddlewareInterceptor](classes/AuthenticateSwaggerMiddlewareInterceptor.md)
- [BaseEntity](classes/BaseEntity.md)
- [BearerVerifierComponent](classes/BearerVerifierComponent.md)
- [BelongsToRestResolver](classes/BelongsToRestResolver.md)
- [CasbinSecureSequence](classes/CasbinSecureSequence.md)
- [CoreComponent](classes/CoreComponent.md)
- [CoreEntity](classes/CoreEntity.md)
- [CoreModel](classes/CoreModel.md)
- [DefaultSoftCrudRepository](classes/DefaultSoftCrudRepository.md)
- [DefaultTransactionalUserModifyRepository](classes/DefaultTransactionalUserModifyRepository.md)
- [DefaultUserModifyCrudRepository](classes/DefaultUserModifyCrudRepository.md)
- [FileExtensions](classes/FileExtensions.md)
- [HasManyRestResolver](classes/HasManyRestResolver.md)
- [HasOneRestResolver](classes/HasOneRestResolver.md)
- [HttpAuthenticationVerifierProvider](classes/HttpAuthenticationVerifierProvider.md)
- [LoggerExtensionComponent](classes/LoggerExtensionComponent.md)
- [ProxyBuilderComponent](classes/ProxyBuilderComponent.md)
- [RestServiceModifier](classes/RestServiceModifier.md)
- [RevokedToken](classes/RevokedToken.md)
- [RevokedTokenRepository](classes/RevokedTokenRepository.md)
- [SecureSequence](classes/SecureSequence.md)
- [ServiceSequence](classes/ServiceSequence.md)
- [SuccessResponse](classes/SuccessResponse.md)
- [SwaggerAuthenticationComponent](classes/SwaggerAuthenticationComponent.md)
- [TenantGuardService](classes/TenantGuardService.md)
- [TenantUtilitiesComponent](classes/TenantUtilitiesComponent.md)
- [UpsertResponse](classes/UpsertResponse.md)
- [UserModifiableEntity](classes/UserModifiableEntity.md)
- [ValueResponse](classes/ValueResponse.md)

### Interfaces

- [Adapter](interfaces/Adapter.md)
- [BearerVerifierConfig](interfaces/BearerVerifierConfig.md)
- [CoreConfig](interfaces/CoreConfig.md)
- [ExternalIdentifierEnabledEntity](interfaces/ExternalIdentifierEnabledEntity.md)
- [IAuthUserWithPermissions](interfaces/IAuthUserWithPermissions.md)
- [IBaseEntity](interfaces/IBaseEntity.md)
- [IBaseEntityConfig](interfaces/IBaseEntityConfig.md)
- [ICommand](interfaces/ICommand.md)
- [ICrudRepository](interfaces/ICrudRepository.md)
- [ILogger](interfaces/ILogger.md)
- [IRestResolver](interfaces/IRestResolver.md)
- [IServiceConfig](interfaces/IServiceConfig.md)
- [ITenantGuard](interfaces/ITenantGuard.md)
- [ITenantUtilitiesOptions](interfaces/ITenantUtilitiesOptions.md)
- [IUserModifiableEntity](interfaces/IUserModifiableEntity.md)
- [IUserModifiableEntityConfig](interfaces/IUserModifiableEntityConfig.md)
- [IUserPrefs](interfaces/IUserPrefs.md)
- [UserInToken](interfaces/UserInToken.md)

### Type Aliases

- [AbstractConstructor](modules.md#abstractconstructor)
- [AbstractConstructorWithGuard](modules.md#abstractconstructorwithguard)
- [CrudRestService](modules.md#crudrestservice)
- [CrudRestServiceModifier](modules.md#crudrestservicemodifier)
- [CrudServiceForModel](modules.md#crudserviceformodel)
- [EntityRestConfig](modules.md#entityrestconfig)
- [EntityWithTenantId](modules.md#entitywithtenantid)
- [HttpAuthenticationVerifier](modules.md#httpauthenticationverifier)
- [ISwaggerAuthenticationConfig](modules.md#iswaggerauthenticationconfig)
- [ModelConstructor](modules.md#modelconstructor)
- [ModifiedRestService](modules.md#modifiedrestservice)
- [OASPathDefinition](modules.md#oaspathdefinition)
- [OasHiddenApi](modules.md#oashiddenapi)
- [ProxyBuilderConfig](modules.md#proxybuilderconfig)
- [ResolvedMap](modules.md#resolvedmap)
- [ResolverWithMetadata](modules.md#resolverwithmetadata)
- [RestLinkerParams](modules.md#restlinkerparams)
- [RestOperationTemplate](modules.md#restoperationtemplate)
- [RestRelationConfig](modules.md#restrelationconfig)
- [RestRelationConfigWithClass](modules.md#restrelationconfigwithclass)
- [RestRelationConfigWithKey](modules.md#restrelationconfigwithkey)
- [RestRelationConfigWithModelClass](modules.md#restrelationconfigwithmodelclass)
- [RestResolverParams](modules.md#restresolverparams)
- [SecuritySchemeObjects](modules.md#securityschemeobjects)

### Variables

- [AuthCacheSourceName](modules.md#authcachesourcename)
- [BINDING\_PREFIX](modules.md#binding_prefix)
- [CONTENT\_TYPE](modules.md#content_type)
- [DisallowedRoles](modules.md#disallowedroles)
- [ErrorCodes](modules.md#errorcodes)
- [OPERATION\_SECURITY\_SPEC](modules.md#operation_security_spec)
- [OasKeyMap](modules.md#oaskeymap)
- [SECURITY\_SCHEME\_SPEC](modules.md#security_scheme_spec)
- [ServiceBuilderExtensionPoint](modules.md#servicebuilderextensionpoint)
- [TenantUtilitiesNamespace](modules.md#tenantutilitiesnamespace)
- [X\_TS\_TYPE](modules.md#x_ts_type)

### Functions

- [BaseEntityMixin](modules.md#baseentitymixin)
- [TenantGuardMixin](modules.md#tenantguardmixin)
- [UserModifiableEntityMixin](modules.md#usermodifiableentitymixin)
- [asRestResolver](modules.md#asrestresolver)
- [getAge](modules.md#getage)
- [getDOBFromAge](modules.md#getdobfromage)
- [getErrorString](modules.md#geterrorstring)
- [isConfigWithKey](modules.md#isconfigwithkey)
- [isConfigWithModelClass](modules.md#isconfigwithmodelclass)
- [isEntityRestConfig](modules.md#isentityrestconfig)
- [rateLimitKeyGen](modules.md#ratelimitkeygen)
- [rateLimitKeyGenPublic](modules.md#ratelimitkeygenpublic)
- [restProxyBuilder](modules.md#restproxybuilder)
- [restService](modules.md#restservice)
- [tenantGuard](modules.md#tenantguard)

## Type Aliases

### AbstractConstructor

Ƭ **AbstractConstructor**<`T`\>: (...`args`: `any`[]) => `T`

#### Type parameters

| Name |
| :------ |
| `T` |

#### Type declaration

• (`...args`)

##### Parameters

| Name | Type |
| :------ | :------ |
| `...args` | `any`[] |

#### Defined in

[packages/core/src/mixins/types.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/mixins/types.ts#L25)

___

### AbstractConstructorWithGuard

Ƭ **AbstractConstructorWithGuard**<`M`, `ID`\>: [`AbstractConstructor`](modules.md#abstractconstructor)<`WithTenantGuard`<`M`, `ID`\>\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends [`EntityWithTenantId`](modules.md#entitywithtenantid) |
| `ID` | `ID` |

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:101](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L101)

___

### CrudRestService

Ƭ **CrudRestService**<`T`, `S`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `S` | extends `Entity` = `T` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `count` | (`token`: `string`, `where?`: `Where`<`T`\> \| `string`) => `Promise`<`Count`\> |
| `create` | (`token`: `string`, `data`: `DataObject`<`T`\>) => `Promise`<`T`\> |
| `delete` | (`token`: `string`, `where?`: `Where`<`T`\> \| `string`) => `Promise`<`void`\> |
| `deleteById` | (`token`: `string`, `id`: `string`) => `Promise`<`void`\> |
| `find` | (`token`: `string`, `filter?`: `Filter`<`T`\> \| `string`) => `Promise`<`S`[]\> |
| `findById` | (`token`: `string`, `id`: `string`, `filter?`: `FilterExcludingWhere`<`T`\> \| `string`) => `Promise`<`S`\> |
| `replaceById` | (`token`: `string`, `id`: `string`, `data`: `DataObject`<`T`\>) => `Promise`<`void`\> |
| `update` | (`token`: `string`, `data`: `DataObject`<`T`\>, `where?`: `Where`<`T`\> \| `string`) => `Promise`<`Count`\> |
| `updateById` | (`token`: `string`, `id`: `string`, `data`: `DataObject`<`T`\>) => `Promise`<`void`\> |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L18)

___

### CrudRestServiceModifier

Ƭ **CrudRestServiceModifier**<`T`\>: (`service`: [`CrudRestService`](modules.md#crudrestservice)<`T`\>, `model`: [`ModelConstructor`](modules.md#modelconstructor)<`T`\>, `config`: [`RestRelationConfig`](modules.md#restrelationconfig)[]) => [`ModifiedRestService`](modules.md#modifiedrestservice)<`T`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |

#### Type declaration

▸ (`service`, `model`, `config`): [`ModifiedRestService`](modules.md#modifiedrestservice)<`T`\>

##### Parameters

| Name | Type |
| :------ | :------ |
| `service` | [`CrudRestService`](modules.md#crudrestservice)<`T`\> |
| `model` | [`ModelConstructor`](modules.md#modelconstructor)<`T`\> |
| `config` | [`RestRelationConfig`](modules.md#restrelationconfig)[] |

##### Returns

[`ModifiedRestService`](modules.md#modifiedrestservice)<`T`\>

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:81](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L81)

___

### CrudServiceForModel

Ƭ **CrudServiceForModel**<`T`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Model` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `count` | (`token`: `string`, `where?`: `Where`<`T`\>) => `Promise`<`Count`\> |
| `create` | (`token`: `string`, `data`: `DataObject`<`T`\>) => `Promise`<`T`\> |
| `find` | (`token`: `string`, `filter?`: `Filter`<`T`\>) => `Promise`<`T`[]\> |
| `update` | (`token`: `string`, `data`: `T`, `where?`: `Where`<`T`\>) => `Promise`<`Count`\> |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L42)

___

### EntityRestConfig

Ƭ **EntityRestConfig**: `Object`

The `EntityRestConfig` type defines the configuration options for a RESTful entity.

**`Property`**

The "model" property is a reference to the constructor function of the entity
model. It represents the data structure and behavior of the entity in your application.

**`Property`**

The `basePath` property is an optional string that represents the base
path for the REST API endpoints associated with the entity. It is used to define the URL prefix for
all the endpoints related to this entity.

**`Property`**

The `relations` property is an optional array of
`RestRelationConfig` objects. Each `RestRelationConfig` object represents a relation between the
current entity and another entity. It defines how the relation should be handled in the REST API.

**`Property`**

The `restOperations` property is an optional
array of `RestOperationTemplate` objects. These objects define the REST operations that can be
performed on the entity.

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `basePath?` | `string` | The `basePath?: string;` property in the `EntityRestConfig` type is an optional property that represents the base path for the REST API endpoints associated with the entity. It is used to define the URL prefix for all the endpoints related to this entity. |
| `model` | [`ModelConstructor`](modules.md#modelconstructor)<`Entity`\> | The `model` property in the `EntityRestConfig` type is used to specify the constructor function of the entity model. It represents the data structure and behavior of the entity in your application. |
| `relations?` | [`RestRelationConfig`](modules.md#restrelationconfig)[] | The `relations?: RestRelationConfig[];` property in the `EntityRestConfig` type is used to define the relations between the current entity and an entity of another microservice. |
| `restOperations?` | [`RestOperationTemplate`](modules.md#restoperationtemplate)[] | The `restOperations` property in the `EntityRestConfig` type is an optional array of `RestOperationTemplate` objects. These objects define the REST operations that can be performed on the entity. Each `RestOperationTemplate` object contains a `template` property that defines the details of a REST operation, such as the method, URL, headers, path, query, options, body, and response configuration. The `functions` property in the `RestOperationTemplate` object maps function names to an array of strings, where each string represents a specific argument for the request |

#### Defined in

[packages/core/src/components/proxy-builder/types.ts:42](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/types.ts#L42)

___

### EntityWithTenantId

Ƭ **EntityWithTenantId**: `Entity` & { `tenantId`: `string`  }

#### Defined in

[packages/core/src/components/tenant-utilities/types.ts:18](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/types.ts#L18)

___

### HttpAuthenticationVerifier

Ƭ **HttpAuthenticationVerifier**: (`username?`: `string`, `password?`: `string`) => `boolean`

#### Type declaration

▸ (`username?`, `password?`): `boolean`

##### Parameters

| Name | Type |
| :------ | :------ |
| `username?` | `string` |
| `password?` | `string` |

##### Returns

`boolean`

#### Defined in

[packages/core/src/components/swagger-authentication/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/types.ts#L5)

___

### ISwaggerAuthenticationConfig

Ƭ **ISwaggerAuthenticationConfig**: `Object`

#### Defined in

[packages/core/src/components/swagger-authentication/types.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/swagger-authentication/types.ts#L10)

___

### ModelConstructor

Ƭ **ModelConstructor**<`T`\>: () => `T` & { `definition`: `ModelDefinition` ; `modelName`: `string`  }

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:119](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L119)

___

### ModifiedRestService

Ƭ **ModifiedRestService**<`T`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `count` | (`where?`: `Where`<`T`\>, `token?`: `string`) => `Promise`<`Count`\> |
| `create` | (`data`: `DataObject`<`T`\>, `token?`: `string`) => `Promise`<`T`\> |
| `delete` | (`where?`: `Where`<`T`\>, `token?`: `string`) => `Promise`<`void`\> |
| `deleteById` | (`id`: `string`, `token?`: `string`) => `Promise`<`void`\> |
| `find` | (`filter?`: `Filter`<`T`\>, `token?`: `string`, `inclusionConfig?`: [`RestRelationConfig`](modules.md#restrelationconfig)) => `Promise`<`T`[]\> |
| `findById` | (`id`: `string`, `filter?`: `FilterExcludingWhere`<`T`\>, `token?`: `string`) => `Promise`<`T`\> |
| `replaceById` | (`id`: `string`, `data`: `DataObject`<`T`\>, `token?`: `string`) => `Promise`<`void`\> |
| `update` | (`data`: `DataObject`<`T`\>, `where?`: `Where`<`T`\>, `token?`: `string`) => `Promise`<`Count`\> |
| `updateById` | (`id`: `string`, `data`: `DataObject`<`T`\>, `token?`: `string`) => `Promise`<`void`\> |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:49](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L49)

___

### OASPathDefinition

Ƭ **OASPathDefinition**: `AnyObject`

#### Defined in

[packages/core/src/types.ts:14](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/types.ts#L14)

___

### OasHiddenApi

Ƭ **OasHiddenApi**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `httpMethod` | [`HttpMethod`](enums/HttpMethod.md) |
| `path` | `string` |

#### Defined in

[packages/core/src/keys.ts:25](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/keys.ts#L25)

___

### ProxyBuilderConfig

Ƭ **ProxyBuilderConfig**: { `baseUrl`: `string` ; `configs`: ([`EntityRestConfig`](modules.md#entityrestconfig) \| [`ModelConstructor`](modules.md#modelconstructor)<`Entity`\>)[]  }[]

#### Defined in

[packages/core/src/components/proxy-builder/types.ts:8](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/types.ts#L8)

___

### ResolvedMap

Ƭ **ResolvedMap**<`Parent`, `Child`\>: `Map`<`Child`[keyof `Child`] \| `Parent`[keyof `Parent`], `Child` \| `Child`[]\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `Parent` | extends `Entity` |
| `Child` | extends `Entity` |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:147](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L147)

___

### ResolverWithMetadata

Ƭ **ResolverWithMetadata**<`T`, `S`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity` |
| `S` | extends `Entity` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `metadata` | `RelationMetadata` |
| `resolver` | [`IRestResolver`](interfaces/IRestResolver.md)<`T`, `S`\> |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:152](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L152)

___

### RestLinkerParams

Ƭ **RestLinkerParams**<`Parent`, `Child`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `Parent` | extends `Entity` |
| `Child` | extends `Entity` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `parent` | `Parent` |
| `relationMetadata` | `RelationMetadata` |
| `resolvedDataMap` | [`ResolvedMap`](modules.md#resolvedmap)<`Parent`, `Child`\> |
| `token?` | `string` |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:140](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L140)

___

### RestOperationTemplate

Ƭ **RestOperationTemplate**: `Object`

The above type defines a template for a REST operation, including the method, URL, headers, path,
query, options, body, and response configuration.

**`Property`**

The `template` property is an object that defines the details of a REST
operation like method, url, headers, etc.

**`Property`**

The `functions` property is an object that maps function names to an array of
arguments for the request. Each of these arguments replaces a value in the `template` property that is
written between `{}` .

#### Type declaration

| Name | Type | Description |
| :------ | :------ | :------ |
| `functions` | { `[key: string]`: `string`[];  } | The `functions` property is an object that maps function names to an array of arguments for the request. Each of these arguments replaces a value in the `template` property that is written between `{}` |
| `template` | { `body?`: `string` \| `AnyObject` ; `fullResponse?`: `boolean` ; `headers?`: { `[key: string]`: `string` \| `undefined`; `Authorization?`: ``"{token}"`` \| `string` ; `content-type?`: ``"application/json"`` \| `string`  } ; `method`: ``"GET"`` \| ``"POST"`` \| ``"PUT"`` \| ``"PATCH"`` \| ``"DELETE"`` ; `options?`: `AnyObject` & { `maxRedirects?`: `number`  } ; `path?`: `AnyObject` ; `query?`: `AnyObject` ; `responsePath?`: `string` ; `url`: `string`  } | The `template` property is an object that defines the details of a REST operation like method, url, headers, etc |
| `template.body?` | `string` \| `AnyObject` | - |
| `template.fullResponse?` | `boolean` | - |
| `template.headers?` | { `[key: string]`: `string` \| `undefined`; `Authorization?`: ``"{token}"`` \| `string` ; `content-type?`: ``"application/json"`` \| `string`  } | - |
| `template.headers.Authorization?` | ``"{token}"`` \| `string` | - |
| `template.headers.content-type?` | ``"application/json"`` \| `string` | - |
| `template.method` | ``"GET"`` \| ``"POST"`` \| ``"PUT"`` \| ``"PATCH"`` \| ``"DELETE"`` | - |
| `template.options?` | `AnyObject` & { `maxRedirects?`: `number`  } | - |
| `template.path?` | `AnyObject` | - |
| `template.query?` | `AnyObject` | - |
| `template.responsePath?` | `string` | - |
| `template.url` | `string` | - |

#### Defined in

[packages/core/src/components/proxy-builder/types.ts:82](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/types.ts#L82)

___

### RestRelationConfig

Ƭ **RestRelationConfig**: { `disableStringify?`: `boolean` ; `name`: `string` ; `throughRelation?`: `string`  } & [`RestRelationConfigWithClass`](modules.md#restrelationconfigwithclass) \| [`RestRelationConfigWithKey`](modules.md#restrelationconfigwithkey) \| [`RestRelationConfigWithModelClass`](modules.md#restrelationconfigwithmodelclass)

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:87](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L87)

___

### RestRelationConfigWithClass

Ƭ **RestRelationConfigWithClass**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `serviceClass` | `Function` |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:100](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L100)

___

### RestRelationConfigWithKey

Ƭ **RestRelationConfigWithKey**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `serviceKey` | `string` |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:97](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L97)

___

### RestRelationConfigWithModelClass

Ƭ **RestRelationConfigWithModelClass**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `modelClass` | [`ModelConstructor`](modules.md#modelconstructor)<`Entity`\> |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:103](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L103)

___

### RestResolverParams

Ƭ **RestResolverParams**<`Parent`, `Child`\>: `Object`

#### Type parameters

| Name | Type |
| :------ | :------ |
| `Parent` | extends `Entity` |
| `Child` | extends `Entity` |

#### Type declaration

| Name | Type |
| :------ | :------ |
| `relationConfig` | [`RestRelationConfig`](modules.md#restrelationconfig) |
| `relationMetadata` | `RelationMetadata` |
| `results` | `Parent`[] |
| `scope?` | `Filter`<`Child`\> |
| `token?` | `string` |

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:132](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L132)

___

### SecuritySchemeObjects

Ƭ **SecuritySchemeObjects**: `Object`

#### Index signature

▪ [securityScheme: `string`]: `SecuritySchemeObject` \| `ReferenceObject`

#### Defined in

[packages/core/src/security-specs.ts:7](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/security-specs.ts#L7)

## Variables

### AuthCacheSourceName

• `Const` **AuthCacheSourceName**: ``"AuthCache"``

#### Defined in

[packages/core/src/components/bearer-verifier/types.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/bearer-verifier/types.ts#L5)

___

### BINDING\_PREFIX

• `Const` **BINDING\_PREFIX**: ``"sourceloop.services"``

#### Defined in

[packages/core/src/constants/globals.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/constants/globals.ts#L5)

___

### CONTENT\_TYPE

• `Const` **CONTENT\_TYPE**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `FORM_URLENCODED` | `string` |
| `JSON` | `string` |
| `TEXT` | `string` |
| `TEXT_HTML` | `string` |

#### Defined in

[packages/core/src/constants/content-type.constant.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/constants/content-type.constant.ts#L5)

___

### DisallowedRoles

• `Const` **DisallowedRoles**: [`RoleTypes`](enums/RoleTypes.md)[]

#### Defined in

[packages/core/src/enums/roles.enum.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/enums/roles.enum.ts#L10)

___

### ErrorCodes

• `Const` **ErrorCodes**: `Object`

#### Type declaration

| Name | Type |
| :------ | :------ |
| `400` | { `description`: `string` = 'The syntax of the request entity is incorrect.' } |
| `400.description` | `string` |
| `401` | { `description`: `string` = 'Invalid Credentials.' } |
| `401.description` | `string` |
| `404` | { `description`: `string` = 'The entity requested does not exist.' } |
| `404.description` | `string` |
| `422` | { `description`: `string` = 'The syntax of the request entity is incorrect' } |
| `422.description` | `string` |

#### Defined in

[packages/core/src/enums/status-codes.enum.ts:63](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/enums/status-codes.enum.ts#L63)

___

### OPERATION\_SECURITY\_SPEC

• `Const` **OPERATION\_SECURITY\_SPEC**: { `HTTPBearer`: `never`[] = [] }[]

#### Defined in

[packages/core/src/security-specs.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/security-specs.ts#L6)

___

### OasKeyMap

• `Const` **OasKeyMap**: { [key in HttpMethod]: string }

#### Defined in

[packages/core/src/enums/http-oas.enum.ts:13](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/enums/http-oas.enum.ts#L13)

___

### SECURITY\_SCHEME\_SPEC

• `Const` **SECURITY\_SCHEME\_SPEC**: [`SecuritySchemeObjects`](modules.md#securityschemeobjects)

#### Defined in

[packages/core/src/security-specs.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/security-specs.ts#L10)

___

### ServiceBuilderExtensionPoint

• `Const` **ServiceBuilderExtensionPoint**: `BindingKey`<[`ModifiedRestService`](modules.md#modifiedrestservice)<`never`\>\>

#### Defined in

[packages/core/src/components/proxy-builder/keys.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/keys.ts#L23)

___

### TenantUtilitiesNamespace

• `Const` **TenantUtilitiesNamespace**: ``"sourceloop.tenant.utilities"``

#### Defined in

[packages/core/src/components/tenant-utilities/keys.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/keys.ts#L5)

___

### X\_TS\_TYPE

• `Const` **X\_TS\_TYPE**: ``"x-ts-type"``

#### Defined in

[packages/core/src/constants/globals.ts:6](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/constants/globals.ts#L6)

## Functions

### BaseEntityMixin

▸ **BaseEntityMixin**<`T`, `S`\>(`base`, `config?`): typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IBaseEntity`](interfaces/IBaseEntity.md)\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> |
| `S` | extends `Constructor`<`T`\> \| [`AbstractConstructor`](modules.md#abstractconstructor)<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `base` | `S` |
| `config?` | [`IBaseEntityConfig`](interfaces/IBaseEntityConfig.md) |

#### Returns

typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IBaseEntity`](interfaces/IBaseEntity.md)\>

#### Defined in

[packages/core/src/mixins/base-entity.mixin.ts:5](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/mixins/base-entity.mixin.ts#L5)

___

### TenantGuardMixin

▸ **TenantGuardMixin**<`M`, `ID`, `Relations`, `S`\>(`superClass`): `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\> & [`AbstractConstructorWithGuard`](modules.md#abstractconstructorwithguard)<`M`, `ID`\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity`<`M`\> & { `tenantId`: `string`  } |
| `ID` | `ID` |
| `Relations` | extends `object` |
| `S` | extends [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `superClass` | `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\> |

#### Returns

`S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\> & [`AbstractConstructorWithGuard`](modules.md#abstractconstructorwithguard)<`M`, `ID`\>

#### Defined in

[packages/core/src/components/tenant-utilities/mixins/tenant-guard.mixin.ts:20](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/mixins/tenant-guard.mixin.ts#L20)

___

### UserModifiableEntityMixin

▸ **UserModifiableEntityMixin**<`T`, `S`\>(`base`, `config?`): typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IUserModifiableEntity`](interfaces/IUserModifiableEntity.md)\>

#### Type parameters

| Name | Type |
| :------ | :------ |
| `T` | extends `Entity`<`T`\> |
| `S` | extends `Constructor`<`T`\> \| [`AbstractConstructor`](modules.md#abstractconstructor)<`T`\> |

#### Parameters

| Name | Type |
| :------ | :------ |
| `base` | `S` |
| `config?` | [`IUserModifiableEntityConfig`](interfaces/IUserModifiableEntityConfig.md) |

#### Returns

typeof `base` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`IUserModifiableEntity`](interfaces/IUserModifiableEntity.md)\>

#### Defined in

[packages/core/src/mixins/user-modifiable-entity.mixin.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/mixins/user-modifiable-entity.mixin.ts#L10)

___

### asRestResolver

▸ **asRestResolver**(): `ClassDecorator`

#### Returns

`ClassDecorator`

#### Defined in

[packages/core/src/components/proxy-builder/constants.ts:150](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/constants.ts#L150)

___

### getAge

▸ **getAge**(`dob`): `number`

#### Parameters

| Name | Type |
| :------ | :------ |
| `dob` | `Date` |

#### Returns

`number`

#### Defined in

[packages/core/src/utils.ts:23](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/utils.ts#L23)

___

### getDOBFromAge

▸ **getDOBFromAge**(`age`): `Date`

#### Parameters

| Name | Type |
| :------ | :------ |
| `age` | `number` |

#### Returns

`Date`

#### Defined in

[packages/core/src/utils.ts:29](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/utils.ts#L29)

___

### getErrorString

▸ **getErrorString**(`error`): `any`

#### Parameters

| Name | Type |
| :------ | :------ |
| `error` | `any` |

#### Returns

`any`

#### Defined in

[packages/core/src/utils.ts:12](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/utils.ts#L12)

___

### isConfigWithKey

▸ **isConfigWithKey**(`config`): config is Object

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`RestRelationConfig`](modules.md#restrelationconfig) |

#### Returns

config is Object

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:107](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L107)

___

### isConfigWithModelClass

▸ **isConfigWithModelClass**(`config`): config is Object

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`RestRelationConfig`](modules.md#restrelationconfig) |

#### Returns

config is Object

#### Defined in

[packages/core/src/components/proxy-builder/services/types.ts:113](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/services/types.ts#L113)

___

### isEntityRestConfig

▸ **isEntityRestConfig**(`config`): config is EntityRestConfig

#### Parameters

| Name | Type |
| :------ | :------ |
| `config` | [`ModelConstructor`](modules.md#modelconstructor)<`Entity`\> \| [`EntityRestConfig`](modules.md#entityrestconfig) |

#### Returns

config is EntityRestConfig

#### Defined in

[packages/core/src/components/proxy-builder/types.ts:22](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/types.ts#L22)

___

### rateLimitKeyGen

▸ **rateLimitKeyGen**(`req`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `req` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Returns

`string`

#### Defined in

[packages/core/src/utils.ts:34](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/utils.ts#L34)

___

### rateLimitKeyGenPublic

▸ **rateLimitKeyGenPublic**(`req`): `string`

#### Parameters

| Name | Type |
| :------ | :------ |
| `req` | `Request`<`ParamsDictionary`, `any`, `any`, `ParsedQs`, `Record`<`string`, `any`\>\> |

#### Returns

`string`

#### Defined in

[packages/core/src/utils.ts:40](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/utils.ts#L40)

___

### restProxyBuilder

▸ **restProxyBuilder**(`basePath`): [`RestOperationTemplate`](modules.md#restoperationtemplate)[]

#### Parameters

| Name | Type |
| :------ | :------ |
| `basePath` | `string` |

#### Returns

[`RestOperationTemplate`](modules.md#restoperationtemplate)[]

#### Defined in

[packages/core/src/components/proxy-builder/constants.ts:10](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/constants.ts#L10)

___

### restService

▸ **restService**(`model`): (`target`: `Object`, `member`: `undefined` \| `string`, `methodDescriptorOrParameterIndex?`: `number` \| `TypedPropertyDescriptor`<`any`\>) => `void`

#### Parameters

| Name | Type |
| :------ | :------ |
| `model` | [`ModelConstructor`](modules.md#modelconstructor)<`Entity`\> |

#### Returns

`fn`

▸ (`target`, `member`, `methodDescriptorOrParameterIndex?`): `void`

A decorator to annotate method arguments for automatic injection
by LoopBack IoC container.

**`Example`**

Usage - Typescript:

```ts
class InfoController {
  @inject('authentication.user') public userName: string;

  constructor(@inject('application.name') public appName: string) {
  }
  // ...
}
```

Usage - JavaScript:

 - TODO(bajtos)

##### Parameters

| Name | Type |
| :------ | :------ |
| `target` | `Object` |
| `member` | `undefined` \| `string` |
| `methodDescriptorOrParameterIndex?` | `number` \| `TypedPropertyDescriptor`<`any`\> |

##### Returns

`void`

#### Defined in

[packages/core/src/components/proxy-builder/decorators/rest-proxy.decorator.ts:9](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/proxy-builder/decorators/rest-proxy.decorator.ts#L9)

___

### tenantGuard

▸ **tenantGuard**(): <M, ID, Relations, S\>(`constructor`: `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\>) => `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\>

This function returns a class decorator that adds a tenant guard mixin
to the given repository class.

#### Returns

`fn`

▸ <`M`, `ID`, `Relations`, `S`\>(`constructor`): `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\>

##### Type parameters

| Name | Type |
| :------ | :------ |
| `M` | extends `Entity`<`M`\> & { `tenantId`: `string`  } |
| `ID` | `ID` |
| `Relations` | extends `object` |
| `S` | extends [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\> |

##### Parameters

| Name | Type |
| :------ | :------ |
| `constructor` | `S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\> |

##### Returns

`S` & [`AbstractConstructor`](modules.md#abstractconstructor)<[`ICrudRepository`](interfaces/ICrudRepository.md)<`M`, `ID`, `Relations`\>\>

#### Defined in

[packages/core/src/components/tenant-utilities/decorators/tenant-guard.decorator.ts:11](https://github.com/sourcefuse/loopback4-microservice-catalog/blob/93a7f917/packages/core/src/components/tenant-utilities/decorators/tenant-guard.decorator.ts#L11)
