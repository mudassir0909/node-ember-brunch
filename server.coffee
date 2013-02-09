coffeescript = require 'coffee-script'
express = require 'express'
sysPath = require 'path'

exports.startServer = (port, path, callback) ->
  server = express.createServer()
  server.use (request, response, next) ->
    response.header 'X-Accept-Language', request.headers['accept-language']
    next()
  server.use express.static path
  server.all '/*', (request, response) ->
    response.sendfile sysPath.join path, 'index.html'
  server.listen parseInt port, 10
  server.on 'listening', callback
  server