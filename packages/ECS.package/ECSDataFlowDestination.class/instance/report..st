as yet unclassified
report: anInteger

	self values add: anInteger.
	self triggerEvent: #valuesChanged