as yet unclassified
watchSelectedExpression

	| id text |
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
	self hasUnacceptedEdits: true