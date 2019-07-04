as yet unclassified
removeBuffersFor: aClass method: aSymbol exceptThese: aCollection

	Buffers keysAndValuesRemove: [:identifier :buffer | | preamble |
		preamble := (aClass name, '>>#', aSymbol, '>>') asSymbol.
		((identifier beginsWith: preamble) and: [aCollection noneSatisfy: [:each | identifier = (preamble, each)]])]