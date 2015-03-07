gutil = require "gulp-util"
libPath = require "path"

# modes: dev build
settings = {
  mode: "dev" || gutil.env.mode
  path: {}
}


path = {
  app: -> "./app"
  build: (mode = settings.mode)->
    if mode is "build" then "./dist/"
    else "./.tmp"
}

settings.path = {
  clean: ()-> path.build()
  scripts: (opt)->
    switch opt
      when "dest_file" then "app.js"
      when "dest_dir" then libPath.join path.build(), "/scripts/"
      when "src" then libPath.join path.app(), "/scripts/**/*.coffee"
      else "./" + libPath.join path.app(), "/scripts/app.coffee"
  styles: (opt)->
    switch opt
      when "dest" then libPath.join path.build(), "/styles/"
      when "src" then libPath.join path.app(), "/styles/**/*.sass"
      else libPath.join path.app(), "/styles/main.sass"

  jest: ->
    # libPath.join path.app(),  "/scripts/**/__tests__"
    libPath.join path.app(),  "/scripts/"
  serve: ->
    result = [path.build()]
    result.push path.app() if settings.mode is 'dev'
    result
  html: ->
    libPath.join path.app(), "/*.html"

}

module.exports = settings




