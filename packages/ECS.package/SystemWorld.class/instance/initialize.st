as yet unclassified
initialize

	super initialize.
	
	entities := OrderedCollection new.
	systems := OrderedCollection new.
	resources := OrderedCollection new.
	freeIndexList := OrderedCollection new.
	components := IdentityDictionary new.
	
	running := false