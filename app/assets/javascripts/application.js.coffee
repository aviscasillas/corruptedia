#= require jquery
#= require jquery_ujs
#= require foundation
#= require_tree .
$ ->
	$('.bt-add-link').on 'click', () ->
		Links.new()
		return false