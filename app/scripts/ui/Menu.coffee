React = require "react"
Link = (require "react-router").Link

Menu = React.createClass
  render: ->
    <ul className='menu'>
      <li><Link to='app'>Home</Link></li>
      <li><Link to='timer'>Timer</Link></li>
    </ul>

module.exports = Menu
