module.exports = NodeProjectGenerator

const kickoff = require('kickoff')
const Generator = kickoff.Generator
const generate = kickoff.generate
const slugg = require('slugg')

function required (value) {
  return !!value
}

function NodeProjectGenerator () {
  Generator.call(this)
}

NodeProjectGenerator.prototype = Object.create(Generator.prototype)

NodeProjectGenerator.prototype.createConfig = function (userInput) {
  var config =
    { year: (new Date()).getFullYear(),
      platform: slugg(userInput.title)
    }
  return Object.assign({}, userInput, config)
}

NodeProjectGenerator.prototype.prompts =
[ { name: 'title',
  message: 'Name this project',
  validate: required
},
{ name: 'description',
  message: 'Describe this project',
  validate: required
},
{ name: 'nodeVersion',
  message: 'What is the minimum node.js version this project should run on?',
  default: '8.2.4',
  validate: required
},
{ name: 'organization',
  message: 'What is the name of the github/npm organization?',
  validate: required,
  default: 'clocklimited'
},
{ name: 'copyrightHolder',
  message: 'Who is the copyright holder?',
  validate: required,
  default: 'Clock Limited'
}
]

NodeProjectGenerator.prototype._generate = function (path, config, cb) {
  generate(__dirname, path, config, cb)
}
