as yet unclassified
addComponent: aComponent

	| componentBlock |

	componentBlock := ECSComponentBlock new component: aComponent.
	self addMorphBack: componentBlock toggleCollapsed