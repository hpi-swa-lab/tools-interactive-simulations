as yet unclassified
initialize

	super initialize.
	
	systems := OrderedCollection new.
	resources := OrderedCollection new.
	freeIndexList := OrderedCollection new.
	components := Dictionary new.
	lastUpdate := 0.
	drawingBlocks := OrderedCollection new.
	
	components at: #id put: IndexStorage new.
	
	maxEntityIndex := 0.
	
	running := false