gulp = require "gulp"
del = require "del"
settings = require "../settings"

module.exports = -> del.sync [settings.path.clean()]

