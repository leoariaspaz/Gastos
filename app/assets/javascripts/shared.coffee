closeNotice = ->
	console.log 'entra'
	$("#notice").hide()

ready = ->
	if $("#notice").any()
		window.setTimeout(closeNotice, 5000)

$(document).on("turbolinks:load", ready)
