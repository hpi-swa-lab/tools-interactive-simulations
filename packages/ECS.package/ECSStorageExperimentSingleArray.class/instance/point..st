accessing
point: anObject
	
	array at: (self componentSize * offset + 4) put: anObject x.
	array at: (self componentSize * offset + 5) put: anObject y