as yet unclassified
method: aMethod

	| source watcherIntervals offset |
	method := aMethod.
	source := aMethod getSourceFromFile.
	watcherIntervals := aMethod propertyValueAt: #ecsWatcherIntervals ifAbsent: [{}].
	offset := 0.
	watcherIntervals withIndexDo: [:each :index | | watchName interval |
		watchName := (self method reference, '>>', index) asSymbol.
		interval := each + offset.
		
		source := source replaceFrom: interval stop + 1
			to: interval stop
			with: (self generateWatchFor: watchName).
		source addAttribute: ECSWatchedExpressionAttribute new
			from: interval start to: interval stop.
		source addAttribute: (TextEmphasis new emphasisCode: 4) "underline"
			from: interval start to: interval stop.
		offset := offset + 3].
	self content: source