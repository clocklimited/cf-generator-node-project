const assert = require('assert')
const fs = require('fs')
const template = require('lodash.template')
const path = require('path')

describe('package.json template', () => {
  test('should generate valid json', () => {
    const tmpl = template(fs.readFileSync(path.join(__dirname, '/../templates/package.json.tpl')))
    const mockSettings =
      { platform: 'test',
        description: 'test',
        organization: 'test',
        nodeVersion: '8.2.4'
      }
    const json = tmpl(mockSettings)

    assert.doesNotThrow(function () { JSON.parse(json) })
    assert.equal(JSON.parse(json).name, 'test')
  })
})
