as yet unclassified
incomingEvent: event
	self pendingTasks copy keysAndValuesDo: [ :k :v |
		(k value: event) ifTrue: [ self pendingTasks removeKey: k. self executionLoop enqueue: v  ] ]