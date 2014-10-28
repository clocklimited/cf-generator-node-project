module.exports = task

function task(pliers) {
  pliers('npmSecurityCheck', require('pliers-npm-security-check')(pliers))
}
