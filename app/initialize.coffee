window.App = require('app')

###
 Templates
###

require 'templates/application'
require 'templates/index'

###
 Models
###



###
 Controllers
###



###
 Views
###



###
 Routes
###



###
 Store
###

App.Store = DS.Store.extend
  revision: 11

###
 Router
###

App.Router.map -> 
  @route 'index', { path: '/'}

App.initialize()
