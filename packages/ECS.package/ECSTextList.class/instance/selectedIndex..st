as yet unclassified
selectedIndex: aNumber

	selectedIndex := aNumber.
	self triggerEvent: #selected with: aNumber.
	self selectionIndex: aNumber