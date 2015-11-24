# RESTAnnouncer

Event framework for sending and recieving announcements via HTTP/JSON.

##Installation
```smalltalk
Metacello new baseline: #RESTAnnouncer; repository: 'github://mikefilonov/restannouncer'; load.
```

##Quick start

Starting a recieving server:
```smalltalk
server := RATeapotController new.
server newAnnouncer: #first.
server startOn: 8081.
```

Subscribing on event:

```smalltalk
(server announcerAt: #first)
		when: (RASelectorAnnouncement when: #FileUpload) 
		do: [ :a | Transcript show: (a at: #filename) ].
```


Sending an event to the server via HTTP (different VM):

```smalltalk
RARemoteAnnouncer new
  url: 'http://localhost:8081/api/first' asUrl;
  announce: (RASelectorAnnouncement withSelector: #FileUpload andData: {'filename'->'1.txt'} asDictionary)

```

# RESTAnnouncer - Automata
The project provides an implementation of automata task manager to allow user running event-driven workflows.


Concider the following example:

```smalltalk
"Start event listener"
server := RATeapotController new.
server newAnnouncer: #first.
server startOn: 8081.

"Initialize automata manager"
automata := RAAutomata new.
automata subscribeOn: (server announcerAt: #first).
automata start.

"Task loop"
automata do: [ :task |
	[ |initialEvent|
	initialEvent := task waitEvent: [ :e | e selector = #FileUpload ].
	
	"Create a sub workflow for each uploaded file, don't wait for it to be finished."
	automata do: [ :subtask | |filename|
		filename := initialEvent at: 'filename'. "Any data of the event can be used here"
		Transcript show: 'New file is uploaded: ', filename, '. Waiting for modification'.
		
		"... put some logic here ..."
		
		subtask waitEvent: [ :e | e selector = #FileModified and: [ (e at: 'filename')  = filename ] ]. "Wait for modification of the file"
		Transcript show: 'File modified: ', filename.
		
		"... put some logic here ..."
		
		]
	]	repeat.
].
```

The event emitter server code:

```smalltalk
RARemoteAnnouncer new
  url: 'http://localhost:8081/api/first' asUrl;
  announce: (RASelectorAnnouncement withSelector: #FileUpload andData: {'filename'->'/1.txt'} asDictionary).
  
RARemoteAnnouncer new
  url: 'http://localhost:8081/api/first' asUrl;
  announce: (RASelectorAnnouncement withSelector: #FileModified andData: {'filename'->'/1.txt'} asDictionary)  
  

```
