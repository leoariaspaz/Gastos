$.fn.extend
  makeColor: (options) ->
    settings = 
      option1: "red"
    
    settings = $.extend settings, options
    
    return @each () ->
      $(this).css
        color: settings.color
  any: ->
  	if ($(this).length > 0) then true else false