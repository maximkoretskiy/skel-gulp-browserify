gulp = require "gulp"
gutil = require "gulp-util"
browserify = require "browserify"
watchify = require "watchify"
coffeeify = require "coffeeify"
source = require "vinyl-source-stream"
browserSync = require "browser-sync"

s = require "../settings"

b = browserify
  entries: s.path.scripts()
b.transform coffeeify

runBundle = (b)->
  b.bundle()
  .on 'error', (err) ->
    console.log err.toString()
    @emit("end")
  .pipe source s.path.scripts "dest_file"
  .pipe gulp.dest s.path.scripts "dest_dir"
  .pipe browserSync.reload {stream: true}

if s.mode is "dev"
  b = watchify b
  b.on 'update', -> runBundle b

module.exports = ->
  runBundle b

