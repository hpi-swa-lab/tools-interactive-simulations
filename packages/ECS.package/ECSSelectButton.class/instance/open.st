as yet unclassified
open

	| choice currentChoices |
	currentChoices := choices value.
	currentChoices ifEmpty: [^ UIManager default inform: 'No options available'].
	choice := UIManager default 
		chooseFrom: (currentChoices collect: [:each | labelBlock value: each]) 
		values: currentChoices.
	choice ifNotNil: [
		self value: choice.
		self triggerEvent: #selected with: value]