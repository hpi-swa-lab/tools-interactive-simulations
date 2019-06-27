as yet unclassified
addWatchFor: aSymbol at: aNumber

	| watch |
	watch := '"' asText, (Text string: (String value: 1) attribute: (TextAnchor new anchoredMorph: (ECSWatch for: aSymbol))), '"'.
	self editString: (self text copyReplaceFrom: aNumber to: aNumber - 1 with: watch).
	self hasUnacceptedEdits: true