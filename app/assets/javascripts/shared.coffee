closeNotice = ->
	$("#notice").hide()

ready = ->	
  window.setTimeout(closeNotice, 5000) if $("#notice").any()
  
  $('input.date-picker').datepicker({
      clearBtn: true,
      language: "es",
      autoclose: true,
      todayHighlight: true
  });

  return false

$(document).on("turbolinks:load", ready)
