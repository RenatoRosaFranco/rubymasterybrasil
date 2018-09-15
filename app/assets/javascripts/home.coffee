# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	$('.phone-field').mask('(00) 00000 - 0000', {placeholder: '(__) _____ - ____'})
	$('.date-field').mask('00/00/0000', {placeholder: '__/__/____'})