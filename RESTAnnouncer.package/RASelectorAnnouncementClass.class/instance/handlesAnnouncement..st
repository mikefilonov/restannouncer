as yet unclassified
handlesAnnouncement: anAnnouncement

	^ (anAnnouncement class = RASelectorAnnouncement 
		or: [ anAnnouncement class inheritsFrom: RASelectorAnnouncement ])
		and: [ anAnnouncement selector = self selector ]