gulp = require "gulp"

gulp.task "styles", require "./tasks/styles.coffee"
gulp.task "scripts", require "./tasks/scripts.coffee"
gulp.task "bs", require "./tasks/bs.coffee"
gulp.task "clean", require "./tasks/clean.coffee"
gulp.task "watch", ["styles"], require "./tasks/watch.coffee"

gulp.task "default", ["scripts", "watch", "bs"]
