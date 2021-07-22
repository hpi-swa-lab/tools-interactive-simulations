adding/deleting
deleteComponent: aComponent

	| componentBlock |
	
	componentBlock := self components detect: [:c | c class = aComponent class].
	componentBlock deleteComponentFrom: self id.
	

	