as yet unclassified
storeInitializeString

	^ String streamContents: [:string |
		string nextPutAll: 'super initialize.'.
		string cr.
		string nextPutAll: 'self'.
		self storeAttributeSettingOn: string]