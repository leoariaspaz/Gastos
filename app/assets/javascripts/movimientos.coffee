# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tipo_transaccion_id_change = ->
	control = $("#new_movimiento #tipo_transaccion_id, .edit_movimiento #tipo_transaccion_id")
	control.change (e) ->
		$("#loader").show()
		lnk = '/transacciones/' + $(this).val() + '/select_by_tipoid'
		$.get lnk, (data) ->
			$("#new_movimiento #transacciones, .edit_movimiento #transacciones").html data
			$("#loader").hide()
		return false

cargar_movimientos_por_cuenta_id = ->
	$('#index_movimientos #loader').show()
	id = $("#index_movimientos #cuenta_id").val()
	if (id == "") || (id == undefined) then id = 0
	lnk = '/movimientos/cuenta/' + id
	$.get lnk

ready = ->
	tipo_transaccion_id_change()
	$('input:text').focus ->
    $(this).select()
    return
	if $("#index_movimientos #cuenta_id").any()
	  cargar_movimientos_por_cuenta_id()
	  $("#index_movimientos #cuenta_id").change (e) ->
		  cargar_movimientos_por_cuenta_id()
  if $("#new_movimiento, .edit_movimiento").any()
	  $("#loader").hide()

$(document).on("turbolinks:load", ready)
