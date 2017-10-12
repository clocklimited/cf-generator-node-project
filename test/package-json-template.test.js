const assert = require('assert')
const fs = require('fs')
const template = require('lodash.template')
const path = require('path')

describe('package.json template', function () {
  it('should generate valid json', function () {
    const tmpl = template(fs.readFileSync(path.join(__dirname, '/../templates/package.json.tpl')))
    const mockSettings =
      { platform: 'test',
        description: 'test',
        organization: 'test'
      }
    const json = tmpl(mockSettings)

    assert.doesNotThrow(function () { JSON.parse(json) })
    assert.equal(JSON.parse(json).name, 'test')
  })
})
