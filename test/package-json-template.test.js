/* global describe, it */

var assert = require('assert')
var fs = require('fs')
var template = require('lodash.template')
var path = require('path')

describe('package.json template', function () {
  it('should generate valid json', function () {
    var tmpl = template(fs.readFileSync(path.join(__dirname, '/../templates/package.json.tpl')))
    var mockSettings =
      { platform: 'test',
        description: 'test',
        organization: 'test'
      }
    var json = tmpl(mockSettings)

    assert.doesNotThrow(function () { JSON.parse(json) })
    assert.equal(JSON.parse(json).name, 'test')
  })
})
