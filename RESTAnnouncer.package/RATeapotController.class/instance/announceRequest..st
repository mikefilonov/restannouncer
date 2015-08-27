as yet unclassified
announceRequest: req
	|json|
	json := NeoJSONReader fromString: req contents.
	(self announcers at: (req at: 'announcerName')) 
				announce: (RASelectorAnnouncement withSelector: (json at: 'selector') andData:  (json at: 'data')).
			
	^'ok'