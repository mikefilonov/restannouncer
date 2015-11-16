Teapot  is a REST API handler for project.  This class implements basic coupling of all modules.


Example of usage:
	tc := RATeapotController new.
	tc startOn: 8080.
	
	tc router
		newAnnouncer: #first;
	 	when: #TestAnnouncement on: #first do: [: a | a inspect ]. 

