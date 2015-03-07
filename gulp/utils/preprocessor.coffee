coffee = require 'coffee-script'

module.exports =
  process: (src, path) ->
    if (path.match(/\.coffee$/))
      return coffee.compile src, {'bare': true}
    src
