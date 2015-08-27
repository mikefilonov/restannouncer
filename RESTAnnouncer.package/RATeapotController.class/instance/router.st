accessing
router
	^ announcerRouter ifNil: [ announcerRouter := RAAnnouncerRouter new ]