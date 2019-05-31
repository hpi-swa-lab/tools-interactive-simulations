as yet unclassified
= aPoint

	self species = aPoint species
		ifTrue: [^ x = aPoint x and: [y = aPoint y]]
		ifFalse: [^ false]