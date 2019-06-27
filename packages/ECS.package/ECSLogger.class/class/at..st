as yet unclassified
at: aSymbol

	self at: aSymbol ifPresent: [:buffer | buffer] ifAbsent: [self error]