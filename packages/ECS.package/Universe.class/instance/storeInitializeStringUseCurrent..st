api
storeInitializeStringUseCurrent: aBoolean

	^ String streamContents: [:string |
		string nextPutAll: 'super initialize.'.
		string cr.
		string nextPutAll: 'self'.
		self storeAttributeSettingOn: string withState: (aBoolean ifTrue: [state] ifFalse: [persistedState])]