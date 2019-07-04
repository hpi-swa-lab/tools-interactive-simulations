as yet unclassified
visitMethodNode: aNode

	encoder := aNode encoder.
	method  :=  aNode methodClass >> aNode selector.
	super visitMethodNode: aNode