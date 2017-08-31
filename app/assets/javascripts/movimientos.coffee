# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tipo_transaccion_id_change = ->
	$("#new_movimiento #tipo_transaccion_id").change (e) ->
		lnk = '/transacciones/' + $(this).val() + '/select_by_tipoid'
		$.get lnk, (data) ->
			$("#new_movimiento #transacciones").html data
		return false

ready = ->
	tipo_transaccion_id_change()
	$('input:text').focus ->
    $(this).select()
    return
  return

$(document).on("turbolinks:load", ready)
