class Corruptedia.Views.Person extends Backbone.View

  template: JST['people/person']
  tagName: 'li'

  events:
  	'click a.show': 'showEntry'
  	'click a.destroy': 'destroyEntry'

  render: ->
  	$(@el).html(@template(person: @model))
  	this

  showEntry: ->
  	Backbone.history.navigate("people/#{@model.get('_id')}", true)

  destroyEntry: ->
  	@model.destroy()