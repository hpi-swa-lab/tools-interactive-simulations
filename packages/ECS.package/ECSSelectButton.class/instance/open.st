as yet unclassified
open

	| choice currentChoices |
	currentChoices := choices value.
	choice := UIManager default chooseFrom: currentChoices.
	choice > 0 ifTrue: [
		self value: (currentChoices at: choice).
		self triggerEvent: #selected with: value]