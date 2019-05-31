as yet unclassified
= aRectangle 
	
	self species = aRectangle species
		ifTrue: [^ origin = aRectangle origin and: [corner = aRectangle corner]]
		ifFalse: [^ false]