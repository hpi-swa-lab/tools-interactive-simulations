entity lifecycle
resetEntityList

	components := IdentityDictionary new.
	maxEntityIndex := 0.
	freeIndexList := OrderedCollection new