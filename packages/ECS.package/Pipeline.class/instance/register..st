as yet unclassified
register: aSystem
	
	systems add: aSystem.
	self triggerEvent: #newSystemRegistered with: aSystem