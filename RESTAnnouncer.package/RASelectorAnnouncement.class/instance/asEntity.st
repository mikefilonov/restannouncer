accessing
asEntity	
	^(ZnStringEntity type: ZnMimeType applicationJson)
			string: (NeoJSONWriter toString: self asDictionary);
			yourself