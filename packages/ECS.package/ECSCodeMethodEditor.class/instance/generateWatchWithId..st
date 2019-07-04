as yet unclassified
generateWatchWithId: aNumber

	| watchName |
	watchName := ECSLogger watchNameForClass: self method methodClass 
		method: self method selector id: aNumber.
	^ '"' asText, (Text string: (String value: 1)
		attribute: (ECSTextAnchor new 
			anchoredMorph: (ECSWatch for: watchName);
			id: aNumber;
			yourself)), '"'