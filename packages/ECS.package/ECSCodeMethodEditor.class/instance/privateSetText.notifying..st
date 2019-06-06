as yet unclassified
privateSetText: aText notifying: aController

	self method ifNotNil: [ | newSelector oldSelector |
		oldSelector := self method selector.
		newSelector := (self method methodClass compile: aText notifying: aController) ifNil: [^ false].
		newSelector ~= oldSelector ifTrue: [
			self triggerEvent: #changedSelector with: newSelector]].
	
	content := aText.
	^ super privateSetText: aText notifying: aController