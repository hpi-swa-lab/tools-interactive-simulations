as yet unclassified
method: aMethod

	| source watcherIntervals offset |
	method := aMethod.
	source := aMethod getSourceFromFile.
	watcherIntervals := aMethod propertyValueAt: #ecsWatcherIntervals ifAbsent: [{}].
	offset := 0.
	watcherIntervals keysAndValuesDo: [:each :id | | interval |
		interval := each + offset.
		
		source addAttribute: (ECSWatchedExpressionAttribute new
				codeEditor: self;
				id: id;
				yourself)
			from: interval start to: interval stop.
		source := source replaceFrom: interval stop + 1
			to: interval stop
			with: (self generateWatchWithId: id).
		offset := offset + 3].
	self content: source