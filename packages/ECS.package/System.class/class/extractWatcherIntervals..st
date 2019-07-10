as yet unclassified
extractWatcherIntervals: aText

	| watcherIntervals interval id |
	watcherIntervals := Dictionary new.
	aText isText ifFalse: [^ watcherIntervals].
	
	interval := nil.
	id := nil.
	1 to: aText size do: [:index | 
		(aText attributesAt: index)
			detect: [:each | each isKindOf: ECSWatchedExpressionAttribute]
			ifFound: [:attribute | interval 
				ifNil: [interval := index to: index. id := attribute id]
				ifNotNil: [interval := interval start to: index]]
			ifNone: [interval ifNotNil: [watcherIntervals at: interval put: id. interval := nil]]].
	
	^ watcherIntervals