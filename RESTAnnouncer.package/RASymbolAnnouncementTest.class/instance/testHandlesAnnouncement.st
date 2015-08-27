as yet unclassified
testHandlesAnnouncement
	|announcementClass|
	announcementClass := RASymbolAnnouncementClass on: #FileUploaded.
	
 	self assert: (announcementClass handlesAnnouncement: (RASymbolAnnouncement on: #FileUploaded)).
	self assert: (announcementClass handlesAnnouncement: (RASymbolAnnouncement on: #FileModified)) not.