class Corruptedia.Views.PeopleIndex extends Backbone.View

  template: JST['people/index']

  initialize: ->
  	@collection.on('reset', @render, this)

  render: ->
  	$(@el).html(@template(people: @collection))
  	this