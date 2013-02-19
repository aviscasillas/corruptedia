class Corruptedia.Views.PeopleShow extends Backbone.View

  template: JST['people/show']

  render: ->
  	$(@el).html(@template(person: @model))
  	this