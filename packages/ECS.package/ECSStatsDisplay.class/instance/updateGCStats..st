stats-and-drawing
updateGCStats: aGraph

	| gcTimeNow |
	gcTimeNow := (Smalltalk vmParameterAt: 8) + (Smalltalk vmParameterAt: 10).
	gcTime ifNotNil: [aGraph reportValue: gcTimeNow - gcTime].
	gcTime := gcTimeNow