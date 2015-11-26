as yet unclassified
configureTeapot: aTeapot
	aTeapot
		POST: '/api/<announcerName>' -> [ :req | self announceRequest: req ].
