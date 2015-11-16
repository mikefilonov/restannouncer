as yet unclassified
baseline: spec
   <baseline>
	spec for: #'common' do: [
		spec 
			project: 'Teapot' with: [
				spec
					className: #ConfigurationOfTeapot;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ];
			project: 'NeoJSON' with: [
				spec
					className: #ConfigurationOfNeoJSON;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main/' ];
			 project: 'Automata' with: [
				spec
					className: #BaselineOfAutomata;
					repository: 'github://mikefilonov/automata:master' ].



		spec package: #RESTAnnouncer. ].
