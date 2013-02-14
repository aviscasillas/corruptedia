class Corruptedia.Routers.People extends Backbone.Router
	routes:
		'': 'index'
		'people/:id': 'show'

	initialize: ->
		@collection = new Corruptedia.Collections.People()
		@collection.fetch()

	index: ->
		view = new Corruptedia.Views.PeopleIndex(collection: @collection)
		$('#container').html(view.render().el)

	show: (id) ->
		alert "Person #{id}"