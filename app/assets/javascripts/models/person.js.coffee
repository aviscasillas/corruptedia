class Corruptedia.Models.Person extends Backbone.Model
	idAttribute: "_id"

	initialize: ->
		@links = new Corruptedia.Collections.Links(this.get('links'), parent: this)
