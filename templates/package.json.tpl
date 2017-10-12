{
  "name": "<%= platform %>",
  "description": "<%= description %>",
  "main": "app",
  "organization": "<%= organization %>",
  "author": "<%= organization %>",
  "version": "0.0.0",
  "license": "ISC",
  "engines": {
    "node": ">=<%= nodeVersion %>",
    "npm": "=<%= npmVersion %>"
  },
  "scripts": {
    "start": "node app",
    "build": "npm-run-all build:*",
    "build:app": "echo Build steps go here",
    "qa:inspect": "jsinspect .",
    "qa:test": "jest",
    "qa:lint": "eslint -f unix .",
    "test": "npm-run-all --parallel qa:*",
    "pretest": "npm run build"
  },
  "dependencies": {},
  "devDependencies": {
    "eslint": "^4.8.0",
    "eslint-config-standard": "^10.2.1",
    "eslint-plugin-import": "^2.7.0",
    "eslint-plugin-node": "^5.2.0",
    "eslint-plugin-promise": "^3.5.0",
    "eslint-plugin-standard": "^3.0.1",
    "jest": "^21.2.1",
    "jsinspect": "^0.12.7",
    "npm-run-all": "^4.1.1"
  }
}
