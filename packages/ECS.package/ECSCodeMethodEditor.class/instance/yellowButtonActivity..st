as yet unclassified
yellowButtonActivity: shiftKeyState

	super yellowButtonActivity: shiftKeyState.
	(shiftKeyState not and: [self method notNil] and: [selectionInterval size > 0]) ifTrue: [ | text id |
		id := Time utcMicrosecondClock.
		text := self text copyReplaceFrom: selectionInterval stop + 1
			to: selectionInterval stop
			with: (self generateWatchWithId: id).
		text addAttribute: (ECSWatchedExpressionAttribute new
				codeEditor: self;
				id: id;
				yourself)
			from: selectionInterval start to: selectionInterval stop.
		
		self editString: text.
		self textEdited: text.
		self hasUnacceptedEdits: true]