{
  "name": "<%= platform %>",
  "description": "<%= description %>",
  "main": "app",
  "organization": "<%= organization %>",
  "author": "<%= organization %>",
  "version": "0.0.0",
  "licence": "Clock Open",
  "private": true,
  "engines": {
    "node": ">=<%= nodeVersion %>",
    "npm": "=<%= npmVersion %>"
  },
  "scripts": {
    "start": "pliers -a go",
    "build": "npm-run-all build:*",
    "build:pliers": "pliers build -a",
    "qa:inspect": "jsinspect .",
    "qa:depcheck": "depcheck --ignores-dirs=node_modules",
    "qa:test": "istanbul cover -x **/vendor/** mocha",
    "qa:lint": "eslint .",
    "test": "npm-run-all --parallel qa:*",
    "pretest": "npm run build",
    "posttest": "(istanbul check-coverage --statements 75 --branches 50 --functions 70 --lines 70 && rm -rf coverage) || echo Look at 'coverage/lcov-report/index.html' to find out more",
    "prepare": "nave use <%= nodeVersion %> npm install && nave use <%= nodeVersion %> npm prune",
  },
  "dependencies": {
  },
  "devDependencies": {
    "depcheck": "^0.6.4",
    "eslint": "^2.13.1",
    "eslint-config-clock": "^1.0.2",
    "eslint-config-standard": "^5.3.5",
    "eslint-plugin-standard": "^1.3.1",
    "glob": "^5.0.14",
    "istanbul": "^0.3.20",
    "jsinspect": "^0.7.0",
    "mocha": "^2.3.2",
    "npm-run-all": "^2.3.0",
    "pliers": "^1.2.1",
    "pliers-clean-shrinkwrap": "^1.0.1"
  }
}
