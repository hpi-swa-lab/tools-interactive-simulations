as yet unclassified
match: signature to: entity into: components do: aBlock

	signature doWithIndex: [:class :signatureIndex |
		class = Entity
			ifTrue: [components at: signatureIndex put: entity]
			ifFalse: [
				entity components detect: [:c | c class = class] ifFound: [:c | components at: signatureIndex put: c] ifNone: [^ self]]].
	aBlock value: components