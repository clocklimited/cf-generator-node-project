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
    "checkStyle": "jscs .",
    "wrap": "npm install && rm -rf npm-shrinkwrap.json; npm prune && npm install && npm shrinkwrap && pliers cleanShrinkwrap",
    "pretest": "pliers -a build && npm run-script lint && npm run-script checkStyle",
    "test": "istanbul cover test/test-runner.js",
    "posttest": "istanbul check-coverage && rm -rf coverage"
  },
  "dependencies": {
  },
  "devDependencies": {
    "glob": "4",
    "istanbul": "0",
    "jscs": "1",
    "jshint": "2",
    "mocha": "2",
    "node-notifier": "4",
    "pliers": "1",
    "pliers-clean-shrinkwrap": "1",
    "pliers-npm-security-check": "1"
  }
}
