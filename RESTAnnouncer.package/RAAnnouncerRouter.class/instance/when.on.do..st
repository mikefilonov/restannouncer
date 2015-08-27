accessing
when: selector on: announcerId do: aBlock
	(self announcers at: announcerId) when: (RASelectorAnnouncement when: selector) do: aBlock