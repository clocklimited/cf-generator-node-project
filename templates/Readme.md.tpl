# <%= title %>

<%= description %>

## Setup

Install dependencies

```
npm install
```

## Run

All project processes can be started using the following:

```
npm start
```

## Linting

Linting is done using [standard](https://github.com/feross/standard).

To run the inter do:

```
npm run qa:lint
```

There are [plugins](https://github.com/feross/standard#are-there-text-editor-plugins) available for several editors.

## Testing

Runs all the automated QA tools and the test runner (**test/runner.js**)
which looks for all *.test.js files in the projects and runs them.

This can be run using:

```
npm test
```

## Changelog

You can create and update a markdown `changelog.md` for your project from your
git commits using:

```
npm run update-changelog
```

## License
Licensed under the [Clock License](https://github.com/clocklimited/ClockLicense)
