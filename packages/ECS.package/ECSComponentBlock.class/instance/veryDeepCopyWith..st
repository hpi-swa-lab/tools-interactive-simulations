copying
veryDeepCopyWith: deepCopier

	| new oldUniverse |
	" assure that copies of us have a unique id "
	oldUniverse := universe.
	universe := nil.
	
	new := super veryDeepCopyWith: deepCopier.
	universe := oldUniverse.
	
	^ new universe: oldUniverse