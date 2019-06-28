as yet unclassified
yellowButtonActivity: shiftKeyState

	super yellowButtonActivity: shiftKeyState.
	(shiftKeyState not and: [self method notNil] and: [selectionInterval size > 0]) ifTrue: [ | watchName index watcherIntervals text |
		watcherIntervals := System extractWatcherIntervals: self text.
		index := watcherIntervals findFirst: [:each | each includes: selectionInterval start].
		watchName := (self method reference, '>>', index) asSymbol.
		ECSLogger resetBuffer: watchName.
		
		text := self text copyReplaceFrom: selectionInterval stop + 1
			to: selectionInterval stop
			with: (self generateWatchFor: watchName).
		text addAttribute: ECSWatchedExpressionAttribute new
			from: selectionInterval start to: selectionInterval stop.
		text addAttribute: (TextEmphasis new emphasisCode: 4) "underline"
			from: selectionInterval start to: selectionInterval stop.
		
		self editString: text.
		self textEdited: text.
		self hasUnacceptedEdits: true]