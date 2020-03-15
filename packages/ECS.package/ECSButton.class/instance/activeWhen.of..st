as yet unclassified
activeWhen: aSymbol of: anObject

	anObject addDependent: self.
	activeWhen := aSymbol.
	activeOwner := anObject.
	self update: activeWhen.
	self when: #clicked send: #toggleActive to: self