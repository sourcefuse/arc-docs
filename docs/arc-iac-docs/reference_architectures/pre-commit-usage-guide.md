# Running Pre-commit Hooks for Repository Maintenance

## Overview

Pre-commit hooks are scripts or actions that run before a commit is made in a version control system like Git. They allow you to enforce certain standards, checks, or tests on your code before it gets committed. Here's how you can set up pre-commit hooks specifically for Terraform using the popular tool pre-commit.

## Available Pre-commit Hooks

### 1. [yamllint](https://github.com/adrienverge/yamllint)

- **Purpose**: Lint YAML files to enforce coding standards.
- **Example**: Enforces a maximum line length of 200 characters in YAML files.

### 2. [pre-commit-hooks](https://github.com/pre-commit/pre-commit-hooks)

- **Purpose**: Provides a collection of commonly used pre-commit hooks.
- **Examples**:
  - `check-yaml`: Ensures YAML files are well-formed.
  - `check-merge-conflict`: Checks for merge conflict markers.
  - `trailing-whitespace`: Removes trailing whitespaces.
  - `end-of-file-fixer`: Ensures files end with a newline.

### 3. [pre-commit-terraform](https://github.com/antonbabenko/pre-commit-terraform)

- **Purpose**: Manages Terraform-specific pre-commit hooks.
- **Examples**:
  - `terraform_validate`: Validates Terraform files.
  - `terraform_tflint`: Lints Terraform files.
  - `terraform_fmt`: Formats Terraform files recursively.
  - `terraform_docs`: Updates Terraform documentation.

## Installation and Usage

1. Ensure the `.pre-commit-config.yaml` file is present in the root of your repository.

2. Install `pre-commit` using the following terminal command:

    ```bash
    pre-commit install
    ```

3. With `pre-commit` installed, the defined hooks will run automatically before each commit.

4. After making necessary changes to YAML, Terraform files, or Terraform docs, use the following commands:

    ```bash
    git add .
    git commit -m "Your commit message"
    ```

5. The pre-commit hooks will execute, identifying any linting or formatting issues.

6. If the hooks suggest changes, address them and repeat steps 4 and 5 until no issues are reported.

## Importance of Pre-commit Hooks

- **Consistency**: Ensures consistent coding style across all contributors.
- **Automated Checks**: Identifies issues early in the development process, preventing them from reaching the repository.
- **Documentation Maintenance**: Keeps Terraform documentation up-to-date automatically.

By integrating these pre-commit hooks into your workflow, you enhance the overall code quality and maintain a clean and standardized codebase.
