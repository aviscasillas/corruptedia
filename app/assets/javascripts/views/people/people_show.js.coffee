class Corruptedia.Views.PeopleShow extends Backbone.View

	template: JST['people/show']

	events: 
		'click a.edit': 'edit'
		'click a.show': 'show'
		'submit form': 'save'

	initialize: ->
		_.bindAll(this)

	render: ->
		this.$el.html(@template(person: @model))
		this.$el.find('.form').hide()
		this

	edit: (ev) ->
		field = $(ev.target).data('field')
		$("##{field} .form").show()
		$("##{field} p").hide()

	show: (ev) ->
		field = $(ev.target).data('field')
		$("##{field} .form").hide()
		$("##{field} p").html($("##{field} .input-field").val())
		$("##{field} p").show()

	save: (ev) ->
		event.preventDefault()
		field = $(ev.target).data('field')
		@model.set(field, $("##{field} .input-field").val())
		@model.save {},
			field: field
			wait: true
			success: @handleSuccess
			error: @handleError

	handleError: (person, response) ->
		if response.status == 422
			errors = $.parseJSON(response.responseText).errors
			for attribute, messages of errors
				alert "#{attribute} #{message}" for message in messages

	handleSuccess: (person, response, options) ->
		this.show target: $("##{options.field} a.show")