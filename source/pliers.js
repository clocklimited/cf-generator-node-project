module.exports = tasks

var glob = require('glob')

function tasks(pliers) {

  // Load pliers plugins
  glob.sync(__dirname + '/pliers/*.js').forEach(function (file) {
    require(file)(pliers)
  })

  pliers('install', function (done) {
    pliers.logger.warn('Implement me!')
    done()
  })

  pliers('build', function (done) {
    pliers.logger.warn('Implement me!')
    done()
  })

}
