#= require jquery
#= require jquery_ujs
#= require foundation
#= require_tree .
jQuery ->

	$('.bt-add-link').on 'click', () ->
		Links.new()
		return false