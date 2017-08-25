# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
tipo_transaccion_id_change = ->
	$("#tipo_transaccion_id").change (e) ->
		lnk = '/transacciones/' + $(this).val() + '/list'
		$.get lnk, (data) ->
			$("#transacciones").html data
		return false

ready = ->
	tipo_transaccion_id_change()
	id = $("#tipo_transaccion_id").val()
	if id == "" then id = 0	
	lnk = '/transacciones/' + id + '/list'
	$.get lnk, (data) ->
		$("#transacciones").html data

$(document).on("turbolinks:load", ready)
