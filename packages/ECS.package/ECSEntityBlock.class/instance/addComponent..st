as yet unclassified
addComponent: aComponent

	| componentBlock |

	componentBlock := (ECSComponentBlock newFrom: aComponent inEntity: self id in: self universe).
	componentBlock when: #deleteElement send: #deleteComponent: to: self. 
	self addMorphBack: componentBlock toggleCollapsed