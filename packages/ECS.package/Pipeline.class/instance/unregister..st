as yet unclassified
unregister: aSystem

	systems removeAllSuchThat: [:each | each key = aSystem].
	self triggerEvent: #systemUnregistered with: aSystem