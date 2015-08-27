as yet unclassified
configureTeapot: teapot
	teapot
		POST: '/api/<announcerName>' -> [ :req | self announceRequest: req ].
