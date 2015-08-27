as yet unclassified
handlesAnnouncement: anAnnouncement

	^ (anAnnouncement class = RASymbolAnnouncement 
		or: [ anAnnouncement class inheritsFrom: RASymbolAnnouncement ])
		and: [ anAnnouncement symbol = self symbol ]