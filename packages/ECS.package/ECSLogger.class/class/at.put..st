as yet unclassified
at: aSymbol put: anObject

	| buffer |
	buffer := Buffers at: aSymbol ifAbsentPut: [ECSSmoothNumber new].
	buffer report: anObject.
	^ anObject