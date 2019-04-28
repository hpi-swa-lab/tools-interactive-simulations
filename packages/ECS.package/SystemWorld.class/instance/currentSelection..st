as yet unclassified
currentSelection: anObject

	self currentSelection == anObject ifTrue: [
		self changed: #objectChanged with: anObject.
		^ self].
	
	currentSelection := anObject.
	
	self changed: #currentSelection.
	self changed: #style.
	
	(self currentSelection value isKindOf: System) ifTrue: [
		Browser newOnClass: self currentSelection value class selector: #tick:].
	(self currentParent value isKindOf: Resource) ifTrue: [ | value |
		value := Compiler evaluate: (UIManager default request: 'New Value' initialAnswer: self currentSelection value storeString).
		self currentParent value perform: (self currentSelection key, ':') asSymbol with: value
		]