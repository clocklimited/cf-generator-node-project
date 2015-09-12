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
    "wrap": "npm shrinkwrap && pliers cleanShrinkwrap",
    "pretest": "pliers -a build && npm run lint",
    "test": "istanbul cover test/runner.js",
    "posttest": "istanbul check-coverage && rm -rf coverage"
  },
  "dependencies": {
  },
  "devDependencies": {
    "eslint": "^1.4.1",
    "eslint-config-clock": "^1.0.0",
    "eslint-config-standard": "^4.3.2",
    "eslint-plugin-standard": "^1.3.0",
    "glob": "^5.0.14",
    "istanbul": "^0.3.17",
    "mocha": "^2.3.2",
    "node-notifier": "^4.2.3",
    "pliers": "^1.2.1",
    "pliers-clean-shrinkwrap": "^1.0.1"
  }
}
