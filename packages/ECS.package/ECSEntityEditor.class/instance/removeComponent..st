button-functionality
removeComponent: aComponentEditor

	self universe autoPersistRemove: aComponentEditor component class name asSymbol from: id.
	aComponentEditor delete