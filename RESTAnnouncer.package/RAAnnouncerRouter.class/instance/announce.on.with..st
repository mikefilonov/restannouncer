as yet unclassified
announce: selector on: announcerId with: dataObject
	^(self announcers at: announcerId) 
				announce: (RASelectorAnnouncement withSelector: selector andData: dataObject).
	