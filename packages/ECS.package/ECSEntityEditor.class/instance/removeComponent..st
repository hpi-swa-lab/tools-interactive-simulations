button-functionality
removeComponent: aComponentEditor

	self universe remove: aComponentEditor component class name from: id.
	aComponentEditor delete