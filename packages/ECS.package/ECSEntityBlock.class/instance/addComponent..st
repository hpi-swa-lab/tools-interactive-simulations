as yet unclassified
addComponent: aComponent

	| componentBlock |

	componentBlock := (ECSComponentBlock newFrom: aComponent).
	self universe attach: aComponent class name asSymbol to: self id persisted: true.
	componentBlock when: #deleteElement send: #deleteComponent: to: self. 
	self addMorphBack: componentBlock toggleCollapsed