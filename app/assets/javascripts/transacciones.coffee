# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

cargar_transacciones_por_tipo_id = ->
	id = $("#tipo_transaccion_id").val()
	if id == "" then id = 0	
	lnk = '/transacciones/' + id + '/list'
	$.get lnk, (data) ->
		$("#transacciones").html data	

tipo_transaccion_id_change = ->
	$("#tipo_transaccion_id").change (e) ->
		cargar_transacciones_por_tipo_id()

ready = ->
	tipo_transaccion_id_change()
	cargar_transacciones_por_tipo_id()

$(document).on("turbolinks:load", ready)
