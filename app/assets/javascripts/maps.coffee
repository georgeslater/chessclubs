# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->

	handler = Gmaps.build('Google')
	handler.buildMap { internal: id: 'with_kml' }, ->
	  kmls = handler.addKml(url: 'https://s3.amazonaws.com/chessclubs/English_Chess_Clubs.kml')
	  return

$(document).ready(ready)
$(document).on('page:load', ready)
