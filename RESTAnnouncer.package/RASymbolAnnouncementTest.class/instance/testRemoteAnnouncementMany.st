as yet unclassified
testRemoteAnnouncementMany
	|router tc event|
	
	event := RASelectorAnnouncement 
					withSelector: #TestAnnouncement
					andData: { #counter->0 }.

	router := RAAnnouncerRouter new.
	router newAnnouncer: #first.
	router when: #TestAnnouncement on: #first do: [: a | a at: #counter put: ((a at: #counter) +1)]. 

	tc := RATeapotController new.
	tc router: router.
	[ |port remote|
		port := (10000 to: 20000) atRandom.
		tc startOn: port.
		remote := RARemoteAnnouncer new
			url: ((ZnUrl fromString: 'http://localhost/api/first') port: port; yourself); yourself.
		1 to: 10 do: [ :i| event := remote announce: event ].
			
	] ensure: [ tc stop ].
	
	self assert: (event at: #counter) equals: 10
