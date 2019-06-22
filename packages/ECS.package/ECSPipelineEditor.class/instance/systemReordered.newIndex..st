orderedUI-functions
systemReordered: aCollapsible newIndex: anInteger

	| system |
	system := (systemsInUI associations detect: [:each | each value = aCollapsible]) key. 
	pipeline moveSystem: system to: anInteger