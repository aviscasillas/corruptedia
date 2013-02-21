class Corruptedia.Views.PeopleShow extends Backbone.View

	template: JST['people/show']

	events: 
		'click a.edit-description': 'editDescription'
		'click a.show-description': 'showDescription'
		'submit #description .form form': 'updatePerson'

	initialize: ->
		_.bindAll(this)

	render: ->
		this.$el.html(@template(person: @model))
		this.$el.find('.form').hide()
		this

	editDescription: ->
		$('#description .form').show()
		$('#description p').hide()

	showDescription: ->
		$('#description .form').hide()
		$('#description p').show()

	updatePerson: ->
		event.preventDefault()
		@model.set('description', $('#description_field').val())
		@model.save {},
			wait: true
			success: @handleSuccess
			error: @handleError

	handleError: (person, response) ->
		if response.status == 422
			errors = $.parseJSON(response.responseText).errors
			for attribute, messages of errors
				alert "#{attribute} #{message}" for message in messages

	handleSuccess: (person, response) ->
		$('#description p').html(person.get("description"))
		this.showDescription()