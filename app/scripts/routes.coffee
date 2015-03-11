React = require "react"
Router = require "react-router"
Route = Router.Route
DefaultRoute = Router.DefaultRoute

App = require "./ui/App.coffee"
Timer = require "./ui/Timer.coffee"
Index = require "./ui/Index.coffee"

module.exports = (
    <Route name='app' path='/' handler={App}>
      <Route name='timer' handler={Timer} />
      <DefaultRoute name='index' handler={Index} />
    </Route>
  )

