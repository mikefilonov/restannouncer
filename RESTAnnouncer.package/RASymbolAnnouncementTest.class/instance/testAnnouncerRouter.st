as yet unclassified
testAnnouncerRouter
	|router|
	router := RAAnnouncerRouter new.
	router newAnnouncer: #first.
	router newAnnouncer: #other.
	
	router when: #FileUpload on: #first do: [: a | a at: #handler put: #first ]. 
	router when: #FileModified on: #other do: [: a | a at: #handler put: #other ].
	
	self assert: ((router announce: (RASelectorAnnouncement withSelector: #FileUpload) on: #first) at: #handler) equals: 
#first.
	self assert: ((router announce: (RASelectorAnnouncement withSelector: #FileModified) on: #other) at: #handler) equals: 
#other.
	self should: [(router announce: (RASelectorAnnouncement withSelector: #FileModified) on: #first) at: #handler] raise: KeyNotFound   


