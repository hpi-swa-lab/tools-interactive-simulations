as yet unclassified
resources: aListOfResourceClasses do: aBlock

	| subset |
	subset := aListOfResourceClasses collect: [:class | resources detect: [:r | r class = class] ifNone: [^ self]].
	aListOfResourceClasses size = subset size ifTrue: [aBlock value: subset]