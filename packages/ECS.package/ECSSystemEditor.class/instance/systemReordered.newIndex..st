as yet unclassified
systemReordered: aCollapsible newIndex: anInteger

	| system |
	system := (systemsInUI associations detect: [:each | each value = aCollapsible]) key. 
	self universe moveSystem: system to: anInteger