gulp = require "gulp"

s = require "./settings"

gulp.task "styles", require "./tasks/styles.coffee"
gulp.task "scripts", require "./tasks/scripts.coffee"
gulp.task "clean", require "./tasks/clean.coffee"

gulp.task "watch", ["styles"], ->
  gulp.watch (s.path.styles "src"), ["styles"]


gulp.task "default", ["scripts", "watch"]
