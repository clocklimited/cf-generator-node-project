# Generator: Node Project

## Installation

```
yarn global add clocklimited/cf-generator-node-project
```

## Usage

```
generate-node-project [target path]
```

You will be prompted for required data, then your new blank project will exist at whatever you gave as `[target path]`.

## When to use this generator

- you need a blank node environment for a client/internal project. Perhaps a CLI or a daemon.

## When _not_ to use this generator

- you want to author a node module (this is for "projects", use [cf-skeleton](https://github.com/clocklimited/cf-skeleton))
- you need a server (use [cf-generator-http-server](https://github.com/clocklimited/cf-generator-http-server))
- you need a site with stylus, jade or browser js (use [cf-generator-static-server](https://github.com/clocklimited/cf-generator-static-server))

## What you get

All of the "boilerplate" to get a Clock node project set up, including:

- our standard test setup
- misc project files (including `LICENSE`, `package.json` and `Readme.md`)
-- misc dotfiles (including `.gitignore`, `.eslint` and `.jsinspect`)

## Linting

Linting is done using eslint with [standard rules](https://github.com/feross/standard).

To run the inter do:

```
yarn qa:lint
```
