button-functionality
removeComponent: aComponentEditor

	self universe remove: aComponentEditor component class name asSymbol from: id.
	aComponentEditor delete