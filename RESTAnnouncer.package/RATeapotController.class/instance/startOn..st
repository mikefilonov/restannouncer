as yet unclassified
startOn: port
	|teapot|
	teapot := Teapot configure: {
	    #defaultOutput -> #json. #port -> port. "#debugMode -> true"
	}.
	self configureTeapot: teapot.
	teapot start