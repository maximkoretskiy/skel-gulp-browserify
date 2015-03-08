gulp = require "gulp"
sass = require "gulp-sass"
concat = require "gulp-concat"
postcss = require "gulp-postcss"
autoprefixer = require "autoprefixer-core"
mqpacker = require "css-mqpacker"
csswring = require "csswring"
browserSync = require "browser-sync"

s = require "../settings"
common = require "../common"

module.exports = ->
  processors = [
    autoprefixer browsers: ['last 1 version']
    mqpacker
    csswring
  ]
  gulp.src s.path.styles()
    .pipe concat('main.sass')
    .pipe sass(indentedSyntax: true)
    .on 'error', common.errorHandler "SASS"
    # .on 'error', common.errorNotifier
    .pipe(postcss(processors))
    .on 'error', common.errorHandler "CSS"
    .pipe gulp.dest s.path.styles "dest"
    .pipe browserSync.reload {stream: true}
