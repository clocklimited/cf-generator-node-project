module.exports = NodeProjectGenerator

var kickoff = require('kickoff')
  , Generator = kickoff.Generator
  , generate = kickoff.generate
  , extend = require('lodash.assign')
  , slugg = require('slugg')

function required(value) {
  return !!value
}

function NodeProjectGenerator() {
  Generator.call(this)
}

NodeProjectGenerator.prototype = Object.create(Generator.prototype)

NodeProjectGenerator.prototype.createConfig = function (userInput) {
  var config =
    { year: (new Date()).getFullYear()
    , projectSlug: slugg(userInput.projectName)
    }
  return extend({}, userInput, config)
}

NodeProjectGenerator.prototype.prompts =
  [ { name: 'projectName'
    , message: 'Name this project'
    , validate: required
    }
  , { name: 'projectDescription'
    , message: 'Describe this project'
    , validate: required
    }
  , { name: 'organization'
    , message: 'What is the name of the organization?'
    , validate: required
    , default: 'clocklimited'
    }
  , { name: 'copyrightHolder'
    , message: 'Who is the copyright holder?'
    , validate: required
    , default: 'Clock Ltd.'
    }
  ]

NodeProjectGenerator.prototype._generate = function (path, config, cb) {
  generate(__dirname, path, config, cb)
}
