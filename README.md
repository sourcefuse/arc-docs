# ARC Docs

This repository contains documentation in the form of Markdown files for the ARC API (Sourceloop), API IaC and ARC UI.

## Getting Started

[Mkdocs](https://www.mkdocs.org/) and its [material](https://squidfunk.github.io/mkdocs-material/getting-started/) theme is used for this repo to generate the static site in gh-pages branch.
To get started with contributing to this repository, you will need to install the following Python packages in your system:

```sh
pip install mkdocs mkdocs-material
pip install mkdocs-techdocs-core
pip install mkdocs-include-markdown-plugin
pip install mkdocs-awesome-pages-plugin
```

Please note that running these commands will require Python and pip to be installed on your system.

Once you have these packages installed, you can run the following command to check things locally before contributing:

```sh
mkdocs serve
```

This will start a local server at `http://localhost:8000/` where you can preview the documentation.

## Navigation

We use the `mkdocs-awesome-pages-plugin` to organize our documentation as it provides more features than default mkdocs nav options. To configure navigation for a particular section, please create/modify the `.pages.yml` file in that folder and add the appropriate navigation links.

For more information on configuring navigation with `mkdocs-awesome-pages-plugin`, please refer to the [official documentation](https://github.com/lukasgeiter/mkdocs-awesome-pages-plugin#navigation).
