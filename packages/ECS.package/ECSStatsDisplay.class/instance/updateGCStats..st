as yet unclassified
updateGCStats: aGraph

	| params gcTimeNow |
	params := Smalltalk getVMParameters.
	gcTimeNow := (params at: 8) + (params at: 10).
	gcTime ifNotNil: [aGraph reportValue: gcTimeNow - gcTime].
	gcTime := gcTimeNow