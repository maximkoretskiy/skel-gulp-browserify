React = require "react"
Router = require "react-router"
RouteHandler = Router.RouteHandler
Menu = require "./Menu.coffee"

App = React.createClass
  render: ->
     <div>
      <header><Menu/></header>
      <div className='content'>
        <RouteHandler/>
      </div>

    </div>

module.exports = App
