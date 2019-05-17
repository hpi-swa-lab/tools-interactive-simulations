systems
moveSystem: aSystem to: anInteger

	systems remove: aSystem.
	systems add: aSystem beforeIndex: anInteger.
	self triggerEvent: #systemOrderChanged