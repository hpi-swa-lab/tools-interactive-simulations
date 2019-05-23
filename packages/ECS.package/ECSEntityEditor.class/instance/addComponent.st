as yet unclassified
addComponent

	| componentClass |
	componentClass := UIManager default chooseClassOrTrait.
	self universe attach: componentClass new to: id