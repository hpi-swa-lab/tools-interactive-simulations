as yet unclassified
doSubMethod: aNode

	| previousBindingName subMethod |
	previousBindingName := self bindingName.
	subMethod := (self methodClass >> aNode selector key) methodNode.
	" switch to the binding name the sub method uses "
	self bindingName: (subMethod arguments at: (aNode arguments findFirst: [:arg | arg name = self bindingName])) name.
	subMethod accept: self.
	self bindingName: previousBindingName