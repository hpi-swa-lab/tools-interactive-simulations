as yet unclassified
runBitArray: array mask: mask

	1 to: self frameCount do: [:i |
		1 to: self entityCount do: [:index |
			(mask at: index) = 1 ifTrue: [ | s | s := array at: index. s x: s x + 0.1]]]