as yet unclassified
addPendingTask: aTask withState: cc withCondition: condition
	"Condition is a block that accepts a RASelectorAnnouncement and answers boolean"
	self pendingTasks at: condition put: cc