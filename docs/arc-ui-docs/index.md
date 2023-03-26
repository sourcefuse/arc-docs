# ARC React

This project aims to provide a react boilerplate with all basic configuration pre-configured. We are using [MUI](https://mui.com/material-ui/getting-started/overview/) as base library to extend the Theme module and create reuseable components.

## Directory Structure

```
src/
├── Assets
├── Components
├── Helpers
├── Hooks/
│   ├── useAuth.ts (Hook for auth related methods/properties)
│   ├── useConfig.ts (Hook for fetching runtime app config and parsing values)
│   ├── useAxios.ts (Hook for network calls)
│   ├── useMutation.ts (Hook for mutation network calls, provides data caching and state management )
│   └── useQuery.ts (Hook for Query network calls, provides data caching and state management)
├── Layouts (Reuseable page layouts , which will provide sub route config for accessing Pages)
├── Pages
├── Providers/
│   ├── theme (mui theme config)
│   ├── AuthProvider.ts (context provider for all auth activities)
│   ├── ErrorBoundary.ts
│   └── NotificationProvider.ts (provider for showing notifications)
└── Routes/
    ├── Routes.ts (contains route guards)
    └── layoutRouteConfig.ts (contains top level route mapping for layouts)
```

## How to use

The react app is pre configured with mui material theme , auth guards , notification provider , error boundary , routes , page layouts and many reuseable components inside the components directory . To Use the template, clone the repo , Add the [environment variables](#Inputs) to connect to ARC backend service.

## <a id="prereqs"></a> Pre-Requisites

- [node.js](https://nodejs.dev/download/)
- [npm](https://docs.npmjs.com/cli/v6/commands/npm-install)
- [Sourceloop Auth service](https://github.com/sourcefuse/loopback4-microservice-catalog)
- use [VS code](https://code.visualstudio.com/) for best development experience and install the following [extensions](https://github.com/sourcefuse/react-boilerplate-ts-ui/blob/main/.vscode/extensions.json) also

## <a id="scripts"></a> Scripts

| Script           | Description                                                                                |
| ---------------- | ------------------------------------------------------------------------------------------ |
| npm start        | Runs the app in the development mode                                                       |
| npm run config   | Generates config file from .env , this file is used for runtime configuration for env vars |
| npm run build    | Builds the app for production to the `build` folder.                                       |
| npm run lint     | Checks linting error in code                                                               |
| npm run lint:fix | Fix all auto-fixable lint errors                                                           |
| npm run format   | Format all files using prettier                                                            |

## Inputs

| Name                                                                             | Description                                                                   | Type      | Default | Required |
| -------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | --------- | ------- | :------: |
| <a name="CLIENT_ID"></a> `CLIENT_ID`                                             | Unique public Identifier for the app.                                         | `string`  | `""`    |   yes    |
| <a name="CLIENT_SECRET"></a> `CLIENT_SECRET`                                     | Secret key known only to the application server and the authorization server. | `string`  |         |   yes    |
| <a name="AUTH_API_BASE_URL"></a> `AUTH_API_BASE_URL`                             | Base URL of the authentication service.                                       | `string`  |         |   yes    |
| <a name="APP_API_BASE_URL"></a> `APP_API_BASE_URL`                               |                                                                               | `string`  |         |    no    |
| <a name="ENABLE_SESSION_TIMEOUT"></a> `ENABLE_SESSION_TIMEOUT`                   | Session timeout for idle timer                                                | `boolean` | "true"  |    no    |
| <a name="STORAGE_SESSION_TIMEKEY"></a> `STORAGE_SESSION_TIMEKEY`                 |                                                                               | `string`  |         |    no    |
| <a name="EXPIRY_TIME_IN_MINUTE"></a> `EXPIRY_TIME_IN_MINUTE`                     | Session expiry time                                                           | `number`  |         |    no    |
| <a name="WARNING_ALERT_TIMEOUT_IN_MINUTE"></a> `WARNING_ALERT_TIMEOUT_IN_MINUTE` | Session warning alert time                                                    | `number`  |         |    no    |
