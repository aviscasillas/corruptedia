class Corruptedia.Views.PeopleIndex extends Backbone.View

  template: JST['people/index']

  events:
    'submit #new_person': 'createPerson'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendPerson, this)
    @collection.on('remove', @render, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendPerson)
    this

  appendPerson: (person) ->
    view = new Corruptedia.Views.Person(model: person)
    $('#people').append(view.render().el)

  createPerson: (event) ->
    event.preventDefault()
    attributes = name: $('#new_person_name').val()
    @collection.create attributes,
      wait: true
      success: @handleSuccess
      error: @handleError

  handleError: (person, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages

  handleSuccess: (person, response) ->
    Backbone.history.navigate("people/#{person.get('_id')}", true)