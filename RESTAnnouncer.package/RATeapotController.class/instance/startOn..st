as yet unclassified
startOn: port
	teapot := Teapot configure: {
	    #defaultOutput -> #json. #port -> port. #debugMode -> true
	}.
	self configureTeapot: teapot.
	teapot start