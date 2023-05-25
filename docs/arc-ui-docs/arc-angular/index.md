# [ARC Angular](https://github.com/sourcefuse/angular-boilerplate)

[![Version](https://img.shields.io/badge/@angular/core-v14-brightgreen)](https://www.npmjs.com/package/@angular/cli/v/14.0.0)

<!-- DOCUMENTATION -->

## Description

This boilerplate uses multiple projects in one Angular environment to improve code reusability,maintainability and customization. This structure can also help increase productivity, reduce risks, and improve the quality of application.
The multiple applications or parts of applications that share common functionality, using multiple
projects can help you avoid duplicating code. You can create a shared library project and use it across all the projects. This approach can help you maintain consistency and reduce code duplication.

## Usage

#### Step 1: Clone the boilerplate project repository to your local machine

```sh
git clone https://github.com/sourcefuse/angular-boilerplate
```

#### Step 2: Install the project dependencies by running the following command

```sh
npm install
```

After this, it will take a few minutes to set everything up, once that is done, you will see a folder structure generated like below:

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

As can be seen above, scaffold has initialized and set up a lot, such as:

1. GitHub PR template inside `.github`
2. Conventional commits enablement using commitizen (`.cz-config.js`), commitlint (`commitlint-config.js`)
   and husky for githooks.
3. `.gitignore` for ignoring files from source code. Important for secure coding and keeping the repo clean
   on SCM (git)
4. `package.json` and `package-lock.json` for npm to work.
5. The folder named `projects`: Projects will hold the multi application pattern and will always be
   completely independent

#### The Structure is main project folder

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

## Projects

### Purpose of the Projects folder boilerplate have

- Boilerplate use Multi project to avoid duplicate code and easy maintainance this can be used where
  we have to maintain multiple projects that have something in common like a user portal and admin portal
  Here Boilerplate use "Projects" folder typically serves as a centralized location to organize and store project-related files and resources.
- Boilerplate allows users to Generate new applications at same workspace with following command:

```sh
  ng generate application <application-name>
```

1. Arc:

- This boilerplate arc project is a project set up that can be easily altered to create new projects.
  The user is able to use in the original project, its foundation, and its structure to set up a new one without changing the original.

2. Arc-Lib

- A arc-lib shared library can include components, services, pipes, directives, and other modules that can be used by other projects in the workspace. By using a shared library, we avoid duplicating code and functionality across multiple projects, which can save time and effort.

For further reference you can refer [here](https://github.com/sourcefuse/angular-boilerplate/blob/master/projects/arc-lib/README.md)

#### Step 3: Setup of Starting the Server

- By Default boilerplate giving `defaultProject` as `arc` in the `angular.json` you can do further changes as per your Project requirment so that if you directly do `ng serve` your project run by default.

```typescript
"defaultProject": "arc",
```

#### Step 4: Running Server

```sh
ng serve
```

You'll see a message saying Server is running at `http://localhost:4200/` Navigate to this URL. The application will automatically reload if you change any of the source files.

## Build the Application

To build the project. The build artifacts will be stored in the `dist/` directory.

```sh
ng build
```

## Running unit tests

Run `ng test` to execute the unit tests via [Karma](https://karma-runner.github.io).

## Running end-to-end tests

Run `ng e2e` to execute the end-to-end tests via a platform of your choice. To use this command, you need to first add a package that implements end-to-end testing capabilities.

## Further help

To get more help on the Angular CLI use `ng help` or go check out the [Angular CLI Overview and Command Reference](https://angular.io/cli) page.
