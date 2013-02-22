class Corruptedia.Views.Link extends Backbone.View

	template: JST['links/link']
	tagName: 'li'

	events: 
		'click a.destroy': 'destroyEntry'

	render: ->
		$(@el).html(@template(link: @model))
		this

	destroyEntry: ->
		@model.destroy()
