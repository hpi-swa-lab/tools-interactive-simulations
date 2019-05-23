as yet unclassified
runAliveBool: array

	1 to: self frameCount do: [:i |
		1 to: self entityCount do: [:index | | s |
			s := array at: index.
			s alive ifTrue: [s x: s x + 0.1]]]