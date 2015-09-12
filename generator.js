module.exports = NodeProjectGenerator

var kickoff = require('kickoff')
  , Generator = kickoff.Generator
  , generate = kickoff.generate
  , extend = require('lodash.assign')
  , slugg = require('slugg')

function required (value) {
  return !!value
}

function NodeProjectGenerator () {
  Generator.call(this)
}

NodeProjectGenerator.prototype = Object.create(Generator.prototype)

NodeProjectGenerator.prototype.createConfig = function (userInput) {
  var config =
    { year: (new Date()).getFullYear()
    , platform: slugg(userInput.title)
    }
  return extend({}, userInput, config)
}

NodeProjectGenerator.prototype.prompts =
  [ { name: 'title'
    , message: 'Name this project'
    , validate: required
    }
  , { name: 'description'
    , message: 'Describe this project'
    , validate: required
    }
  , { name: 'client'
    , message: 'Enter the client short name (list available here: https://intranet.clock.co.uk/companies/index.php)'
    , default: 'clock'
    }
  , { name: 'organization'
    , message: 'What is the name of the github/npm organization?'
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
