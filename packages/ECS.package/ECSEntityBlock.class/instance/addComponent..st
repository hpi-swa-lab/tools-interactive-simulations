as yet unclassified
addComponent: aComponent

	| componentBlock |

	componentBlock := (ECSComponentBlock newFrom: aComponent).
	componentBlock when: #deleteElement send: #deleteComponent: to: self. 
	self addMorphBack: componentBlock toggleCollapsed