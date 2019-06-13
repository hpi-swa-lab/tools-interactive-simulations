as yet unclassified
displayStatistics: aCollection in: aMorph

	aCollection addFirst: {#GC. Color red. 
		(Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10) - gcTime}.
	aMorph sections: aCollection