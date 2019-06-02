as yet unclassified
privateSetText: aText notifying: aController

	content := aText.
	self editingMethod ifNotNil: [
		self flag: #todo. " handle changing selector? "
		^ (self editingMethod methodClass compile: aText notifying: aController) notNil].
	"Returning true is important, because otherwise the text editor will still be marked as having unaccepted edits otherwise."
	^ true