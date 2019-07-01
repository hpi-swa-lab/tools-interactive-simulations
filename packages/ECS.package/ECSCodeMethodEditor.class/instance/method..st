as yet unclassified
method: aMethod

	| source watcherIntervals offset |
	method := aMethod.
	source := aMethod getSourceFromFile.
	watcherIntervals := aMethod propertyValueAt: #ecsWatcherIntervals ifAbsent: [{}].
	offset := 0.
	watcherIntervals withIndexDo: [:each :index | | watchName interval |
		interval := each + offset.
		watchName := (self method reference, '>>', index) asSymbol.
		
		source addAttribute: ECSWatchedExpressionAttribute new
			from: interval start to: interval stop.
		source addAttribute: (TextEmphasis new emphasisCode: 4) "underline"
			from: interval start to: interval stop.
		source := source replaceFrom: interval stop + 1
			to: interval stop
			with: (self generateWatchFor: watchName).
		offset := offset + 3].
	self content: source