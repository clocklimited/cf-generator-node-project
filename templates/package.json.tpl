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
    "depcheck": "depcheck --ignores-dirs=node_modules",
    "pretest": "pliers -a build && npm run lint",
    "test": "istanbul cover -x **/vendor/** test/runner.js",
    "posttest": (istanbul check-coverage --statements 75 --branches 50 --functions 70 --lines 70 && rm -rf coverage) || echo Look at 'coverage/lcov-report/index.html' to find out more",
    "prepare": "nave use 4.4.3 npm --registry http://npm.clockte.ch install && nave use 4.4.3 npm prune",
    "wrap": "npm shrinkwrap && pliers cleanShrinkwrap",
    "update-changelog": "update-changelog"
  },
  "dependencies": {
  },
  "devDependencies": {
    "cf-changelog": "^1.0.0",
    "depcheck": "^0.6.3",
    "eslint": "^2.1.0",
    "eslint-config-clock": "^1.0.2",
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
