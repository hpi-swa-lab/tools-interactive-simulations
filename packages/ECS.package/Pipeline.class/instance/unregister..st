as yet unclassified
unregister: aSystem

	systems remove: aSystem.
	self triggerEvent: #systemUnregistered with: aSystem