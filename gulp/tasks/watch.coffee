gulp = require "gulp"
s = require "../settings"
browserSync = require "browser-sync"

module.exports = ->
  gulp.watch (s.path.styles "src"), ["styles"]
  gulp.watch s.path.html()
    .on "change", browserSync.reload


