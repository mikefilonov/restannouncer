as yet unclassified
fromEntity: entity
	|json|
	json := NeoJSONReader fromString: entity contents.
	^ self withSelector: (json at: 'selector') andData: (json at: 'data')
