as yet unclassified
testHandlesAnnouncementSet
	|announcementClassSet|
	announcementClassSet := (RASelectorAnnouncement when: #FileUploaded), (RASelectorAnnouncement when: #FileModified).
	
 	self assert: (announcementClassSet handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileUploaded)).
 	self assert: (announcementClassSet handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileModified)).
 	self assert: (announcementClassSet handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileDeleted)) not.	
