as yet unclassified
moveSystem: aSystem to: anInteger

	| index isRunning |
	index := systems findFirst: [:each | each key = aSystem].
	isRunning := (systems at: index) value.
	systems removeIndex: index.
	systems add: (aSystem -> isRunning) beforeIndex: anInteger.
	self triggerEvent: #systemOrderChanged