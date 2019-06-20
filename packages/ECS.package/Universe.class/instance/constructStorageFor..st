component lifecyle
constructStorageFor: aComponentClass

	| class |
	self triggerEvent: #componentAdded.
	class := Smalltalk at: aComponentClass value.
	^ class storage newForType: class