class Corruptedia.Collections.Links extends Backbone.Collection
	
	model: Corruptedia.Models.Link

	url: '/api/links'

	initialize: (models, options) ->
		@parent = options.parent
