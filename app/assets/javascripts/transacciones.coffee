# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

cargar_transacciones_por_tipo_id = ->
	id = $("#index_transaccion #tipo_transaccion_id").val()
	if (id == "") || (id == undefined) then id = 0
	lnk = '/transacciones/' + id + '/list'
	$.get lnk, (data) ->
		$("#index_transaccion #list").html data	

ready = ->
	if $("#index_transaccion #tipo_transaccion_id").any()
		cargar_transacciones_por_tipo_id()
		$("#index_transaccion #tipo_transaccion_id").change (e) ->
			cargar_transacciones_por_tipo_id()

$(document).on("turbolinks:load", ready)
