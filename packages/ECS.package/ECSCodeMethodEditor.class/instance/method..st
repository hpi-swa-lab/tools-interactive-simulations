as yet unclassified
method: aMethod

	| source watcherIntervals offset |
	method := aMethod.
	source := aMethod getSourceFromFile.
	watcherIntervals := aMethod
		propertyValueAt: #ecsWatcherIntervals
		ifAbsent: [Dictionary new].
	offset := 0.
	watcherIntervals := watcherIntervals associations sortBy: [:a :b | a key start < b key start].
	watcherIntervals do: [:each | | interval id |
		interval := each key + offset.
		id := each value.
		
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