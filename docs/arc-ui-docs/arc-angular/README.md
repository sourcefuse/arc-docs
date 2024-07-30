# [ARC Angular](https://github.com/sourcefuse/angular-boilerplate)

[![Version](https://img.shields.io/badge/@angular/core-v14-brightgreen)](https://www.npmjs.com/package/@angular/cli/v/14.0.0)

<!-- DOCUMENTATION -->

## Description

This boilerplate uses multiple projects in single Angular workspace, which helps the users to develop shareable libraries, and for enterprises to use a "monorepo" development style, with a single repository and global configuration for all Angular projects. This boilerplate can also help in increasing productivity, reduce risks, and improve the quality of application.Duplication and redundant code can be avoided by using boilerplate approach.

## Usage

### Step 1: Clone the boilerplate project repository to your local machine

```sh
git clone https://github.com/sourcefuse/angular-boilerplate
```

### Step 2: Install the project dependencies by running the following command

```sh
npm install
```

After this, it will take a few minutes to set everything up, once that is done, you will see a folder structure generated like the following:-

```
BOILER-PLATE
├── .github
├── .husky
├── projects
├── .czferc.js
├── .npmrc
├── .cz-config.js
├── .gitignore
├── commitlint.config.js
├── CODE_OF_CONDUCT.md
├── package-lock.json
├── package.json
├── README.md
└── tsconfig.json
```

Some predefined settings are initialised:-

1. A GitHub PR template is created inside: `.github`
2. Conventional commits are enabled using commitizen (`.cz-config.js`), commitlint (`commitlint-config.js`)
   and husky for githooks.
3. `.gitignore` for ignoring files from source code. Important for secure coding and keeping the repo clean
   on SCM (git)
4. `package.json` and `package-lock.json` for npm to work.
5. The folder named `projects`: Projects will hold the multi application pattern and will always be
   completely independent.

#### Projects

##### Structure

```
PROJECTS
├── arc
├── arc-lib
│   └── src
│          └──lib
│            ├── assets
│            ├── components
│            ├── core
│            └── theme
├── (...other files)
```

##### Purpose

- As stated above, the boilerplate uses Multi-projects pattern to avoid duplication and is easy to maintain.
  Here Boilerplate use "Projects" folder, which serves as a centralized location to organize and store project-related files and resources. For example:- An application can have multiple user portal :- admin-portal and super-admin-portal. In that case, the structure of the "Projects" folder can look like the following:-

  ```
  PROJECTS
  ├── admin-portal
  ├── super-admin-portal
  ├── shared-lib
  │   └── src
  │          └──lib
  │            ├── assets
  │            ├── components
  │            ├── core
  │            └── theme
  ├── (...other files)
  ```

- Boilerplate allows users to Generate new applications at same workspace by using the following command:

```sh
  ng generate application <application-name>
```

1. Arc:

- This refers to the different applications inside single workspace sharing code.

2. Arc-Lib

- This refers to the shared library which can include components, services, pipes, directives, and other modules that are shared among the applications in the workspace. By using a shared library, we avoid duplicating and using redundant code across, which can save time and effort.

For further reference you can refer [Here](projects/arc-lib/README.md)

### Step 3: Setup the application to run

- By default, boilerplate refers to `arc` as a `defaultProject` in the `angular.json`. One can modify it according to the project requirements.

```typescript
"defaultProject": "arc",
```

### Step 4: Running Server

```sh
ng serve
```

You'll see a message saying Server is running at `http://localhost:4200/` Navigate to this URL. The application will automatically reload if you change any of the source files.

## Build the Application

To build the project, run the following command:-

```sh
ng build
```

The build artifacts will be stored in the `dist/` directory.

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.

## References

1. https://angular.io/guide/file-structure
