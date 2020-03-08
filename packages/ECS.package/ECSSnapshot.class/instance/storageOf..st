as yet unclassified
storageOf: aComponentClass

	| class |
	^ components at: aComponentClass value ifAbsentPut: [
		self triggerEvent: #componentClassAdded.
		class := Smalltalk at: aComponentClass value.
		class storage newForType: class]