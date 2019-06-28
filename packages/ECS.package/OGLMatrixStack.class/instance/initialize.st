as yet unclassified
initialize

	super initialize.
	
	stack := OrderedCollection new.
	stack addLast: Matrix4x4 identity