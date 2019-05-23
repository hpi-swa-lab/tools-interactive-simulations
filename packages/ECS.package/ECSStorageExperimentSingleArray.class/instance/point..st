accessing
point: anObject
	
	array at: (Components * offset + 4) put: anObject x.
	array at: (Components * offset + 5) put: anObject y