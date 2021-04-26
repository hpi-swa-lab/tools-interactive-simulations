api
spawnTemplate: aSymbol

	^ templates
		detect: [:t | t name = aSymbol]
		ifFound: [:template | template instanceIn: self]
		ifNone: [self error: 'No template named ', aSymbol]