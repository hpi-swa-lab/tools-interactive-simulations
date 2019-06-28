as yet unclassified
generateWatchFor: aSymbol

	^ '"' asText, (Text string: Character startOfHeader asString
		attribute: (TextAnchor new anchoredMorph: (ECSWatch for: aSymbol))), '"'