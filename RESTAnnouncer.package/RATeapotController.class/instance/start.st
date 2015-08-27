as yet unclassified
start
	|teapot|
	Teapot stopAll.
	teapot := Teapot configure: {
	    #defaultOutput -> #json. #port -> 8080. #debugMode -> true
	}.
	self configureTeapot: teapot.
	teapot start