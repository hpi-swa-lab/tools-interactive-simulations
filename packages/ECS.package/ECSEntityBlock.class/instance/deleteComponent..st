adding/deleting
deleteComponent: aComponent

	| componentBlock |
	
	componentBlock := self components detect: [:c | c class = aComponent class].
	self universe removeActionsWithReceiver: componentBlock.
	aComponent class delete: aComponent id from: self id in: self universe.
	

	