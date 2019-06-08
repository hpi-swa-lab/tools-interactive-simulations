as yet unclassified
removeComponent: aComponentEditor

	self universe remove: aComponentEditor component class from: id.
	aComponentEditor delete