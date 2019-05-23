as yet unclassified
runNilValues: array

	1 to: self frameCount do: [:i |
		1 to: self entityCount do: [:index |
			(array at: index) ifNotNil: [:s | s x: s x + 0.1]]]