as yet unclassified
extractWatcherIntervals: aText

	| watcherIntervals interval |
	watcherIntervals := OrderedCollection new.
	interval := nil.
	1 to: aText size do: [:index | 
		(aText attributesAt: index)
			detect: [:each | each class = ECSWatchedExpressionAttribute]
			ifFound: [:attribute | interval 
				ifNil: [interval := index to: index]
				ifNotNil: [interval := interval start to: index]]
			ifNone: [interval ifNotNil: [watcherIntervals add: interval. 
					interval := nil]]].
	
	^ watcherIntervals