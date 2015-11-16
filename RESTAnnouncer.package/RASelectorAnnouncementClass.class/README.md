A trick to handle SymbolAnnouncements using symbols instead of classes.

Example: 
announcer 
	when: (RASelectorAnnouncement when: #FileUpload) 
	do: [ :a | a at: #ok put: true ].

Will match all RASelectorAnnouncements with #FileUpload type
		