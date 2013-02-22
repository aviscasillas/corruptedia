class Corruptedia.Models.Person extends Backbone.Model
	idAttribute: "_id"

	className: "Person"

	initialize: ->
		@links = new Corruptedia.Collections.Links(this.get('links'), parent: this)
