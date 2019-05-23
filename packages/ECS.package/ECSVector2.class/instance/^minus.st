as yet unclassified
- arg 
	
	arg isECSVector2 ifTrue: [^ (x - arg x) , (y - arg y)].
	^ self - arg asECSVector2