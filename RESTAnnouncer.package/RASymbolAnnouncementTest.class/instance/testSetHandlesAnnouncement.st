as yet unclassified
testSetHandlesAnnouncement
	|announcementClassSet|
	announcementClassSet := (RASymbolAnnouncementClass on: #FileUploaded), (RASymbolAnnouncementClass on: #FileNotUploaded).
	
 	self assert: (announcementClassSet handlesAnnouncement: (RASymbolAnnouncement on: #FileUploaded)).