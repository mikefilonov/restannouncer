as yet unclassified
testAnnouncerRouter
	|router|
	router := RAAnnouncerRouter new.
	router newAnnouncer: #some.
	router newAnnouncer: #someother.
	
	router when: #FileUpload on: #some do: [: a | Exception signal]. 
	router when: #FileModified on: #someother do: [: a | Exception signal ].
	
	self 
		should: [ router announce: #FileUpload on: #some with: {} ]
		raise: Exception.
		
	self 
		should: [ router announce: #FileModified on: #someother with: {} ]
		raise: Exception.
		
	self 
		shouldnt: [ router announce: #FileUpload on: #someother with: {} ]
		raise: Exception.



