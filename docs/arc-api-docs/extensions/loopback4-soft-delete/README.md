<a href="https://sourcefuse.github.io/arc-docs/arc-api-docs" target="_blank"><img src="https://github.com/sourcefuse/loopback4-microservice-catalog/blob/master/docs/assets/logo-dark-bg.png?raw=true" alt="ARC By SourceFuse logo" title="ARC By SourceFuse" align="right" width="150" /></a>

# [loopback4-soft-delete](https://github.com/sourcefuse/loopback4-soft-delete)

<p align="left">
<a href="https://www.npmjs.com/package/loopback4-soft-delete">
<img src="https://img.shields.io/npm/v/loopback4-soft-delete.svg" alt="npm version" />
</a>
<a href="https://github.com/sourcefuse/loopback4-soft-delete/graphs/contributors" target="_blank">
<img alt="GitHub contributors" src="https://img.shields.io/github/contributors/sourcefuse/loopback4-soft-delete">
</a>
<a href="https://www.npmjs.com/package/loopback4-soft-delete" target="_blank">
<img alt="downloads" src="https://img.shields.io/npm/dw/loopback4-soft-delete.svg">
</a>
<a href="https://github.com/sourcefuse/loopback4-soft-delete/blob/master/LICENSE">
<img src="https://img.shields.io/github/license/sourcefuse/loopback4-soft-delete.svg" alt="License" />
</a>
<a href="https://loopback.io/" target="_blank">
<img alt="Powered By LoopBack 4" src="https://img.shields.io/badge/Powered%20by-LoopBack 4-brightgreen" />
</a>
</p>


## Install

```sh
npm install loopback4-soft-delete
```

## Quick Starter

For a quick starter guide, you can refer to our [loopback 4 starter](https://github.com/sourcefuse/loopback4-starter) application which utilizes this package for soft-deletes in a multi-tenant application.

## Usage

The package exports following classes and mixins:

1. [SoftDeleteEntity](#softdeleteentity) - To add required soft delete props in the model.
2. [SoftCrudRepository](#softcrudrepository) - Class providing soft crud capabilitiies (to be used in place of `DefaultCrudRepository`).
3. [SoftCrudRepositoryMixin](#softcrudrepositorymixin) - Mixin accepting any respository that extends the DefaultCrudRepository to add soft delete functionality to. Can be used as a wrapper for `DefaultCrudRepository`, `DefaultTransactionalRepository` etc.
4. [SoftDeleteEntityMixin](#softdeleteentitymixin)
5. [DefaultTransactionSoftCrudRepository](#defaulttransactionsoftcrudrepository-deprecated) (Deprecated) - Class providing soft crud capabilitiies. To be used in place of `DefaultTransactionalRepository`.
6. [SequelizeSoftCrudRepository](#sequelizesoftcrudrepository) - Class providing soft crud capabilitiies for [@loopback/sequelize](https://www.npmjs.com/package/@loopback/sequelize) package. To be used in place of `SequelizeCrudRepository`.

Following are more details on the usage of above artifcats:

### SoftDeleteEntity

An abstract base class for all models which require soft delete feature.
This class is a wrapper over Entity class from [@loopback/repository](https://github.com/strongloop/loopback-next/tree/master/packages/repository) adding three attributes to the model class for handling soft-delete, namely, deleted, deletedOn, deletedBy.
The column names needed to be there in DB within that table are - 'deleted', 'deleted_on', 'deleted_by'.
If you are using auto-migration of loopback 4, then, you may not need to do anything specific to add this column.
If not, then please add these columns to the DB table.

### SequelizeSoftCrudRepository

An abstract base class providing soft delete capabilities for projects using [@loopback/sequelize](https://www.npmjs.com/package/@loopback/sequelize) package.
All the other workings are similar to [SoftCrudRepository](#softcrudrepository), except it's imported using directory import syntax from `loopback4-soft-delete/sequelize`.

### SoftCrudRepository

An abstract base class for all repositories which require soft delete feature.
This class is going to be the one which handles soft delete operations and ensures soft deleted entries are not returned in responses, However if there is a need to query soft deleted entries as well, there is an options to achieve that and you can use findAll() in place of find() , findOneIncludeSoftDelete() in place of findOne() and findByIdIncludeSoftDelete() in place of findById(), these will give you the responses including soft deleted entries.
This class is a wrapper over DefaultCrudRepository class from [@loopback/repository](https://github.com/strongloop/loopback-next/tree/master/packages/repository).

### DefaultTransactionSoftCrudRepository (Deprecated)

> Note: `DefaultTransactionSoftCrudRepository` is deprecated in favour of [SoftCrudRepositoryMixin](#softcrudrepositorymixin) and will be removed in future releases.

An abstract base class similar to [SoftCrudRepository](#softcrudrepository) but with transaction support.

This class is a wrapper over `DefaultTransactionalRepository` class from [@loopback/repository](https://github.com/strongloop/loopback-next/tree/master/packages/repository).

In order to use this extension in your application, please follow below steps.

1. Extend models with SoftDeleteEntity class replacing Entity. Like below:

```ts
import {model, property} from '@loopback/repository';
import {SoftDeleteEntity} from 'loopback4-soft-delete';

@model({
  name: 'users',
})
export class User extends SoftDeleteEntity {
  @property({
    type: 'number',
    id: true,
  })
  id?: number;

  // .... More properties
}
```

2. Extend repositories with SoftCrudRepository class replacing DefaultCrudRepository. Like below:

```ts
import {Getter, inject} from '@loopback/core';
import {SoftCrudRepository} from 'loopback4-soft-delete';
import {AuthenticationBindings, IAuthUser} from 'loopback4-authentication';

import {PgdbDataSource} from '../datasources';
import {User, UserRelations} from '../models';

export class UserRepository extends SoftCrudRepository<
  User,
  typeof User.prototype.id,
  UserRelations
> {
  constructor(
    @inject('datasources.pgdb') dataSource: PgdbDataSource,
    @inject.getter(AuthenticationBindings.CURRENT_USER, {optional: true})
    protected readonly getCurrentUser: Getter<IAuthUser | undefined>,
  ) {
    super(User, dataSource, getCurrentUser);
  }
}
```

3. For transaction support, use the `SoftCrudRepositoryMixin` and wrap it around `DefaultTransactionalRepository`. Like below:

```ts
import {Getter, inject} from '@loopback/core';
import {SoftCrudRepository} from 'loopback4-soft-delete';
import {AuthenticationBindings, IAuthUser} from 'loopback4-authentication';

import {PgdbDataSource} from '../datasources';
import {User, UserRelations} from '../models';

export class UserRepository extends SoftCrudRepositoryMixin<
  User,
  typeof User.prototype.id,
  UserRelations
>(DefaultTransactionalRepository) {
  constructor(
    @inject('datasources.pgdb') dataSource: PgdbDataSource,
    @inject.getter(AuthenticationBindings.CURRENT_USER, {optional: true})
    protected readonly getCurrentUser: Getter<IAuthUser | undefined>,
  ) {
    super(User, dataSource, getCurrentUser);
  }
}
```

## Mixins Usage

The package also provides the following mixins which can be used for soft delete functionality:

### SoftDeleteEntityMixin

This mixin adds the soft delete properties to your model. The properties added are represented by the [IBaseEntity](#ibaseentity) interface:

There is also an option to provide config for the `@property` decorator for all these properties.

Usage of `SoftDeleteEntityMixin` is as follows:

```ts
class Item extends Entity {
  @property({
    type: 'number',
    id: true,
    generated: true,
  })
  id?: number;

  @property({
    type: 'string',
    required: true,
  })
  name: string;

  constructor(data?: Partial<Item>) {
    super(data);
  }
}

@model()
export class ItemSoftDelete extends SoftDeleteEntityMixin(Item, {
  deletedBy: {
    name: 'deleted_by_userid',
  },
}) {}
```

#### IBaseEntity

The soft deleted properties added by [SoftDeleteEntityMixin](#softdeleteentitymixin) are represented by `IBaseEntity` interface.

```ts
interface IBaseEntity {
  deleted?: boolean;
  deletedOn?: Date;
  deletedBy?: string;
}
```

### SoftCrudRepositoryMixin

You can make use of this mixin to get the soft delete functionality for `DefaultCrudRepository` or any respository that extends the `DefaultCrudRepository`. You need to extend your repository with this mixin and provide DefaultCrudRepository (or any repository that extends DefaultCrudRepository) as input. This means that this same mixin can also be used to provide soft delete functionality for DefaultTransactionSoftCrudRepository (as DefaultTransactionSoftCrudRepository extends DefaultCrudRepository). You will have to inject the getter for IAuthUser in the contructor of your repository.

#### Example:

```ts
import {Constructor, Getter, inject} from '@loopback/core';
import {DefaultCrudRepository} from '@loopback/repository';
import {AuthenticationBindings, IAuthUser} from 'loopback4-authentication';
import {SoftCrudRepositoryMixin} from 'loopback4-soft-delete';
import {TestDataSource} from '../datasources';
import {ItemSoftDelete, ItemSoftDeleteRelations} from '../models';

export class ItemRepository extends SoftCrudRepositoryMixin<
  ItemSoftDelete,
  typeof ItemSoftDelete.prototype.id,
  Constructor<
    DefaultCrudRepository<
      ItemSoftDelete,
      typeof ItemSoftDelete.prototype.id,
      ItemSoftDeleteRelations
    >
  >,
  ItemSoftDeleteRelations
>(DefaultCrudRepository) {
  constructor(
    @inject('datasources.test') dataSource: TestDataSource,
    @inject.getter(AuthenticationBindings.CURRENT_USER)
    public getCurrentUser: Getter<IAuthUser>,
  ) {
    super(ItemSoftDelete, dataSource);
  }
}
```

## Additional Repository Methods

Following are some additional methods that you can use when working with repositories in your application, either by extending the base repositories provided or by using the [SoftCrudRepositoryMixin](#softcrudrepositorymixin):

1. `findAll` - This method is similar to `find`, but it returns entries including soft deleted ones.
2. `deleteHard` - This method is used to perform a hard delete on a specified entity.
3. `deleteByIdHard` - This method is used to perform a hard delete of an entity based on the provided ID.
4. `findByIdIncludeSoftDelete` - This method is similar to `findById`, but it returns the entity even if it is soft deleted.
5. `deleteAllHard` - This method is used to perform a hard delete of multiple entities based on a specified condition.
6. `findOneIncludeSoftDelete` - This method is similar to `findOne`, but it returns a single entity even if it is soft deleted.
7. `countAll` - This method is similar to `count`, but it returns the total count of all entities including soft deleted ones.

### deletedBy

Whenever any entry is deleted using deleteById, delete and deleteAll repository methods, it also sets deletedBy column with a value with user id whoever is logged in currently. Hence it uses a Getter function of IUser type. However, if you want to use some other attribute of user model other than id, you can do it by overriding deletedByIdKey. Here is an example.

```ts
import {Getter, inject} from '@loopback/core';
import {SoftCrudRepository, IUser} from 'loopback4-soft-delete';
import {AuthenticationBindings} from 'loopback4-authentication';

import {PgdbDataSource} from '../datasources';
import {User, UserRelations} from '../models';

export class UserRepository extends SoftCrudRepository<
  User,
  typeof User.prototype.id,
  UserRelations
> {
  constructor(
    @inject('datasources.pgdb') dataSource: PgdbDataSource,
    @inject.getter(AuthenticationBindings.CURRENT_USER, {optional: true})
    protected readonly getCurrentUser: Getter<User | undefined>,
  ) {
    super(User, dataSource, getCurrentUser);
  }
}
```

Model class for custom identifier case. Notice the `getIdentifier() method` and `IUser` interface implemented.

```ts
@model()
class User extends SoftDeleteEntity implements IUser {
  @property({
    id: true,
  })
  id: string;

  @property()
  username: string;

  getIdentifier() {
    return this.username;
  }

  constructor(data?: Partial<User>) {
    super(data);
  }
}
```

## License

[MIT](https://github.com/sourcefuse/loopback4-soft-delete/blob/master/LICENSE)
