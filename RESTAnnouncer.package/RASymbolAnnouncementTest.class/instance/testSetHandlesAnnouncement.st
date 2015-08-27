as yet unclassified
testSetHandlesAnnouncement
	|announcementClassSet|
	announcementClassSet := (RASelectorAnnouncement when: #FileUploaded), (RASelectorAnnouncement when: #FileModified).
	
 	self assert: (announcementClassSet handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileUploaded andData: {})).
 	self assert: (announcementClassSet handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileModified andData: {})).
 	self assert: (announcementClassSet handlesAnnouncement: (RASelectorAnnouncement withSelector: #FileDeleted andData: {})) not.	
