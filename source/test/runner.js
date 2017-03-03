var Mocha = require('mocha')
var fs = require('fs')
var path = require('path')
var glob = require('glob')
var mocha = new Mocha()
var filter = process.argv[2] && new RegExp(process.argv[2])

mocha.timeout(3000)
mocha.reporter('spec').ui('bdd')

// Get the relative path (based at the project root) for all *.test.js files
glob.sync(path.join(__dirname, '/../**/*.test.js'), { ignore: path.join(__dirname, '/../node_modules/**'), cwd: path.join(__dirname, '/../') })
  // Filter out any that are dependencies
  // Filter out any non-matches if a path filter is passed in
  .filter(matchesPathFilter)
  // Add the tests
  .forEach(addFile)

// Run the tests
mocha.run(function (numFailures) {
  process.exit(numFailures)
})

/*
 * Returns true if the file path contains the path filter CLI arg
 * e.g.
 *  $ node test/test-runner lib
 *
 *  Will run:
 *    lib/foo.test.js
 *    components/thing/lib/baz.test.js
 */
function matchesPathFilter (filepath) {
  return !(filter && !filter.test(filepath))
}

/*
 * Adds a test file to the mocha instance
 */
function addFile (filepath) {
  var relativePath = './' + path.relative(__dirname, filepath)
  if (!fs.existsSync(filepath)) return console.log('Tests not found', relativePath)
  console.log('Adding tests', relativePath)
  mocha.addFile(filepath)
}
