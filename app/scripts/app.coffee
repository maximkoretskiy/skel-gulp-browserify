React = require 'react'
Timer = require './ui/Timer.coffee'
Router = require 'react-router'
routes = require './routes.coffee'


Router.run routes, (Handler)->
  React.render <Handler/>, document.body
