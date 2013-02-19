window.Corruptedia =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new Corruptedia.Routers.People()
  	Backbone.history.start(pushState: true)

$(document).ready ->
  Corruptedia.initialize()
