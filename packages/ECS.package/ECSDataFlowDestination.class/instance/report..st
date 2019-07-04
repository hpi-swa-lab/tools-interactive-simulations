as yet unclassified
report: aNumber

	self values add: aNumber.
	self triggerEvent: #valuesChanged