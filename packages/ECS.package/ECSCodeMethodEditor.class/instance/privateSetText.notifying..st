as yet unclassified
privateSetText: aText notifying: aController

	self method ifNotNil: [ | newSelector oldSelector code |
		oldSelector := self method selector.
		code := aText copyReplaceAll: '"', Character startOfHeader, '"' with: ''.
		newSelector := (self method methodClass compile: code notifying: aController) ifNil: [^ false].
		(newSelector ~= oldSelector and: [self replaceOnSelectorChange]) ifTrue: [
			self method: (self method methodClass lookupSelector: newSelector).
			self method methodClass removeSelector: oldSelector]].
	
	content := aText.
	^ super privateSetText: aText notifying: aController