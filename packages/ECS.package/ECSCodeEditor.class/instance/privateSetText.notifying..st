as yet unclassified
privateSetText: aText notifying: aController

	content := aText.
	self editingMethod ifNotNil: [ | newSelector oldSelector |
		oldSelector := self editingMethod selector.
		newSelector := (self editingMethod methodClass compile: aText notifying: aController) ifNil: [^ false].
		newSelector ~= oldSelector ifTrue: [
			self triggerEvent: #changedSelector with: newSelector]].
	"Returning true is important, because otherwise the text editor will still be marked as having unaccepted edits otherwise."
	^ true