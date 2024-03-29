
<!-- Generator: Widdershins v4.0.1 -->

<h1 id="feature-toggle-service">Feature Toggle Service v1.0.0</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

A service that provides feature toggle functionality

Base URLs:

* <a href="/">/</a>

# Authentication

- HTTP Authentication, scheme: bearer

<h1 id="feature-toggle-service-featurecontroller">FeatureController</h1>

## FeatureController.count

<a id="opIdFeatureController.count"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /features/count`

| Permissions |
| ------- |
| ViewFeature   |
| 1   |

<h3 id="featurecontroller.count-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|where|query|object|false|none|

> Example responses

> 200 Response

```json
{
  "count": 0
}
```

<h3 id="featurecontroller.count-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Feature model count|[loopback.Count](#schemaloopback.count)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.replaceById

<a id="opIdFeatureController.replaceById"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'PUT',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /features/{id}`

| Permissions |
| ------- |
| UpdateFeature   |
| 3   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}
```

<h3 id="featurecontroller.replacebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[Feature](#schemafeature)|false|none|

<h3 id="featurecontroller.replacebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Feature PUT success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.updateById

<a id="opIdFeatureController.updateById"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'PATCH',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /features/{id}`

| Permissions |
| ------- |
| UpdateFeature   |
| 3   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}
```

<h3 id="featurecontroller.updatebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[FeaturePartial](#schemafeaturepartial)|false|none|

<h3 id="featurecontroller.updatebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Feature PATCH success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.findById

<a id="opIdFeatureController.findById"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /features/{id}`

| Permissions |
| ------- |
| ViewFeature   |
| 1   |

<h3 id="featurecontroller.findbyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|filter|query|[features.Filter](#schemafeatures.filter)|false|none|

> Example responses

> 200 Response

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}
```

<h3 id="featurecontroller.findbyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Feature model instance|[FeatureWithRelations](#schemafeaturewithrelations)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.deleteById

<a id="opIdFeatureController.deleteById"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/features/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /features/{id}`

| Permissions |
| ------- |
| DeleteFeature   |
| 4   |

<h3 id="featurecontroller.deletebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="featurecontroller.deletebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Feature DELETE success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.create

<a id="opIdFeatureController.create"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /features`

| Permissions |
| ------- |
| CreateFeature   |
| 2   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}
```

<h3 id="featurecontroller.create-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[NewFeature](#schemanewfeature)|false|none|

> Example responses

> 200 Response

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}
```

<h3 id="featurecontroller.create-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Feature model instance|[Feature](#schemafeature)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.updateAll

<a id="opIdFeatureController.updateAll"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features',
{
  method: 'PATCH',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /features`

| Permissions |
| ------- |
| UpdateFeature   |
| 3   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}
```

<h3 id="featurecontroller.updateall-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|where|query|object|false|none|
|body|body|[FeaturePartial](#schemafeaturepartial)|false|none|

> Example responses

> 200 Response

```json
{
  "count": 0
}
```

<h3 id="featurecontroller.updateall-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Feature PATCH success count|[loopback.Count](#schemaloopback.count)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureController.find

<a id="opIdFeatureController.find"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/features',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /features`

| Permissions |
| ------- |
| ViewFeature   |
| 1   |

<h3 id="featurecontroller.find-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filter|query|[features.Filter1](#schemafeatures.filter1)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "deleted": true,
    "deletedOn": "2019-08-24T14:15:22Z",
    "deletedBy": "string",
    "createdOn": "2019-08-24T14:15:22Z",
    "modifiedOn": "2019-08-24T14:15:22Z",
    "createdBy": "string",
    "modifiedBy": "string",
    "id": "string",
    "name": "string",
    "key": "string",
    "description": "string",
    "defaultValue": true
  }
]
```

<h3 id="featurecontroller.find-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Array of Feature model instances|Inline|

<h3 id="featurecontroller.find-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[FeatureWithRelations](#schemafeaturewithrelations)]|false|none|[The features table (tsType: FeatureWithRelations, schemaOptions: { includeRelations: true })]|
|» FeatureWithRelations|[FeatureWithRelations](#schemafeaturewithrelations)|false|none|The features table (tsType: FeatureWithRelations, schemaOptions: { includeRelations: true })|
|»» deleted|boolean|false|none|none|
|»» deletedOn|string(date-time)¦null|false|none|none|
|»» deletedBy|string¦null|false|none|none|
|»» createdOn|string(date-time)|false|none|none|
|»» modifiedOn|string(date-time)|false|none|none|
|»» createdBy|string|false|none|none|
|»» modifiedBy|string|false|none|none|
|»» id|string|false|none|none|
|»» name|string|true|none|none|
|»» key|string|true|none|none|
|»» description|string|false|none|none|
|»» defaultValue|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

<h1 id="feature-toggle-service-featuretogglecontroller">FeatureToggleController</h1>

## FeatureToggleController.count

<a id="opIdFeatureToggleController.count"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /featuretoggles/count`

| Permissions |
| ------- |
| ViewFeatureToggle   |
| 9   |

<h3 id="featuretogglecontroller.count-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|where|query|object|false|none|

> Example responses

> 200 Response

```json
{
  "count": 0
}
```

<h3 id="featuretogglecontroller.count-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|FeatureToggle model count|[loopback.Count](#schemaloopback.count)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.replaceById

<a id="opIdFeatureToggleController.replaceById"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'PUT',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /featuretoggles/{id}`

| Permissions |
| ------- |
| UpdateFeatureToggle   |
| 11   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}
```

<h3 id="featuretogglecontroller.replacebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[FeatureToggle](#schemafeaturetoggle)|false|none|

<h3 id="featuretogglecontroller.replacebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|FeatureToggle PUT success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.updateById

<a id="opIdFeatureToggleController.updateById"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'PATCH',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /featuretoggles/{id}`

| Permissions |
| ------- |
| UpdateFeatureToggle   |
| 11   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}
```

<h3 id="featuretogglecontroller.updatebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[FeatureTogglePartial](#schemafeaturetogglepartial)|false|none|

<h3 id="featuretogglecontroller.updatebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|FeatureToggle PATCH success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.findById

<a id="opIdFeatureToggleController.findById"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /featuretoggles/{id}`

| Permissions |
| ------- |
| ViewFeatureToggle   |
| 9   |

<h3 id="featuretogglecontroller.findbyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|filter|query|[feature_toggles.Filter](#schemafeature_toggles.filter)|false|none|

> Example responses

> 200 Response

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}
```

<h3 id="featuretogglecontroller.findbyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|FeatureToggle model instance|[FeatureToggleWithRelations](#schemafeaturetogglewithrelations)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.deleteById

<a id="opIdFeatureToggleController.deleteById"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /featuretoggles/{id}`

| Permissions |
| ------- |
| DeleteFeatureToggle   |
| 12   |

<h3 id="featuretogglecontroller.deletebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="featuretogglecontroller.deletebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|FeatureToggle DELETE success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.create

<a id="opIdFeatureToggleController.create"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /featuretoggles`

| Permissions |
| ------- |
| CreateFeatureToggle   |
| 10   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}
```

<h3 id="featuretogglecontroller.create-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[NewFeatureToggle](#schemanewfeaturetoggle)|false|none|

> Example responses

> 200 Response

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}
```

<h3 id="featuretogglecontroller.create-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|FeatureToggle model instance|[FeatureToggle](#schemafeaturetoggle)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.updateAll

<a id="opIdFeatureToggleController.updateAll"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles',
{
  method: 'PATCH',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /featuretoggles`

| Permissions |
| ------- |
| UpdateFeatureToggle   |
| 11   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}
```

<h3 id="featuretogglecontroller.updateall-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|where|query|object|false|none|
|body|body|[FeatureTogglePartial](#schemafeaturetogglepartial)|false|none|

> Example responses

> 200 Response

```json
{
  "count": 0
}
```

<h3 id="featuretogglecontroller.updateall-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|FeatureToggle PATCH success count|[loopback.Count](#schemaloopback.count)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## FeatureToggleController.find

<a id="opIdFeatureToggleController.find"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/featuretoggles',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /featuretoggles`

| Permissions |
| ------- |
| ViewFeatureToggle   |
| 9   |

<h3 id="featuretogglecontroller.find-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filter|query|[feature_toggles.Filter1](#schemafeature_toggles.filter1)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "deleted": true,
    "deletedOn": "2019-08-24T14:15:22Z",
    "deletedBy": "string",
    "createdOn": "2019-08-24T14:15:22Z",
    "modifiedOn": "2019-08-24T14:15:22Z",
    "createdBy": "string",
    "modifiedBy": "string",
    "id": "string",
    "featureKey": "string",
    "strategyKey": "string",
    "strategyEntityId": "string",
    "status": true
  }
]
```

<h3 id="featuretogglecontroller.find-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Array of FeatureToggle model instances|Inline|

<h3 id="featuretogglecontroller.find-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[FeatureToggleWithRelations](#schemafeaturetogglewithrelations)]|false|none|[The feature-toggle table (tsType: FeatureToggleWithRelations, schemaOptions: { includeRelations: true })]|
|» FeatureToggleWithRelations|[FeatureToggleWithRelations](#schemafeaturetogglewithrelations)|false|none|The feature-toggle table (tsType: FeatureToggleWithRelations, schemaOptions: { includeRelations: true })|
|»» deleted|boolean|false|none|none|
|»» deletedOn|string(date-time)¦null|false|none|none|
|»» deletedBy|string¦null|false|none|none|
|»» createdOn|string(date-time)|false|none|none|
|»» modifiedOn|string(date-time)|false|none|none|
|»» createdBy|string|false|none|none|
|»» modifiedBy|string|false|none|none|
|»» id|string|false|none|none|
|»» featureKey|string|false|none|none|
|»» strategyKey|string|false|none|none|
|»» strategyEntityId|string|false|none|none|
|»» status|boolean|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

<h1 id="feature-toggle-service-strategycontroller">StrategyController</h1>

## StrategyController.count

<a id="opIdStrategyController.count"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/count',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /strategies/count`

| Permissions |
| ------- |
| ViewStrategy   |
| 5   |

<h3 id="strategycontroller.count-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|where|query|object|false|none|

> Example responses

> 200 Response

```json
{
  "count": 0
}
```

<h3 id="strategycontroller.count-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Strategy model count|[loopback.Count](#schemaloopback.count)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.replaceById

<a id="opIdStrategyController.replaceById"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'PUT',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'PUT',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PUT /strategies/{id}`

| Permissions |
| ------- |
| UpdateStrategy   |
| 7   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}
```

<h3 id="strategycontroller.replacebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[Strategy](#schemastrategy)|false|none|

<h3 id="strategycontroller.replacebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Strategy PUT success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.updateById

<a id="opIdStrategyController.updateById"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
};
const headers = {
  'Content-Type':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'PATCH',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /strategies/{id}`

| Permissions |
| ------- |
| UpdateStrategy   |
| 7   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}
```

<h3 id="strategycontroller.updatebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|body|body|[StrategyPartial](#schemastrategypartial)|false|none|

<h3 id="strategycontroller.updatebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Strategy PATCH success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.findById

<a id="opIdStrategyController.findById"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /strategies/{id}`

| Permissions |
| ------- |
| ViewStrategy   |
| 5   |

<h3 id="strategycontroller.findbyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|
|filter|query|[strategies.Filter](#schemastrategies.filter)|false|none|

> Example responses

> 200 Response

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}
```

<h3 id="strategycontroller.findbyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Strategy model instance|[StrategyWithRelations](#schemastrategywithrelations)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.deleteById

<a id="opIdStrategyController.deleteById"></a>

> Code samples

```javascript

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies/{id}',
{
  method: 'DELETE',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`DELETE /strategies/{id}`

| Permissions |
| ------- |
| DeleteStrategy   |
| 8   |

<h3 id="strategycontroller.deletebyid-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|id|path|string|true|none|

<h3 id="strategycontroller.deletebyid-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|204|[No Content](https://tools.ietf.org/html/rfc7231#section-6.3.5)|Strategy DELETE success|None|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.create

<a id="opIdStrategyController.create"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies',
{
  method: 'POST',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies',
{
  method: 'POST',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`POST /strategies`

| Permissions |
| ------- |
| CreateStrategy   |
| 6   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}
```

<h3 id="strategycontroller.create-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[NewStrategy](#schemanewstrategy)|false|none|

> Example responses

> 200 Response

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}
```

<h3 id="strategycontroller.create-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Strategy model instance|[Strategy](#schemastrategy)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.updateAll

<a id="opIdStrategyController.updateAll"></a>

> Code samples

```javascript
const inputBody = '{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}';
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies',
{
  method: 'PATCH',
  body: inputBody,
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');
const inputBody = {
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
};
const headers = {
  'Content-Type':'application/json',
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies',
{
  method: 'PATCH',
  body: JSON.stringify(inputBody),
  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`PATCH /strategies`

| Permissions |
| ------- |
| UpdateStrategy   |
| 7   |

> Body parameter

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}
```

<h3 id="strategycontroller.updateall-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|where|query|object|false|none|
|body|body|[StrategyPartial](#schemastrategypartial)|false|none|

> Example responses

> 200 Response

```json
{
  "count": 0
}
```

<h3 id="strategycontroller.updateall-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Strategy PATCH success count|[loopback.Count](#schemaloopback.count)|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

## StrategyController.find

<a id="opIdStrategyController.find"></a>

> Code samples

```javascript

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

```javascript--nodejs
const fetch = require('node-fetch');

const headers = {
  'Accept':'application/json',
  'Authorization':'Bearer {access-token}'
};

fetch('/strategies',
{
  method: 'GET',

  headers: headers
})
.then(function(res) {
    return res.json();
}).then(function(body) {
    console.log(body);
});

```

`GET /strategies`

| Permissions |
| ------- |
| ViewStrategy   |
| 5   |

<h3 id="strategycontroller.find-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|filter|query|[strategies.Filter1](#schemastrategies.filter1)|false|none|

> Example responses

> 200 Response

```json
[
  {
    "deleted": true,
    "deletedOn": "2019-08-24T14:15:22Z",
    "deletedBy": "string",
    "createdOn": "2019-08-24T14:15:22Z",
    "modifiedOn": "2019-08-24T14:15:22Z",
    "createdBy": "string",
    "modifiedBy": "string",
    "id": "string",
    "name": "string",
    "key": "string",
    "priority": 0
  }
]
```

<h3 id="strategycontroller.find-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Array of Strategy model instances|Inline|

<h3 id="strategycontroller.find-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[[StrategyWithRelations](#schemastrategywithrelations)]|false|none|[The strategies table (tsType: StrategyWithRelations, schemaOptions: { includeRelations: true })]|
|» StrategyWithRelations|[StrategyWithRelations](#schemastrategywithrelations)|false|none|The strategies table (tsType: StrategyWithRelations, schemaOptions: { includeRelations: true })|
|»» deleted|boolean|false|none|none|
|»» deletedOn|string(date-time)¦null|false|none|none|
|»» deletedBy|string¦null|false|none|none|
|»» createdOn|string(date-time)|false|none|none|
|»» modifiedOn|string(date-time)|false|none|none|
|»» createdBy|string|false|none|none|
|»» modifiedBy|string|false|none|none|
|»» id|string|false|none|none|
|»» name|string|true|none|none|
|»» key|string|true|none|none|
|»» priority|number|false|none|none|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
HTTPBearer
</aside>

# Schemas

<h2 id="tocS_Feature">Feature</h2>
<!-- backwards compatibility -->
<a id="schemafeature"></a>
<a id="schema_Feature"></a>
<a id="tocSfeature"></a>
<a id="tocsfeature"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}

```

Feature

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|true|none|none|
|key|string|true|none|none|
|description|string|false|none|none|
|defaultValue|boolean|false|none|none|

<h2 id="tocS_NewFeature">NewFeature</h2>
<!-- backwards compatibility -->
<a id="schemanewfeature"></a>
<a id="schema_NewFeature"></a>
<a id="tocSnewfeature"></a>
<a id="tocsnewfeature"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}

```

NewFeature

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|true|none|none|
|key|string|true|none|none|
|description|string|false|none|none|
|defaultValue|boolean|false|none|none|

<h2 id="tocS_FeatureWithRelations">FeatureWithRelations</h2>
<!-- backwards compatibility -->
<a id="schemafeaturewithrelations"></a>
<a id="schema_FeatureWithRelations"></a>
<a id="tocSfeaturewithrelations"></a>
<a id="tocsfeaturewithrelations"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}

```

FeatureWithRelations

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|true|none|none|
|key|string|true|none|none|
|description|string|false|none|none|
|defaultValue|boolean|false|none|none|

<h2 id="tocS_FeaturePartial">FeaturePartial</h2>
<!-- backwards compatibility -->
<a id="schemafeaturepartial"></a>
<a id="schema_FeaturePartial"></a>
<a id="tocSfeaturepartial"></a>
<a id="tocsfeaturepartial"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "description": "string",
  "defaultValue": true
}

```

FeaturePartial

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|false|none|none|
|key|string|false|none|none|
|description|string|false|none|none|
|defaultValue|boolean|false|none|none|

<h2 id="tocS_FeatureToggle">FeatureToggle</h2>
<!-- backwards compatibility -->
<a id="schemafeaturetoggle"></a>
<a id="schema_FeatureToggle"></a>
<a id="tocSfeaturetoggle"></a>
<a id="tocsfeaturetoggle"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}

```

FeatureToggle

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|featureKey|string|false|none|none|
|strategyKey|string|false|none|none|
|strategyEntityId|string|false|none|none|
|status|boolean|false|none|none|

<h2 id="tocS_NewFeatureToggle">NewFeatureToggle</h2>
<!-- backwards compatibility -->
<a id="schemanewfeaturetoggle"></a>
<a id="schema_NewFeatureToggle"></a>
<a id="tocSnewfeaturetoggle"></a>
<a id="tocsnewfeaturetoggle"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}

```

NewFeatureToggle

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|featureKey|string|false|none|none|
|strategyKey|string|false|none|none|
|strategyEntityId|string|false|none|none|
|status|boolean|false|none|none|

<h2 id="tocS_FeatureToggleWithRelations">FeatureToggleWithRelations</h2>
<!-- backwards compatibility -->
<a id="schemafeaturetogglewithrelations"></a>
<a id="schema_FeatureToggleWithRelations"></a>
<a id="tocSfeaturetogglewithrelations"></a>
<a id="tocsfeaturetogglewithrelations"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}

```

FeatureToggleWithRelations

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|featureKey|string|false|none|none|
|strategyKey|string|false|none|none|
|strategyEntityId|string|false|none|none|
|status|boolean|false|none|none|

<h2 id="tocS_FeatureTogglePartial">FeatureTogglePartial</h2>
<!-- backwards compatibility -->
<a id="schemafeaturetogglepartial"></a>
<a id="schema_FeatureTogglePartial"></a>
<a id="tocSfeaturetogglepartial"></a>
<a id="tocsfeaturetogglepartial"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "featureKey": "string",
  "strategyKey": "string",
  "strategyEntityId": "string",
  "status": true
}

```

FeatureTogglePartial

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|featureKey|string|false|none|none|
|strategyKey|string|false|none|none|
|strategyEntityId|string|false|none|none|
|status|boolean|false|none|none|

<h2 id="tocS_Strategy">Strategy</h2>
<!-- backwards compatibility -->
<a id="schemastrategy"></a>
<a id="schema_Strategy"></a>
<a id="tocSstrategy"></a>
<a id="tocsstrategy"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}

```

Strategy

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|true|none|none|
|key|string|true|none|none|
|priority|number|false|none|none|

<h2 id="tocS_NewStrategy">NewStrategy</h2>
<!-- backwards compatibility -->
<a id="schemanewstrategy"></a>
<a id="schema_NewStrategy"></a>
<a id="tocSnewstrategy"></a>
<a id="tocsnewstrategy"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}

```

NewStrategy

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|true|none|none|
|key|string|true|none|none|
|priority|number|false|none|none|

<h2 id="tocS_StrategyWithRelations">StrategyWithRelations</h2>
<!-- backwards compatibility -->
<a id="schemastrategywithrelations"></a>
<a id="schema_StrategyWithRelations"></a>
<a id="tocSstrategywithrelations"></a>
<a id="tocsstrategywithrelations"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}

```

StrategyWithRelations

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|true|none|none|
|key|string|true|none|none|
|priority|number|false|none|none|

<h2 id="tocS_StrategyPartial">StrategyPartial</h2>
<!-- backwards compatibility -->
<a id="schemastrategypartial"></a>
<a id="schema_StrategyPartial"></a>
<a id="tocSstrategypartial"></a>
<a id="tocsstrategypartial"></a>

```json
{
  "deleted": true,
  "deletedOn": "2019-08-24T14:15:22Z",
  "deletedBy": "string",
  "createdOn": "2019-08-24T14:15:22Z",
  "modifiedOn": "2019-08-24T14:15:22Z",
  "createdBy": "string",
  "modifiedBy": "string",
  "id": "string",
  "name": "string",
  "key": "string",
  "priority": 0
}

```

StrategyPartial

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|deleted|boolean|false|none|none|
|deletedOn|string(date-time)¦null|false|none|none|
|deletedBy|string¦null|false|none|none|
|createdOn|string(date-time)|false|none|none|
|modifiedOn|string(date-time)|false|none|none|
|createdBy|string|false|none|none|
|modifiedBy|string|false|none|none|
|id|string|false|none|none|
|name|string|false|none|none|
|key|string|false|none|none|
|priority|number|false|none|none|

<h2 id="tocS_loopback.Count">loopback.Count</h2>
<!-- backwards compatibility -->
<a id="schemaloopback.count"></a>
<a id="schema_loopback.Count"></a>
<a id="tocSloopback.count"></a>
<a id="tocsloopback.count"></a>

```json
{
  "count": 0
}

```

loopback.Count

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|count|number|false|none|none|

<h2 id="tocS_features.Filter">features.Filter</h2>
<!-- backwards compatibility -->
<a id="schemafeatures.filter"></a>
<a id="schema_features.Filter"></a>
<a id="tocSfeatures.filter"></a>
<a id="tocsfeatures.filter"></a>

```json
{
  "offset": 0,
  "limit": 100,
  "skip": 0,
  "order": "string",
  "fields": {
    "deleted": true,
    "deletedOn": true,
    "deletedBy": true,
    "createdOn": true,
    "modifiedOn": true,
    "createdBy": true,
    "modifiedBy": true,
    "id": true,
    "name": true,
    "key": true,
    "description": true,
    "defaultValue": true
  }
}

```

features.Filter

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|offset|integer|false|none|none|
|limit|integer|false|none|none|
|skip|integer|false|none|none|
|order|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|fields|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» deleted|boolean|false|none|none|
|»» deletedOn|boolean|false|none|none|
|»» deletedBy|boolean|false|none|none|
|»» createdOn|boolean|false|none|none|
|»» modifiedOn|boolean|false|none|none|
|»» createdBy|boolean|false|none|none|
|»» modifiedBy|boolean|false|none|none|
|»» id|boolean|false|none|none|
|»» name|boolean|false|none|none|
|»» key|boolean|false|none|none|
|»» description|boolean|false|none|none|
|»» defaultValue|boolean|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

<h2 id="tocS_features.Filter1">features.Filter1</h2>
<!-- backwards compatibility -->
<a id="schemafeatures.filter1"></a>
<a id="schema_features.Filter1"></a>
<a id="tocSfeatures.filter1"></a>
<a id="tocsfeatures.filter1"></a>

```json
{
  "offset": 0,
  "limit": 100,
  "skip": 0,
  "order": "string",
  "where": {},
  "fields": {
    "deleted": true,
    "deletedOn": true,
    "deletedBy": true,
    "createdOn": true,
    "modifiedOn": true,
    "createdBy": true,
    "modifiedBy": true,
    "id": true,
    "name": true,
    "key": true,
    "description": true,
    "defaultValue": true
  }
}

```

features.Filter

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|offset|integer|false|none|none|
|limit|integer|false|none|none|
|skip|integer|false|none|none|
|order|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|where|object|false|none|none|
|fields|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» deleted|boolean|false|none|none|
|»» deletedOn|boolean|false|none|none|
|»» deletedBy|boolean|false|none|none|
|»» createdOn|boolean|false|none|none|
|»» modifiedOn|boolean|false|none|none|
|»» createdBy|boolean|false|none|none|
|»» modifiedBy|boolean|false|none|none|
|»» id|boolean|false|none|none|
|»» name|boolean|false|none|none|
|»» key|boolean|false|none|none|
|»» description|boolean|false|none|none|
|»» defaultValue|boolean|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

<h2 id="tocS_feature_toggles.Filter">feature_toggles.Filter</h2>
<!-- backwards compatibility -->
<a id="schemafeature_toggles.filter"></a>
<a id="schema_feature_toggles.Filter"></a>
<a id="tocSfeature_toggles.filter"></a>
<a id="tocsfeature_toggles.filter"></a>

```json
{
  "offset": 0,
  "limit": 100,
  "skip": 0,
  "order": "string",
  "fields": {
    "deleted": true,
    "deletedOn": true,
    "deletedBy": true,
    "createdOn": true,
    "modifiedOn": true,
    "createdBy": true,
    "modifiedBy": true,
    "id": true,
    "featureKey": true,
    "strategyKey": true,
    "strategyEntityId": true,
    "status": true
  }
}

```

feature_toggles.Filter

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|offset|integer|false|none|none|
|limit|integer|false|none|none|
|skip|integer|false|none|none|
|order|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|fields|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» deleted|boolean|false|none|none|
|»» deletedOn|boolean|false|none|none|
|»» deletedBy|boolean|false|none|none|
|»» createdOn|boolean|false|none|none|
|»» modifiedOn|boolean|false|none|none|
|»» createdBy|boolean|false|none|none|
|»» modifiedBy|boolean|false|none|none|
|»» id|boolean|false|none|none|
|»» featureKey|boolean|false|none|none|
|»» strategyKey|boolean|false|none|none|
|»» strategyEntityId|boolean|false|none|none|
|»» status|boolean|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

<h2 id="tocS_feature_toggles.Filter1">feature_toggles.Filter1</h2>
<!-- backwards compatibility -->
<a id="schemafeature_toggles.filter1"></a>
<a id="schema_feature_toggles.Filter1"></a>
<a id="tocSfeature_toggles.filter1"></a>
<a id="tocsfeature_toggles.filter1"></a>

```json
{
  "offset": 0,
  "limit": 100,
  "skip": 0,
  "order": "string",
  "where": {},
  "fields": {
    "deleted": true,
    "deletedOn": true,
    "deletedBy": true,
    "createdOn": true,
    "modifiedOn": true,
    "createdBy": true,
    "modifiedBy": true,
    "id": true,
    "featureKey": true,
    "strategyKey": true,
    "strategyEntityId": true,
    "status": true
  }
}

```

feature_toggles.Filter

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|offset|integer|false|none|none|
|limit|integer|false|none|none|
|skip|integer|false|none|none|
|order|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|where|object|false|none|none|
|fields|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» deleted|boolean|false|none|none|
|»» deletedOn|boolean|false|none|none|
|»» deletedBy|boolean|false|none|none|
|»» createdOn|boolean|false|none|none|
|»» modifiedOn|boolean|false|none|none|
|»» createdBy|boolean|false|none|none|
|»» modifiedBy|boolean|false|none|none|
|»» id|boolean|false|none|none|
|»» featureKey|boolean|false|none|none|
|»» strategyKey|boolean|false|none|none|
|»» strategyEntityId|boolean|false|none|none|
|»» status|boolean|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

<h2 id="tocS_strategies.Filter">strategies.Filter</h2>
<!-- backwards compatibility -->
<a id="schemastrategies.filter"></a>
<a id="schema_strategies.Filter"></a>
<a id="tocSstrategies.filter"></a>
<a id="tocsstrategies.filter"></a>

```json
{
  "offset": 0,
  "limit": 100,
  "skip": 0,
  "order": "string",
  "fields": {
    "deleted": true,
    "deletedOn": true,
    "deletedBy": true,
    "createdOn": true,
    "modifiedOn": true,
    "createdBy": true,
    "modifiedBy": true,
    "id": true,
    "name": true,
    "key": true,
    "priority": true
  }
}

```

strategies.Filter

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|offset|integer|false|none|none|
|limit|integer|false|none|none|
|skip|integer|false|none|none|
|order|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|fields|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» deleted|boolean|false|none|none|
|»» deletedOn|boolean|false|none|none|
|»» deletedBy|boolean|false|none|none|
|»» createdOn|boolean|false|none|none|
|»» modifiedOn|boolean|false|none|none|
|»» createdBy|boolean|false|none|none|
|»» modifiedBy|boolean|false|none|none|
|»» id|boolean|false|none|none|
|»» name|boolean|false|none|none|
|»» key|boolean|false|none|none|
|»» priority|boolean|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

<h2 id="tocS_strategies.Filter1">strategies.Filter1</h2>
<!-- backwards compatibility -->
<a id="schemastrategies.filter1"></a>
<a id="schema_strategies.Filter1"></a>
<a id="tocSstrategies.filter1"></a>
<a id="tocsstrategies.filter1"></a>

```json
{
  "offset": 0,
  "limit": 100,
  "skip": 0,
  "order": "string",
  "where": {},
  "fields": {
    "deleted": true,
    "deletedOn": true,
    "deletedBy": true,
    "createdOn": true,
    "modifiedOn": true,
    "createdBy": true,
    "modifiedBy": true,
    "id": true,
    "name": true,
    "key": true,
    "priority": true
  }
}

```

strategies.Filter

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|offset|integer|false|none|none|
|limit|integer|false|none|none|
|skip|integer|false|none|none|
|order|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|

continued

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|where|object|false|none|none|
|fields|any|false|none|none|

oneOf

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|object|false|none|none|
|»» deleted|boolean|false|none|none|
|»» deletedOn|boolean|false|none|none|
|»» deletedBy|boolean|false|none|none|
|»» createdOn|boolean|false|none|none|
|»» modifiedOn|boolean|false|none|none|
|»» createdBy|boolean|false|none|none|
|»» modifiedBy|boolean|false|none|none|
|»» id|boolean|false|none|none|
|»» name|boolean|false|none|none|
|»» key|boolean|false|none|none|
|»» priority|boolean|false|none|none|

xor

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|[string]|false|none|none|
