as yet unclassified
setToPointInTime: aNumber

	records keysAndValuesDo: [:prop :records | | value |
		value := records first.
		[value nextLink notNil and: [value nextLink time > aNumber]] whileTrue: [value := value nextLink].
		self instVarNamed: prop put: value data]