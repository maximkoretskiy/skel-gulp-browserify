gulp = require "gulp"
gutil = require "gulp-util"
browserify = require "browserify"
watchify = require "watchify"
coffeeify = require "coffeeify"
source = require "vinyl-source-stream"

settings = require "../settings"

b = browserify
  entries: settings.path.scripts()
b = watchify b if settings.mode is "dev"
b.transform coffeeify

module.exports = ->
  b.bundle()
  .on 'error', (err) ->
    console.log err.toString()
    @emit("end");
  .pipe source settings.path.scripts "dest_file"
  .pipe gulp.dest settings.path.scripts "dest_dir"
