as yet unclassified
announceRequest: req
	^ (self router 
			announce: (RASelectorAnnouncement fromEntity: req entity) 
			on: (req at: 'announcerName')) asDictionary 