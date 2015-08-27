as yet unclassified
testHandlesAnnouncement
	|announcementClass|
	announcementClass := RASelectorAnnouncement when: #FileUploaded.
	
 	self assert: (announcementClass handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileUploaded)).
	self assert: (announcementClass handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileModified)) not.