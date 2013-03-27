# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/




		

setInterval ->
	$.get '/messages',
		(data) -> 
			console.log(data)
			$("#messages").text("");

			for message in data
				$("#messages").append( "<p>" + message.content + "  From:" + message.username + "</p>")
, 3000