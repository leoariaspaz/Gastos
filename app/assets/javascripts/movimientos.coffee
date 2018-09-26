# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

tipo_transaccion_id_change = ->
	$('body').on 'change', '.tipo-transaccion select', (e) ->
	  t = $(this).parent().siblings('.transaccion')
	  loader = t.find('#loader')
	  loader.show()
	  lnk = '/transacciones/' + $(this).val() + '/select_by_tipoid'
	  $.get lnk, (data) ->
	    t.find('select').html data
	    loader.hide()
	  return false

cargar_movimientos_por_cuenta = ->
	cargar = ->
	  $('.movidxcta #loader').show()
	  id = $(".movidxcta select").first().val()
	  lnk = '/movimientos/cuenta/' + id
	  $.get lnk	
	if $(".movidxcta").any()
		cargar()
  $(".movidxcta select").on("change", cargar)

eliminar_movimiento = (e) ->
	e.preventDefault()
	$(this).closest('.row').remove()
	false

focus_importe = ->
  $('.new_movimiento, .edit_movimiento, .carga_masiva').find('input:text').focus ->
	  $(this).select()
	  return

sumar_importes = ->
	obtener_valores = ->
	  result = new Object()
	  result.trx = $(this).find('.transaccion select').val()
	  result.importe = $(this).find('#movimiento_items__importe').val()
	  return result

  on_blur = ->
	  valores = $('.row').not('.panel').map(obtener_valores).get()
	  $.get('/movimientos/carga_masiva/sumar', {items: valores})

  $('form.carga_masiva').on('blur', 'input[name*=importe]', on_blur)
	$('.total a').click (e) ->
  	e.preventDefault()
  	on_blur()

ready = ->
  tipo_transaccion_id_change()
  focus_importe()
  # cargar_movimientos_por_cuenta()
  $('.hide-on-load').hide()
  $('form.carga_masiva').on("click", '.eliminar', eliminar_movimiento)
  sumar_importes()
  $('#nuevo-mov a').click ->
  	$('#nuevo-mov .loader').show()
  $('.movidxcta .btn').click ->
  	$('.movidxcta #loader').show()
  

$(document).on("turbolinks:load", ready)
