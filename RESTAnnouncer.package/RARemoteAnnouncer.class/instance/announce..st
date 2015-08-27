as yet unclassified
announce: aSelectorAnnouncement
	|response|
	response := ZnEasy 
		post: self url
		data: aSelectorAnnouncement asEntity.
	"just an idea:"
	"aSelectorAnnouncement copySameFrom: (RASelectorAnnouncement fromEntity: response entity)."
	^(RASelectorAnnouncement fromEntity: response entity)
	