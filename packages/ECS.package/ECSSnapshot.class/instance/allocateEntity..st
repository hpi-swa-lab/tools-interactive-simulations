as yet unclassified
allocateEntity: aNumber

	maxEntityIndex := maxEntityIndex max: aNumber.
	self assert: ((components at: #id) atForFetch: aNumber) alive not.
	(components at: #id) atForCreate: aNumber.
	^ aNumber