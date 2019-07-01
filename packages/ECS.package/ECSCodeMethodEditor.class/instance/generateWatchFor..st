as yet unclassified
generateWatchFor: aSymbol

	^ '"' asText, (Text string: (String value: 1)
		attribute: (TextAnchor new anchoredMorph: (ECSWatch for: aSymbol))), '"'