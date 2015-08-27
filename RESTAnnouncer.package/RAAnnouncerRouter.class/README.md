I manage a dictionary of announcers which may be seen as a  REST collection on one level.

I make an abstraction between selectors and Announcement classes, so client doesn't have to do the class creation.

Example:
	router := RAAnnouncerRouter new.
	router newAnnouncer: #some.
	router when: #FileUpload on: #some do: [: a | a at: #ok put: true]. 
	router when: #FileModified on: #some do: [: a | a inspect ]. 
	router announce: #FileModified on: #some with: { }.

Used by HTTP layer implementors to provide basic functionality
