as yet unclassified
announceRequest: req
	|json|
	json := NeoJSONReader fromString: req contents.
	^ (self router announce: (json at: 'selector') on: (req at: 'announcerName') with: (json at: 'data')) asDictionary.
