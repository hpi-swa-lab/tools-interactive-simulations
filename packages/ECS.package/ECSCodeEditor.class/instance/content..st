as yet unclassified
content: aString

	content = aString ifFalse: [
		content := aString.
		self changed: #privateGetText]