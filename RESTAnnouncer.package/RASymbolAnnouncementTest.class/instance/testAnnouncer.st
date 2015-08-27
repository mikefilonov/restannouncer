as yet unclassified
testAnnouncer
	|announcer|
	announcer := Announcer new.
	announcer 
		when: (RASelectorAnnouncement when: #FileUpload) 
		do: [ :a | Exception signal ].
	
	self 
		should: [ announcer announce: (RASelectorAnnouncement withSelector: #FileUpload andData: {}) ]
		raise: Exception.
		

	self 
		shouldnt: [ announcer announce: (RASelectorAnnouncement withSelector: #FileModified andData: {}) ]
		raise: Exception.
	
