{
  "name": "<%= platform %>",
  "description": "<%= description %>",
  "main": "app",
  "organization": "<%= organization %>",
  "author": "<%= organization %>",
  "version": "0.0.0",
  "licence": "Clock Open",
  "private": true,
  "scripts": {
    "start": "pliers -a go",
    "lint": "eslint -f unix .",
    "inspect": "jsinspect .",
    "depcheck": "depcheck --ignores=eslint*",
    "pretest": "pliers -a build && npm run lint && npm run inspect && npm run depcheck",
    "test": "istanbul cover test/runner.js",
    "posttest": "(istanbul check-coverage --statements 60 --branches 60 --functions 100 --lines 60 && rm -rf coverage) || echo Look at 'coverage/lcov-report/index.html' to find out more",
    "prepare": "nave use 0.10.40 npm --registry http://npm.clockte.ch install && nave use 0.10.40 npm prune",
    "wrap": "npm shrinkwrap && pliers cleanShrinkwrap",
    "update-changelog": "update-changelog"
  },
  "dependencies": {
  },
  "devDependencies": {
    "cf-changelog": "^1.0.0",
    "depcheck": "^0.4.7",
    "eslint": "^2.1.0",
    "eslint-config-clock": "^1.0.1",
    "eslint-config-standard": "^5.1.0",
    "eslint-plugin-standard": "^1.3.1",
    "glob": "^5.0.14",
    "istanbul": "^0.3.20",
    "jsinspect": "^0.7.0",
    "mocha": "^2.3.2",
    "mockdate": "^1.0.3",
    "node-notifier": "^4.2.3",
    "pliers": "^1.2.1",
    "pliers-clean-shrinkwrap": "^1.0.1"
  }
}
