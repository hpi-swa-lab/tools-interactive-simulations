as yet unclassified
register: aSystem

	systems add: aSystem -> true.
	self triggerEvent: #newSystemRegistered with: aSystem