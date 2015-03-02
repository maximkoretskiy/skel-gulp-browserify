gulp = require "gulp"

gulp.task "scripts", require "./tasks/scripts.coffee"

gulp.task "watch", ->
  gulp.watch paths.scripts, ["scripts"]

gulp.task "default", ["scripts"]
