gulp = require "gulp"
browserSync = require "browser-sync"
settings = require "../settings"

module.exports = ->
  browserSync
    server:
      baseDir: settings.path.serve()
      index: "index.html"
