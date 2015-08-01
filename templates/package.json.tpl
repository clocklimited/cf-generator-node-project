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
    "lint": "jshint .",
    "checkStyle": "jscs -v -r unix .",
    "wrap": "npm install && rm -rf npm-shrinkwrap.json; npm prune && npm install && npm shrinkwrap && pliers cleanShrinkwrap",
    "pretest": "pliers -a build && npm run-script lint && npm run-script checkStyle",
    "test": "istanbul cover test/test-runner.js",
    "posttest": "istanbul check-coverage && rm -rf coverage"
  },
  "dependencies": {
  },
  "devDependencies": {
    "glob": "^5.0.14",
    "istanbul": "^0.3.17",
    "jscs": "^2.0.0",
    "jshint": "^2.8.0",
    "mocha": "^2.2.5",
    "node-notifier": "^4.2.3",
    "pliers": "^1.2.1",
    "pliers-clean-shrinkwrap": "1",
    "pliers-npm-security-check": "1"
  }
}
