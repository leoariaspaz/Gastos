# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

cargar_transacciones_por_tipo_id = ->
	id = $("#index #tipo_transaccion_id").val()
	if (id == "") || (id == undefined) then id = 0
	lnk = '/transacciones/' + id + '/list'
	$.get lnk, (data) ->
		$("#index #list").html data	

tipo_transaccion_id_change = ->
	$("#index #tipo_transaccion_id").change (e) ->
		cargar_transacciones_por_tipo_id()

ready = ->
	console.log "transacciones.coffe -> #index #tipo_transaccion_id"
	tipo_transaccion_id_change()
	# $("#index #tipo_transaccion_id").on("turbolinks:load", cargar_transacciones_por_tipo_id)
	# cargar_transacciones_por_tipo_id()
	$("#index #tipo_transaccion_id").ready(cargar_transacciones_por_tipo_id)

$(document).on("turbolinks:load", ready)
