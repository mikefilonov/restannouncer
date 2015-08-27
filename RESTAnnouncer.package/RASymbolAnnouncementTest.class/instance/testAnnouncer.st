as yet unclassified
testAnnouncer
	|announcer a1 a2|
	announcer := Announcer new.
	announcer 
		when: (RASelectorAnnouncement when: #FileUpload) 
		do: [ :a | a at: #ok put: true ].
		
	a1 := (RASelectorAnnouncement withSelector: #FileUpload andData: {#ok->false}).
	announcer announce: a1.
	self assert: (a1 at: #ok).


	a2 := (RASelectorAnnouncement withSelector: #FileModified andData: {#ok->false}).
	announcer announce: a2.
	self assert: (a2 at: #ok) not.

