window.Corruptedia =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
  	new Corruptedia.Routers.People()
  	Backbone.history.start()

$(document).ready ->
  Corruptedia.initialize()
