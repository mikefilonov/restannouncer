as yet unclassified
testSetHandlesAnnouncement
	|announcementClassSet|
	announcementClassSet := (RASymbolAnnouncementClass on: #FileUploaded), (RASymbolAnnouncementClass on: #FileModified).
	
 	self assert: (announcementClassSet handlesAnnouncement: (RASymbolAnnouncement on: #FileUploaded)).
 	self assert: (announcementClassSet handlesAnnouncement: (RASymbolAnnouncement on: #FileModified)).
 	self assert: (announcementClassSet handlesAnnouncement: (RASymbolAnnouncement on: #FileDeleted)) not.	
