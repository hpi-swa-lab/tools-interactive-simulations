as yet unclassified
promptChangeDisplay

	| choices index |
	choices := self class watchTypes select: [:display | lastValue isNil or: [display matches: lastValue]].
	
	index := UIManager default chooseFrom: choices.
	index < 1 ifTrue: [^ self].
	
	self useDisplay: (choices at: index)