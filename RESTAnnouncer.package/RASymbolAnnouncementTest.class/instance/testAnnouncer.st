as yet unclassified
testAnnouncer
	|announcer|
	announcer := Announcer new.
	announcer 
		when: (RASymbolAnnouncementClass on: #FileUpload) 
		do: [ :a | Exception signal ].
	
	self 
		should: [ announcer announce: (RASymbolAnnouncement on: #FileUpload) ]
		raise: Exception.
		

	self 
		shouldnt: [ announcer announce: (RASymbolAnnouncement on: #FileModified) ]
		raise: Exception.
	
