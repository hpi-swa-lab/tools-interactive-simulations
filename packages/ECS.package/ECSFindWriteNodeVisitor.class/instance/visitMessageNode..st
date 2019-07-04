as yet unclassified
visitMessageNode: aNode

	aNode receiver name = self bindingName ifTrue: [
		aNode selector key isKeyword
			ifTrue: [hasWriteAccess := true]
			ifFalse: [hasReadAccess := true]].
	
	(aNode receiver name = 'self' and: [aNode arguments anySatisfy: [:arg | arg name = self bindingName]]) ifTrue: [
		self doSubMethod: aNode].
	
	super visitMessageNode: aNode