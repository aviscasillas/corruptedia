class Corruptedia.Views.LinksIndex extends Backbone.View

  template: JST['links/index']

  events:
    'click a.edit': 'edit'
    'click a.show': 'show'
    'submit #new_link': 'createLink'

  initialize: ->
    _.bindAll(this)
    @collection.on('reset', @render, this)
    @collection.on('add', @appendLink, this)
    @collection.on('remove', @render, this)

  render: ->
    this.$el.html(@template(collection: @collection))
    @collection.each(@appendLink, this)
    this.show()
    this

  appendLink: (link) ->
    view = new Corruptedia.Views.Link(model: link)
    this.$el.find('#links').append(view.render().el)

  edit: ->
    this.$el.find(".form").show()

  show: ->
    this.$el.find("#new_link")[0].reset()
    this.$el.find(".form").hide()

  createLink: (event) ->
    event.preventDefault()
    attributes = url: $('#new_link_url').val(), parent_id: @collection.parent.get('_id'), parent_model: @collection.parent.className
    @collection.create attributes,
      wait: true
      success: @handleSuccess
      error: @handleError

  handleError: (person, response) ->
    if response.status == 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages

  handleSuccess: (link, response) ->
    this.show()