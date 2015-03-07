gulp = require "gulp"
gutil = require "gulp-util"
browserify = require "browserify"
watchify = require "watchify"
coffeeify = require "coffeeify"
coffeeReactify = require "coffee-reactify"
source = require "vinyl-source-stream"
browserSync = require "browser-sync"

s = require "../settings"
common = require "../common"

b = browserify
  entries: s.path.scripts()
b.transform coffeeReactify

runBundle = (b)->
  b.bundle()
  .on 'error', common.errorHandler "Scripts"
  .pipe source s.path.scripts "dest_file"
  .pipe gulp.dest s.path.scripts "dest_dir"
  .pipe browserSync.reload {stream: true}

if s.mode is "dev"
  b = watchify b
  b.on 'update', -> runBundle b

module.exports = ->
  runBundle b

