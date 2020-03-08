as yet unclassified
externalValueUpdate: aString

	aString ~= self contents ifTrue: [
		self contents: aString asString]