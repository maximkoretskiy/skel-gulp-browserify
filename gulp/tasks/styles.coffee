gulp = require "gulp"
sass = require "gulp-sass"
postcss = require "gulp-postcss"
autoprefixer = require "autoprefixer-core"
mqpacker = require "css-mqpacker"
csswring = require "csswring"
s = require "../settings"

module.exports = ->
  processors = [
    autoprefixer browsers: ['last 1 version']
    mqpacker
    csswring
  ]
  gulp.src s.path.styles()
    .pipe sass(indentedSyntax: true)
    .pipe(postcss(processors))
    .pipe gulp.dest s.path.styles "dest"
