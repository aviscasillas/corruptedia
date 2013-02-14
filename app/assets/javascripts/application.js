#= require jquery
#= require jquery_ujs
#= require foundation
#= require_tree .
$(function(){
	alert(1);
	$('.bt-add-link').on('click', function() {
		Links.new();
		return false;
	});
});