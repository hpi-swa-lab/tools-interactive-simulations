as yet unclassified
promptChangeDisplay

	| choices index |
	choices := (ECSWatchView watchTypes copyWithout: ECSDisplayMultiple)" select: [:display |  isNil or: [display matches: lastValue]]".
	
	index := UIManager default chooseFrom: choices.
	index < 1 ifTrue: [^ self].
	
	self submorphs allButFirstDo: [:m| m delete].
	count timesRepeat: [self addMorphBack: ((choices at: index) new dark: dark)]