accessing
point: anObject y: anotherObject
	
	array at: (Components * offset + 4) put: anObject.
	array at: (Components * offset + 5) put: anotherObject