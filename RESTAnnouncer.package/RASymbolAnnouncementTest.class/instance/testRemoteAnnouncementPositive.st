as yet unclassified
testRemoteAnnouncementPositive
	|router tc event|
	
	event := RASelectorAnnouncement 
					withSelector: #TestAnnouncement
					andData: { #ok->false }.

	router := RAAnnouncerRouter new.
	router newAnnouncer: #first.
	router when: #TestAnnouncement on: #first do: [: a | a at: #ok put: true]. 

	tc := RATeapotController new.
	tc router: router.
	[ |port|
		port := (10000 to: 20000) atRandom.
		tc startOn: port.
		event := RARemoteAnnouncer new 
			url: ((ZnUrl fromString: 'http://localhost/api/first') port: port; yourself);
			announce: event.
	] ensure: [ tc stop ].
	
	self assert: (event at: #ok)
