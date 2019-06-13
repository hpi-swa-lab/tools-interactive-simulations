as yet unclassified
displayStatistics: anOrderedDictionary in: aMorph

	aMorph sections: (anOrderedDictionary associations collect: [:each | each key isSymbol 
		ifTrue: [{each key. (each key caseOf: {[#GC] -> [Color red]. [#Logic] -> [Color green]. [#Drawing] -> [Color blue]}). each value value}] 
		ifFalse: [{each key class name. each key class color. each value value}]])