gutil = require "gulp-util"
libPath = require "path"

# modes: dev build
settings = {
  mode: "dev" || gutil.env.mode
  path: {}
}


path = {
  app: "app"
  build: (mode = settings.mode)->
    if mode is "build" then "./dist/"
    else "./.tmp"
}

settings.path = {
  clean: ()-> path.build()
  scripts: (opt)->
    switch opt
      when "dest_file" then "app.coffee"
      when "dest_dir" then libPath.join path.build(), "/scripts/"
      else "./app/scripts/app.coffee"
}



module.exports = settings




