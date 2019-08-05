as yet unclassified
privateSetText: aText notifying: aController

	content := aText.
	
	self triggerEvent: #saved.
	
	"Returning true is important, because otherwise the text editor will still be marked as having unaccepted edits otherwise."
	^ true