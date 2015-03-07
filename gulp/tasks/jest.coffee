gulp = require "gulp"
libPath = require "path"
# jest = require "gulp-jest"
shell = require "gulp-shell"
s = require "../settings"

module.exports = shell.task "npm test", {ignoreErrors: true}
