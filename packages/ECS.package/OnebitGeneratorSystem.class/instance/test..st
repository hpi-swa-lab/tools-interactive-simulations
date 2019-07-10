as yet unclassified
test: aNumber
	
	(SBExample self: [ (OnebitGeneratorSystem new) ] args: [ #( 12 ) ]).
	(Transcript show: 'hi').
	(Color r: 0.663 g: 0.376 b: 0.574).
	
	^(SBWatch report: (aNumber + 123) for: 114927627)