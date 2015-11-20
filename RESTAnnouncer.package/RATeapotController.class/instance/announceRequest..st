as yet unclassified
announceRequest: req
	req entity ifNil: [ req abort: 'empty request' ].
	^ (self router 
			announce: (RASelectorAnnouncement fromEntity: req entity) 
			on: (req at: 'announcerName')) asDictionary 