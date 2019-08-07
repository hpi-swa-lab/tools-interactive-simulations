accessing
point: anObject
	
	array floatAt: self componentSize * offset + 13 put: anObject x.
	array floatAt: self componentSize * offset + 17 put: anObject y